--[[===========================================================
  SOUY MENU UI (10/10 Edition)
  - No external banner / no HttpGet / no image links
  - Custom-drawn banner with animated ring + glow + SOUY name
  - Cleaner structure, less repeated logic, more caching
  - Better performance (no per-pixel background slicing)
  - Keeps: Categories, Tabs, Items, Toggle/Slider/Selector,
           Keybind UI, Keybind list, Editor mode dragging, Input box
=============================================================]]

local Menu = {}

-- =========================
-- Core State
-- =========================
Menu.Visible = false
Menu.IsLoading = true
Menu.LoadingComplete = false
Menu.LoadingStartTime = nil
Menu.LoadingDuration = 3000
Menu.LoadingProgress = 0.0

Menu.CurrentTopTab = 1
Menu.CurrentCategory = 2
Menu.OpenedCategory = nil
Menu.CurrentTab = 1
Menu.CurrentItem = 1
Menu.ItemsPerPage = 9
Menu.ItemScrollOffset = 0
Menu.CategoryScrollOffset = 0

Menu.SelectorY = 0
Menu.CategorySelectorY = 0
Menu.TabSelectorX = 0
Menu.TabSelectorWidth = 0
Menu.TopTabSelectorX = nil
Menu.TopTabSelectorWidth = nil

Menu.scrollbarY = nil
Menu.scrollbarHeight = nil

Menu.Scale = 1.0
Menu.SmoothFactor = 0.2
Menu.GradientType = 1
Menu.ScrollbarPosition = 1

-- Editor mode
Menu.EditorMode = false
Menu.EditorDragging = false
Menu.EditorDragOffsetX = 0
Menu.EditorDragOffsetY = 0

-- Snow / particles
Menu.ShowSnowflakes = false
Menu.Particles = {}

-- Key selection / binds
Menu.KeyStates = {}
Menu.SelectingKey = false
Menu.SelectedKey = nil
Menu.SelectedKeyName = nil

Menu.SelectingBind = false
Menu.BindingItem = nil
Menu.BindingKey = nil
Menu.BindingKeyName = nil

Menu.ShowKeybinds = false
Menu.LoadingBarAlpha = 0.0
Menu.KeySelectorAlpha = 0.0
Menu.KeybindsInterfaceAlpha = 0.0

-- Input window
Menu.InputOpen = false
Menu.InputTitle = nil
Menu.InputSubtitle = nil
Menu.InputText = ""
Menu.InputCallback = nil

-- Performance cache
Menu._cache = {
  blackBackgroundItem = nil, -- pointer cached once
  blackBackgroundValue = true,
  lastCacheTick = 0,
}

-- =========================
-- Position / Layout
-- =========================
Menu.Position = {
  x = 50,
  y = 100,
  width = 420,

  headerHeight = 120,
  mainMenuHeight = 30,
  mainMenuSpacing = 5,

  itemHeight = 38,

  footerSpacing = 5,
  footerHeight = 28,

  headerRadius = 8,
  itemRadius = 6,
  footerRadius = 6,

  scrollbarWidth = 10,
  scrollbarPadding = 3,

  borderWidth = 1
}

function Menu.GetScaledPosition()
  local s = Menu.Scale or 1.0
  local p = Menu.Position
  return {
    x = p.x,
    y = p.y,
    width = p.width * s,

    headerHeight = p.headerHeight * s,
    mainMenuHeight = p.mainMenuHeight * s,
    mainMenuSpacing = p.mainMenuSpacing * s,

    itemHeight = p.itemHeight * s,

    footerSpacing = p.footerSpacing * s,
    footerHeight = p.footerHeight * s,

    headerRadius = p.headerRadius * s,
    itemRadius = p.itemRadius * s,
    footerRadius = p.footerRadius * s,

    scrollbarWidth = p.scrollbarWidth * s,
    scrollbarPadding = p.scrollbarPadding * s,

    borderWidth = p.borderWidth * s
  }
end

-- =========================
-- Theme
-- =========================
Menu.Colors = {
  Primary = { r = 255, g = 140, b = 0 },
  Secondary = { r = 40, g = 40, b = 40 },
  Background = { r = 10, g = 10, b = 10 },
  Panel = { r = 16, g = 16, b = 16 },
  Text = { r = 255, g = 255, b = 255 },
  TextMuted = { r = 180, g = 180, b = 180 },
  Border = { r = 60, g = 60, b = 60 }
}

Menu.CurrentTheme = "BlackOrange"

function Menu.ApplyTheme(themeName)
  themeName = (type(themeName) == "string" and themeName) or "BlackOrange"
  local t = string.lower(themeName)

  if t == "purple" then
    Menu.Colors.Primary = { r = 148, g = 0, b = 211 }
    Menu.CurrentTheme = "Purple"
  elseif t == "red" then
    Menu.Colors.Primary = { r = 255, g = 60, b = 60 }
    Menu.CurrentTheme = "Red"
  else
    Menu.Colors.Primary = { r = 255, g = 140, b = 0 }
    Menu.CurrentTheme = "BlackOrange"
  end
end

-- =========================
-- Helpers (Color / Drawing)
-- =========================
local function clamp(x, a, b) return (x < a and a) or (x > b and b) or x end
local function lerp(a, b, t) return a + (b - a) * t end

local function to01(v) return (v > 1.0) and (v / 255.0) or v end
local function rgba01(r, g, b, a)
  return to01(r), to01(g), to01(b), to01(a or 1.0)
end

function Menu.DrawRect(x, y, w, h, r, g, b, a)
  if not Susano then return end
  local R, G, B, A = rgba01(r, g, b, a or 1.0)
  if Susano.DrawRectFilled then
    Susano.DrawRectFilled(x, y, w, h, R, G, B, A, 0)
  elseif Susano.DrawFilledRect then
    Susano.DrawFilledRect(x, y, w, h, R, G, B, A)
  elseif Susano.FillRect then
    Susano.FillRect(x, y, w, h, R, G, B, A)
  end
end

function Menu.DrawRoundedRect(x, y, w, h, r, g, b, a, radius)
  if not Susano then return end
  local R, G, B, A = rgba01(r, g, b, a or 1.0)
  radius = radius or 0
  if Susano.DrawRectFilled then
    Susano.DrawRectFilled(x, y, w, h, R, G, B, A, radius)
  else
    -- fallback: no real rounding; still looks fine
    Menu.DrawRect(x, y, w, h, r, g, b, a)
  end
end

function Menu.DrawText(x, y, text, size_px, r, g, b, a)
  if not (Susano and Susano.DrawText) then return end
  local s = (Menu.Scale or 1.0)
  size_px = (size_px or 16) * s
  local R, G, B, A = rgba01(r or 1.0, g or 1.0, b or 1.0, a or 1.0)
  Susano.DrawText(x, y, tostring(text or ""), size_px, R, G, B, A)
end

local function textWidth(text, size_px)
  if Susano and Susano.GetTextWidth then
    return Susano.GetTextWidth(text, (size_px or 16) * (Menu.Scale or 1.0))
  end
  return (#tostring(text)) * 9 * (Menu.Scale or 1.0)
end

-- Quick glow: layered rectangles (cheap + looks good)
local function glowRect(x, y, w, h, r, g, b, baseA, steps, spread)
  steps = steps or 5
  spread = spread or 8
  for i = steps, 1, -1 do
    local t = i / steps
    local pad = spread * t
    local a = baseA * (t * 0.20)
    Menu.DrawRoundedRect(x - pad, y - pad, w + pad * 2, h + pad * 2, r, g, b, a, 10)
  end
end

-- =========================
-- SOUY Custom Banner (No links)
-- =========================
function Menu.DrawHeader()
  local sp = Menu.GetScaledPosition()
  local x, y, w, h = sp.x, sp.y, sp.width - 1, sp.headerHeight
  local rad = sp.headerRadius

  -- Base header panel
  Menu.DrawRoundedRect(x, y, w, h, Menu.Colors.Panel.r, Menu.Colors.Panel.g, Menu.Colors.Panel.b, 1.0, rad)

  -- Accent strip + glow
  local pr = Menu.Colors.Primary
  glowRect(x, y, w, 3 * (Menu.Scale or 1.0), pr.r, pr.g, pr.b, 1.0, 6, 10)
  Menu.DrawRect(x, y, w, 3 * (Menu.Scale or 1.0), pr.r, pr.g, pr.b, 1.0)

  -- Animated ring (center-left)
  local t = (GetGameTimer and GetGameTimer() or 0) / 1000.0
  local cx = x + (w * 0.18)
  local cy = y + (h * 0.55)

  local ringR = 30 * (Menu.Scale or 1.0)
  local ringThick = 5 * (Menu.Scale or 1.0)

  -- Draw ring by small segments (still light)
  local seg = 60
  local a1 = (t * 120) % 360
  local a2 = a1 + 220

  -- ring background
  for i = 1, seg do
    local ang = (i / seg) * (math.pi * 2)
    local px = cx + math.cos(ang) * ringR
    local py = cy + math.sin(ang) * ringR
    Menu.DrawRoundedRect(px - ringThick/2, py - ringThick/2, ringThick, ringThick,
      40, 40, 40, 0.6, ringThick/2)
  end

  -- ring highlight arc (glowing)
  local function isInArc(deg)
    deg = (deg % 360 + 360) % 360
    local s = a1 % 360
    local e = a2 % 360
    if s < e then return deg >= s and deg <= e end
    return (deg >= s) or (deg <= e)
  end

  glowRect(cx - ringR - 6, cy - ringR - 6, (ringR*2)+12, (ringR*2)+12, pr.r, pr.g, pr.b, 0.9, 6, 10)

  for i = 1, seg do
    local deg = (i / seg) * 360
    if isInArc(deg) then
      local ang = (i / seg) * (math.pi * 2)
      local px = cx + math.cos(ang) * ringR
      local py = cy + math.sin(ang) * ringR
      Menu.DrawRoundedRect(px - ringThick/2, py - ringThick/2, ringThick+1, ringThick+1,
        pr.r, pr.g, pr.b, 1.0, (ringThick+1)/2)
    end
  end

  -- Big "SOUY" with shadow + small tagline
  local title = "SOUY"
  local titleSize = 34
  local tx = x + (w * 0.33)
  local ty = y + (h * 0.38) - (titleSize * (Menu.Scale or 1.0) / 2)

  -- shadow
  Menu.DrawText(tx + 2, ty + 2, title, titleSize, 0, 0, 0, 0.8)
  Menu.DrawText(tx, ty, title, titleSize, 1, 1, 1, 1)

  local tag = "premium overlay"
  local tagSize = 14
  Menu.DrawText(tx, ty + (38 * (Menu.Scale or 1.0)), tag, tagSize,
    Menu.Colors.TextMuted.r/255, Menu.Colors.TextMuted.g/255, Menu.Colors.TextMuted.b/255, 1.0)

  -- Right side accent badge
  local badgeW = 90 * (Menu.Scale or 1.0)
  local badgeH = 26 * (Menu.Scale or 1.0)
  local bx = x + w - badgeW - (14 * (Menu.Scale or 1.0))
  local by = y + (14 * (Menu.Scale or 1.0))

  Menu.DrawRoundedRect(bx, by, badgeW, badgeH, pr.r, pr.g, pr.b, 0.9, 8)
  local ver = "v10"
  local vw = textWidth(ver, 14)
  Menu.DrawText(bx + badgeW/2 - vw/2, by + badgeH/2 - (7*(Menu.Scale or 1.0)), ver, 14, 1,1,1,1)

  -- Border
  local bw = sp.borderWidth
  if bw > 0 then
    Menu.DrawRect(x, y, w, bw, pr.r, pr.g, pr.b, 0.6)
    Menu.DrawRect(x, y + h - bw, w, bw, pr.r, pr.g, pr.b, 0.6)
    Menu.DrawRect(x, y, bw, h, pr.r, pr.g, pr.b, 0.6)
    Menu.DrawRect(x + w - bw, y, bw, h, pr.r, pr.g, pr.b, 0.6)
  end
end

-- =========================
-- Tabs / Items Helpers
-- =========================
local function findNextNonSeparator(items, startIndex, direction)
  if not items or #items == 0 then return 1 end
  local idx = startIndex
  local tries = 0
  while tries < #items do
    idx = idx + direction
    if idx < 1 then idx = #items end
    if idx > #items then idx = 1 end
    if items[idx] and not items[idx].isSeparator then return idx end
    tries = tries + 1
  end
  return clamp(startIndex, 1, #items)
end

-- =========================
-- Scrollbar (smoothed)
-- =========================
function Menu.DrawScrollbar(x, startY, visibleHeight, selectedIndex, totalItems, isMainMenu, menuWidth)
  if totalItems <= 0 then return end
  local sp = Menu.GetScaledPosition()
  local sw = sp.scrollbarWidth
  local pad = sp.scrollbarPadding
  local w = menuWidth or sp.width

  local sx = (Menu.ScrollbarPosition == 2) and (x + w + pad) or (x - sw - pad)
  local sy = startY
  local sh = visibleHeight

  -- thumb
  local thumbH
  if totalItems <= Menu.ItemsPerPage then
    thumbH = sh
  else
    thumbH = clamp(sh * (Menu.ItemsPerPage / totalItems), 18 * (Menu.Scale or 1.0), sh)
  end

  local scrollOffset = 0
  if isMainMenu then scrollOffset = Menu.CategoryScrollOffset or 0 else scrollOffset = Menu.ItemScrollOffset or 0 end

  local maxOffset = math.max(0, totalItems - Menu.ItemsPerPage)
  local prog = (maxOffset > 0) and (scrollOffset / maxOffset) or 0
  prog = clamp(prog, 0, 1)

  local thumbY = sy + (sh - thumbH) * prog

  if not Menu.scrollbarY then Menu.scrollbarY = thumbY end
  if not Menu.scrollbarHeight then Menu.scrollbarHeight = thumbH end

  local ss = 0.18
  Menu.scrollbarY = lerp(Menu.scrollbarY, thumbY, ss)
  Menu.scrollbarHeight = lerp(Menu.scrollbarHeight, thumbH, ss)

  local pr = Menu.Colors.Primary
  Menu.DrawRoundedRect(sx, sy, sw, sh, 0, 0, 0, 0.35, sw/2)
  Menu.DrawRoundedRect(sx + 2, Menu.scrollbarY + 2, sw - 4, Menu.scrollbarHeight - 4, pr.r, pr.g, pr.b, 1.0, (sw-4)/2)
end

-- =========================
-- Tabs
-- =========================
function Menu.DrawTabs(category, x, startY, width, tabHeight)
  if not (category and category.hasTabs and category.tabs and #category.tabs > 0) then return end
  local s = Menu.Scale or 1.0
  local n = #category.tabs
  local tw = width / n
  local pr = Menu.Colors.Primary

  for i, tab in ipairs(category.tabs) do
    local tx = x + (i - 1) * tw
    local isSel = (i == Menu.CurrentTab)

    if isSel then
      local targetW = tw
      if Menu.TabSelectorWidth == 0 then
        Menu.TabSelectorX = tx
        Menu.TabSelectorWidth = targetW
      end
      Menu.TabSelectorX = lerp(Menu.TabSelectorX, tx, Menu.SmoothFactor)
      Menu.TabSelectorWidth = lerp(Menu.TabSelectorWidth, targetW, Menu.SmoothFactor)

      glowRect(Menu.TabSelectorX, startY, Menu.TabSelectorWidth, tabHeight, pr.r, pr.g, pr.b, 0.7, 5, 10)
      Menu.DrawRect(Menu.TabSelectorX, startY, Menu.TabSelectorWidth, tabHeight, pr.r, pr.g, pr.b, 0.9)
    else
      Menu.DrawRect(tx, startY, tw, tabHeight, Menu.Colors.Background.r, Menu.Colors.Background.g, Menu.Colors.Background.b, 0.75)
    end

    local label = tab.name or ("Tab " .. i)
    local size = 16
    local lw = textWidth(label, size)
    local ly = startY + tabHeight/2 - (7 * s)
    Menu.DrawText(tx + tw/2 - lw/2, ly, label, size,
      isSel and 1 or (Menu.Colors.TextMuted.r/255),
      isSel and 1 or (Menu.Colors.TextMuted.g/255),
      isSel and 1 or (Menu.Colors.TextMuted.b/255),
      1.0)
  end
end

-- =========================
-- Items (Toggle / Slider / Selector / Separator)
-- =========================
local function drawSeparator(x, y, w, h, text)
  Menu.DrawRect(x, y, w, h, Menu.Colors.Background.r, Menu.Colors.Background.g, Menu.Colors.Background.b, 0.9)
  if text and text ~= "" then
    local size = 13
    local tw = textWidth(text, size)
    local ty = y + h/2 - (6 * (Menu.Scale or 1.0))
    Menu.DrawText(x + w/2 - tw/2, ty, text, size,
      Menu.Colors.Primary.r/255, Menu.Colors.Primary.g/255, Menu.Colors.Primary.b/255, 1.0)
  end
end

local function drawSelectorBar(x, y, w, h, alpha)
  local pr = Menu.Colors.Primary
  if Menu.GradientType == 2 then
    -- fast gradient: 12 slices (not 100)
    local slices = 12
    local sw = w / slices
    for i = 0, slices - 1 do
      local t = i / (slices - 1)
      local a = alpha * (0.95 - (t * 0.25))
      Menu.DrawRect(x + i*sw, y, sw + 1, h, pr.r, pr.g, pr.b, a)
    end
  else
    Menu.DrawRect(x, y, w, h, pr.r, pr.g, pr.b, alpha)
  end
  -- left accent line
  Menu.DrawRect(x, y, 3, h, math.min(255, pr.r*1.1), math.min(255, pr.g*1.1), math.min(255, pr.b*1.1), 1.0)
end

local function drawToggle(x, y, on)
  local s = Menu.Scale or 1.0
  local w, h = 36*s, 18*s
  local r = h/2
  local pr = Menu.Colors.Primary

  if on then
    Menu.DrawRoundedRect(x, y, w, h, pr.r, pr.g, pr.b, 1.0, r)
  else
    Menu.DrawRoundedRect(x, y, w, h, 55, 55, 55, 1.0, r)
  end

  local cs = h - 4
  local cx = on and (x + w - cs - 2) or (x + 2)
  Menu.DrawRoundedRect(cx, y + 2, cs, cs, 255, 255, 255, 1.0, cs/2)
end

local function drawSlider(x, y, w, value, minv, maxv)
  local s = Menu.Scale or 1.0
  local h = 7*s
  local pr = Menu.Colors.Primary

  local pct = 0
  if maxv ~= minv then pct = (value - minv) / (maxv - minv) end
  pct = clamp(pct, 0, 1)

  Menu.DrawRoundedRect(x, y, w, h, 38, 38, 38, 1.0, 3*s)
  if pct > 0 then
    Menu.DrawRoundedRect(x, y, w*pct, h, pr.r, pr.g, pr.b, 1.0, 3*s)
  end

  local ts = 11*s
  local tx = x + w*pct - ts/2
  Menu.DrawRoundedRect(tx, y - (ts/2) + (h/2), ts, ts, 255,255,255,1.0, 5*s)
  return pct
end

function Menu.DrawItem(x, y, w, h, item, isSelected)
  local s = Menu.Scale or 1.0

  if item.isSeparator then
    return drawSeparator(x, y, w, h, item.separatorText)
  end

  Menu.DrawRect(x, y, w, h, Menu.Colors.Background.r, Menu.Colors.Background.g, Menu.Colors.Background.b, 0.85)

  if isSelected then
    if Menu.SelectorY == 0 then Menu.SelectorY = y end
    Menu.SelectorY = lerp(Menu.SelectorY, y, Menu.SmoothFactor)
    drawSelectorBar(x, Menu.SelectorY, w - 1, h, 0.9)
  end

  -- Left label
  local labelX = x + (16*s)
  local labelY = y + h/2 - (8*s)
  local lr, lg, lb = 1,1,1
  if not isSelected then
    lr = Menu.Colors.Text.r/255
    lg = Menu.Colors.Text.g/255
    lb = Menu.Colors.Text.b/255
  end
  Menu.DrawText(labelX, labelY, item.name or "Item", 17, lr, lg, lb, 1.0)

  -- Right widgets
  if item.type == "toggle" then
    local tx = x + w - (16*s) - (36*s)
    local ty = y + h/2 - (9*s)
    drawToggle(tx, ty, item.value == true)

    if item.hasSlider then
      local sw = 85*s
      local sx = x + w - (16*s) - (36*s) - (12*s) - sw - (42*s)
      local sy = y + h/2 - (4*s)
      local v = item.sliderValue or item.sliderMin or 0.0
      local mn = item.sliderMin or 0.0
      local mx = item.sliderMax or 100.0
      drawSlider(sx, sy, sw, v, mn, mx)
      local txt = string.format("%.1f", v)
      Menu.DrawText(sx + sw + (10*s), sy - (6*s), txt, 10, Menu.Colors.TextMuted.r/255, Menu.Colors.TextMuted.g/255, Menu.Colors.TextMuted.b/255, 1.0)
    end

  elseif item.type == "slider" then
    local sw = 110*s
    local sx = x + w - sw - (60*s)
    local sy = y + h/2 - (4*s)
    local v = item.value or item.min or 0.0
    local mn = item.min or 0.0
    local mx = item.max or 100.0
    drawSlider(sx, sy, sw, v, mn, mx)
    Menu.DrawText(sx + sw + (10*s), sy - (6*s), string.format("%.0f", v), 11,
      Menu.Colors.TextMuted.r/255, Menu.Colors.TextMuted.g/255, Menu.Colors.TextMuted.b/255, 1.0)

  elseif (item.type == "selector" or item.type == "toggle_selector") and item.options then
    local idx = item.selected or 1
    idx = clamp(idx, 1, #item.options)
    local opt = tostring(item.options[idx] or "")

    local txt = "< " .. opt .. " >"
    local size = 17
    local tw = textWidth(txt, size)
    local sx = x + w - tw - (16*s)
    Menu.DrawText(sx, labelY, txt, size, Menu.Colors.Primary.r/255, Menu.Colors.Primary.g/255, Menu.Colors.Primary.b/255, 1.0)

    if item.type == "toggle_selector" then
      local tx = x + w - (16*s) - (32*s)
      local ty = y + h/2 - (8*s)
      drawToggle(tx, ty, item.value == true)
    end

  elseif item.type == "action" then
    local chevronX = x + w - (22*s)
    Menu.DrawText(chevronX, labelY, ">", 17, Menu.Colors.Primary.r/255, Menu.Colors.Primary.g/255, Menu.Colors.Primary.b/255, 1.0)
  end
end

-- =========================
-- Categories / Pages
-- =========================
function Menu.UpdateCategoriesFromTopTab()
  if not Menu.TopLevelTabs then return end
  local currentTop = Menu.TopLevelTabs[Menu.CurrentTopTab]
  if not currentTop then return end

  Menu.Categories = {}
  table.insert(Menu.Categories, { name = currentTop.name })
  for _, cat in ipairs(currentTop.categories or {}) do
    table.insert(Menu.Categories, cat)
  end

  Menu.CurrentCategory = 2
  Menu.CategoryScrollOffset = 0
  Menu.OpenedCategory = nil
  Menu.CurrentTab = 1
  Menu.ItemScrollOffset = 0
  Menu.CurrentItem = 1

  if currentTop.autoOpen then
    Menu.OpenedCategory = 2
  end
end

function Menu.DrawCategories()
  local sp = Menu.GetScaledPosition()
  local x = sp.x
  local y = sp.y + sp.headerHeight
  local w = sp.width
  local itemH = sp.itemHeight
  local barH = sp.mainMenuHeight
  local gap = sp.mainMenuSpacing

  -- Top bar (TopLevel tabs OR title)
  local pr = Menu.Colors.Primary
  Menu.DrawRect(x, y, w, barH, pr.r, pr.g, pr.b, 0.9)

  if Menu.TopLevelTabs and #Menu.TopLevelTabs > 0 then
    local n = #Menu.TopLevelTabs
    local tw = w / n
    for i, tab in ipairs(Menu.TopLevelTabs) do
      local tx = x + (i-1)*tw
      local sel = (i == Menu.CurrentTopTab)
      if sel then
        if not Menu.TopTabSelectorX then
          Menu.TopTabSelectorX = tx
          Menu.TopTabSelectorWidth = tw
        end
        Menu.TopTabSelectorX = lerp(Menu.TopTabSelectorX, tx, Menu.SmoothFactor)
        Menu.TopTabSelectorWidth = lerp(Menu.TopTabSelectorWidth, tw, Menu.SmoothFactor)
        Menu.DrawRect(Menu.TopTabSelectorX, y, Menu.TopTabSelectorWidth, barH, pr.r, pr.g, pr.b, 1.0)
        Menu.DrawRect(Menu.TopTabSelectorX, y + barH - 2, Menu.TopTabSelectorWidth, 2, 255,255,255,0.5)
      end

      local label = tab.name or ("TAB "..i)
      local size = 16
      local lw = textWidth(label, size)
      Menu.DrawText(tx + tw/2 - lw/2, y + barH/2 - (7*(Menu.Scale or 1.0)), label, size,
        sel and 1 or (Menu.Colors.TextMuted.r/255),
        sel and 1 or (Menu.Colors.TextMuted.g/255),
        sel and 1 or (Menu.Colors.TextMuted.b/255),
        1.0)
    end
  else
    local title = (Menu.Categories and Menu.Categories[1] and Menu.Categories[1].name) or "MENU"
    local size = 16
    local lw = textWidth(title, size)
    Menu.DrawText(x + w/2 - lw/2, y + barH/2 - (7*(Menu.Scale or 1.0)), title, size, 1,1,1,1)
  end

  -- If inside a category: draw tabs + items
  if Menu.OpenedCategory then
    local cat = Menu.Categories and Menu.Categories[Menu.OpenedCategory]
    if not (cat and cat.hasTabs and cat.tabs) then
      Menu.OpenedCategory = nil
      return
    end

    Menu.DrawTabs(cat, x, y + barH, w, barH)

    local tab = cat.tabs[Menu.CurrentTab]
    if not (tab and tab.items) then return end

    local itemsY = y + barH + barH + gap
    local total = #tab.items
    local maxVis = Menu.ItemsPerPage

    if Menu.CurrentItem > Menu.ItemScrollOffset + maxVis then
      Menu.ItemScrollOffset = Menu.CurrentItem - maxVis
    elseif Menu.CurrentItem <= Menu.ItemScrollOffset then
      Menu.ItemScrollOffset = math.max(0, Menu.CurrentItem - 1)
    end

    local drawn = 0
    for i = 1, math.min(maxVis, total) do
      local idx = i + Menu.ItemScrollOffset
      if idx <= total then
        drawn = drawn + 1
        local it = tab.items[idx]
        local iy = itemsY + (i-1)*itemH
        Menu.DrawItem(x, iy, w, itemH, it, idx == Menu.CurrentItem)
      end
    end

    Menu.DrawScrollbar(x, itemsY, drawn*itemH, Menu.CurrentItem, math.max(1,total), false, w)
    return
  end

  -- Root category list
  local categories = Menu.Categories or {}
  local totalCats = math.max(0, #categories - 1)
  local maxVis = Menu.ItemsPerPage

  if Menu.CurrentCategory > Menu.CategoryScrollOffset + maxVis + 1 then
    Menu.CategoryScrollOffset = Menu.CurrentCategory - maxVis - 1
  elseif Menu.CurrentCategory <= Menu.CategoryScrollOffset + 1 then
    Menu.CategoryScrollOffset = math.max(0, Menu.CurrentCategory - 2)
  end

  local listY = y + barH + gap
  local drawn = 0
  for i = 1, math.min(maxVis, totalCats) do
    local idx = i + Menu.CategoryScrollOffset + 1
    if idx <= #categories then
      drawn = drawn + 1
      local cat = categories[idx]
      local iy = listY + (i-1)*itemH

      Menu.DrawRect(x, iy, w, itemH, Menu.Colors.Background.r, Menu.Colors.Background.g, Menu.Colors.Background.b, 0.85)

      if idx == Menu.CurrentCategory then
        if Menu.CategorySelectorY == 0 then Menu.CategorySelectorY = iy end
        Menu.CategorySelectorY = lerp(Menu.CategorySelectorY, iy, Menu.SmoothFactor)
        drawSelectorBar(x, Menu.CategorySelectorY, w-1, itemH, 0.9)
      end

      Menu.DrawText(x + 16*(Menu.Scale or 1.0), iy + itemH/2 - (8*(Menu.Scale or 1.0)), cat.name or "Category", 17, 1,1,1,1)
      Menu.DrawText(x + w - 22*(Menu.Scale or 1.0), iy + itemH/2 - (8*(Menu.Scale or 1.0)), ">", 17, Menu.Colors.Primary.r/255, Menu.Colors.Primary.g/255, Menu.Colors.Primary.b/255, 1.0)
    end
  end

  if totalCats > 0 then
    Menu.DrawScrollbar(x, listY, drawn*itemH, Menu.CurrentCategory, totalCats, true, w)
  end
end

-- =========================
-- Background (fast & clean)
-- =========================
function Menu._refreshCache()
  local now = GetGameTimer and GetGameTimer() or 0
  if (now - (Menu._cache.lastCacheTick or 0)) < 700 then return end
  Menu._cache.lastCacheTick = now

  if Menu._cache.blackBackgroundItem and Menu._cache.blackBackgroundItem.name then
    Menu._cache.blackBackgroundValue = (Menu._cache.blackBackgroundItem.value ~= false)
    return
  end

  -- find once
  if Menu.Categories then
    for _, cat in ipairs(Menu.Categories) do
      if cat and cat.name == "Settings" and cat.tabs then
        for _, tab in ipairs(cat.tabs) do
          if tab and tab.name == "General" and tab.items then
            for _, item in ipairs(tab.items) do
              if item and item.name == "Black Background" then
                Menu._cache.blackBackgroundItem = item
                Menu._cache.blackBackgroundValue = (item.value ~= false)
                return
              end
            end
          end
        end
      end
    end
  end
end

function Menu.DrawBackground()
  local sp = Menu.GetScaledPosition()
  local x, y, w = sp.x, sp.y, sp.width - 1
  local s = Menu.Scale or 1.0

  Menu._refreshCache()
  local dark = Menu._cache.blackBackgroundValue ~= false
  local alpha = dark and 0.92 or 0.35

  -- Compute full height based on current view
  local totalH = sp.headerHeight + sp.mainMenuHeight + sp.mainMenuSpacing + sp.footerSpacing + sp.footerHeight
  local itemH = sp.itemHeight

  if Menu.OpenedCategory and Menu.Categories and Menu.Categories[Menu.OpenedCategory] then
    local cat = Menu.Categories[Menu.OpenedCategory]
    if cat.hasTabs and cat.tabs and cat.tabs[Menu.CurrentTab] and cat.tabs[Menu.CurrentTab].items then
      local visible = math.min(Menu.ItemsPerPage, #cat.tabs[Menu.CurrentTab].items)
      totalH = totalH + sp.mainMenuHeight + (visible * itemH)
    else
      totalH = totalH + sp.mainMenuHeight
    end
  else
    local totalCats = math.max(0, (Menu.Categories and #Menu.Categories or 1) - 1)
    local visible = math.min(Menu.ItemsPerPage, totalCats)
    totalH = totalH + (visible * itemH)
  end

  -- Outer glow + panel
  local pr = Menu.Colors.Primary
  glowRect(x, y, w, totalH, pr.r, pr.g, pr.b, 0.7, 6, 12)
  Menu.DrawRoundedRect(x, y, w, totalH, 0, 0, 0, alpha, 10*s)
end

-- =========================
-- Footer
-- =========================
function Menu.DrawFooter()
  local sp = Menu.GetScaledPosition()
  local s = Menu.Scale or 1.0
  local x = sp.x
  local w = sp.width - 1

  -- calculate footer Y
  local y0 = sp.y + sp.headerHeight + sp.mainMenuHeight + sp.mainMenuSpacing
  local bodyH = 0
  local itemH = sp.itemHeight

  if Menu.OpenedCategory and Menu.Categories and Menu.Categories[Menu.OpenedCategory] then
    local cat = Menu.Categories[Menu.OpenedCategory]
    local tab = cat.tabs and cat.tabs[Menu.CurrentTab]
    local total = (tab and tab.items and #tab.items) or 0
    bodyH = math.min(Menu.ItemsPerPage, total) * itemH + sp.mainMenuHeight
  else
    local totalCats = math.max(0, (Menu.Categories and #Menu.Categories or 1) - 1)
    bodyH = math.min(Menu.ItemsPerPage, totalCats) * itemH
  end

  local fy = y0 + bodyH + sp.footerSpacing
  local fh = sp.footerHeight
  local pr = Menu.Colors.Primary

  Menu.DrawRoundedRect(x, fy, w, fh, Menu.Colors.Background.r, Menu.Colors.Background.g, Menu.Colors.Background.b, 1.0, sp.footerRadius)
  Menu.DrawRect(x, fy, w, 1, pr.r, pr.g, pr.b, 0.45)

  local left = ".gg/SOUY"
  Menu.DrawText(x + 15*s, fy + fh/2 - (6*s), left, 13, pr.r/255, pr.g/255, pr.b/255, 1.0)

  local idx, total
  if Menu.OpenedCategory then
    local cat = Menu.Categories[Menu.OpenedCategory]
    local tab = cat.tabs and cat.tabs[Menu.CurrentTab]
    total = (tab and tab.items and #tab.items) or 1
    idx = Menu.CurrentItem
  else
    total = math.max(1, (Menu.Categories and #Menu.Categories or 2) - 1)
    idx = math.max(1, Menu.CurrentCategory - 1)
  end

  local right = string.format("%d/%d", idx, total)
  local rw = textWidth(right, 13)
  Menu.DrawText(x + w - rw - 15*s, fy + fh/2 - (6*s), right, 13,
    Menu.Colors.TextMuted.r/255, Menu.Colors.TextMuted.g/255, Menu.Colors.TextMuted.b/255, 1.0)
end

-- =========================
-- Loading (clean)
-- =========================
function Menu.DrawLoadingBar(alpha)
  if alpha <= 0 then return end
  local sw, sh = 1920, 1080
  if Susano and Susano.GetScreenWidth and Susano.GetScreenHeight then
    sw, sh = Susano.GetScreenWidth(), Susano.GetScreenHeight()
  end

  local cx, cy = sw/2, sh - 150
  local r = 40
  local thick = 8
  local pr = Menu.Colors.Primary

  local txt = (Menu.LoadingProgress < 35 and "Injecting") or "Have Fun !"
  local tw = textWidth(txt, 18)
  Menu.DrawText(cx - tw/2, cy - r - 42, txt, 18, 1,1,1, alpha)

  -- ring
  local seg = 70
  local step = (math.pi*2) / seg

  for i = 1, seg do
    local ang = i * step
    local px = cx + math.cos(ang) * r
    local py = cy + math.sin(ang) * r
    Menu.DrawRoundedRect(px - thick/2, py - thick/2, thick, thick, 38,38,38, alpha, thick/2)
  end

  local filled = math.floor(seg * (Menu.LoadingProgress / 100.0))
  glowRect(cx - r - 10, cy - r - 10, (r*2)+20, (r*2)+20, pr.r, pr.g, pr.b, alpha, 6, 12)
  for i = 1, filled do
    local ang = i * step
    local px = cx + math.cos(ang) * r
    local py = cy + math.sin(ang) * r
    Menu.DrawRoundedRect(px - thick/2, py - thick/2, thick+1, thick+1, pr.r, pr.g, pr.b, alpha, (thick+1)/2)
  end

  local pct = string.format("%.0f%%", Menu.LoadingProgress)
  local pw = textWidth(pct, 16)
  Menu.DrawText(cx - pw/2, cy - (8*(Menu.Scale or 1.0)), pct, 16, 1,1,1, alpha)
end

-- =========================
-- Key names / Press logic
-- =========================
Menu.KeyNames = {
  [0x08]="Backspace",[0x09]="Tab",[0x0D]="Enter",[0x10]="Shift",[0x11]="Ctrl",[0x12]="Alt",
  [0x1B]="ESC",[0x20]="Space",[0x25]="Left",[0x26]="Up",[0x27]="Right",[0x28]="Down",
  [0x30]="0",[0x31]="1",[0x32]="2",[0x33]="3",[0x34]="4",[0x35]="5",[0x36]="6",[0x37]="7",[0x38]="8",[0x39]="9",
  [0x41]="A",[0x42]="B",[0x43]="C",[0x44]="D",[0x45]="E",[0x46]="F",[0x47]="G",[0x48]="H",[0x49]="I",[0x4A]="J",
  [0x4B]="K",[0x4C]="L",[0x4D]="M",[0x4E]="N",[0x4F]="O",[0x50]="P",[0x51]="Q",[0x52]="R",[0x53]="S",[0x54]="T",
  [0x55]="U",[0x56]="V",[0x57]="W",[0x58]="X",[0x59]="Y",[0x5A]="Z",
  [0x70]="F1",[0x71]="F2",[0x72]="F3",[0x73]="F4",[0x74]="F5",[0x75]="F6",[0x76]="F7",[0x77]="F8",[0x78]="F9",
  [0x79]="F10",[0x7A]="F11",[0x7B]="F12"
}

function Menu.GetKeyName(k) return Menu.KeyNames[k] or ("Key 0x"..string.format("%02X", k)) end

function Menu.IsKeyJustPressed(keyCode)
  if not (Susano and Susano.GetAsyncKeyState) then return false end
  local down, pressed = Susano.GetAsyncKeyState(keyCode)
  local wasDown = Menu.KeyStates[keyCode] or false
  Menu.KeyStates[keyCode] = (down == true)
  if pressed == true then return true end
  if down == true and not wasDown then return true end
  return false
end

-- =========================
-- Keybind selector UI
-- =========================
function Menu.DrawKeySelector(alpha)
  if alpha <= 0 then return end
  local sw, sh = 1920, 1080
  if Susano and Susano.GetScreenWidth and Susano.GetScreenHeight then
    sw, sh = Susano.GetScreenWidth(), Susano.GetScreenHeight()
  end

  local w = 420
  local pad = 15
  local x = math.floor((sw - w)/2)
  local y = math.floor(sh - 170)

  local pr = Menu.Colors.Primary
  glowRect(x, y, w, 95, pr.r, pr.g, pr.b, alpha, 6, 12)
  Menu.DrawRoundedRect(x, y, w, 95, 0,0,0, 0.70*alpha, 10)
  Menu.DrawRect(x + pad, y + 42, w - pad*2, 2, pr.r, pr.g, pr.b, alpha)

  local title = "KEYBIND"
  Menu.DrawText(x + pad, y + 14, title, 14, 1,1,1, alpha)

  local itemName = Menu.BindingItem and (Menu.BindingItem.name or "Option") or "Menu Toggle"
  local keyName = Menu.BindingItem and Menu.BindingKeyName or Menu.SelectedKeyName
  if not keyName then keyName = "..." end

  local row = itemName .. " [" .. keyName .. "] - press a key"
  Menu.DrawText(x + pad, y + 55, row, 14, 1,1,1, alpha)
end

-- =========================
-- Keybinds Interface (top-right)
-- =========================
function Menu.DrawKeybindsInterface(alpha)
  if alpha <= 0 then return end
  local sw, sh = 1920, 1080
  if Susano and Susano.GetScreenWidth and Susano.GetScreenHeight then
    sw, sh = Susano.GetScreenWidth(), Susano.GetScreenHeight()
  end

  local binds = {}
  for _, cat in ipairs(Menu.Categories or {}) do
    if cat.hasTabs and cat.tabs then
      for _, tab in ipairs(cat.tabs) do
        for _, item in ipairs(tab.items or {}) do
          if item.bindKey and item.bindKeyName and (item.type == "toggle" or item.type == "action") then
            table.insert(binds, {
              name = item.name,
              keyName = item.bindKeyName,
              isActive = (item.type == "toggle") and (item.value == true) or nil
            })
          end
        end
      end
    end
  end
  if #binds == 0 then return end

  local pad = 14
  local lineH = 24
  local headerH = 38
  local w = 240

  local maxW = 0
  for _, b in ipairs(binds) do
    local status = (b.isActive ~= nil) and (b.isActive and "on" or "off") or ""
    local txt = (b.isActive ~= nil) and (b.name.." ("..b.keyName..") ["..status.."]") or (b.name.." ("..b.keyName..")")
    maxW = math.max(maxW, textWidth(txt, 14))
  end
  w = math.max(w, maxW + pad*2)

  local x = sw - w - 20
  local y = 20
  local h = headerH + 2 + pad + (#binds * lineH) + pad

  local pr = Menu.Colors.Primary
  glowRect(x, y, w, h, pr.r, pr.g, pr.b, alpha, 5, 10)
  Menu.DrawRoundedRect(x, y, w, h, 0,0,0, 0.60*alpha, 10)
  Menu.DrawText(x + pad, y + 12, "keybind", 14, 1,1,1, alpha)
  Menu.DrawRect(x + pad, y + headerH, w - pad*2, 2, pr.r, pr.g, pr.b, alpha)

  local cy = y + headerH + 2 + pad
  for i, b in ipairs(binds) do
    local status = (b.isActive ~= nil) and (b.isActive and "on" or "off") or ""
    local txt = (b.isActive ~= nil) and (b.name.." ("..b.keyName..") ["..status.."]") or (b.name.." ("..b.keyName..")")
    Menu.DrawText(x + pad, cy + (i-1)*lineH, txt, 14, 1,1,1, alpha)
  end
end

-- =========================
-- Input Window
-- =========================
function Menu.OpenInput(title, subtitle, callback)
  if type(subtitle) == "function" then
    callback = subtitle
    subtitle = "Enter text below"
  end
  Menu.InputTitle = title or "Input"
  Menu.InputSubtitle = subtitle or "Enter text below"
  Menu.InputText = ""
  Menu.InputCallback = callback
  Menu.InputOpen = true
  Menu.SelectingKey = false
  Menu.SelectingBind = false
end

function Menu.DrawInputWindow()
  if not Menu.InputOpen then return end
  local sw, sh = 1920, 1080
  if Susano and Susano.GetScreenWidth and Susano.GetScreenHeight then
    sw, sh = Susano.GetScreenWidth(), Susano.GetScreenHeight()
  end

  Menu.DrawRect(0, 0, sw, sh, 0,0,0, 0.60)

  local w, h = 370, 140
  local x = (sw/2) - (w/2)
  local y = (sh/2) - (h/2)

  local pr = Menu.Colors.Primary
  glowRect(x, y, w, h, pr.r, pr.g, pr.b, 0.85, 6, 14)
  Menu.DrawRoundedRect(x, y, w, h, 20,20,20, 1.0, 10)
  Menu.DrawRect(x, y, w, 2, pr.r, pr.g, pr.b, 1.0)

  local title = Menu.InputTitle or "Input"
  local tw = textWidth(title, 20)
  Menu.DrawText(x + w/2 - tw/2, y + 14, title, 20, 1,1,1, 1.0)
  Menu.DrawText(x + 20, y + 50, Menu.InputSubtitle or "Enter text below:", 14, 0.7,0.7,0.7, 1.0)

  local bx, by = x + 20, y + 78
  local bw, bh = w - 40, 32
  Menu.DrawRoundedRect(bx - 1, by - 1, bw + 2, bh + 2, 255,255,255, 0.80, 8)
  Menu.DrawRoundedRect(bx, by, bw, bh, 40,40,40, 1.0, 8)

  local txt = Menu.InputText or ""
  if GetGameTimer and (math.floor(GetGameTimer()/500) % 2 == 0) then
    txt = txt .. "|"
  end
  if #txt > 34 then txt = "..." .. string.sub(txt, -34) end
  Menu.DrawText(bx + 10, by + 7, txt, 16, 1,1,1, 1.0)
end

-- =========================
-- Particles (Snow)
-- =========================
math.randomseed(os.time())
for i = 1, 80 do
  Menu.Particles[i] = {
    x = math.random(),
    y = math.random(),
    vy = (math.random(20, 100)/10000),
    vx = (math.random(-20, 20)/10000),
    size = math.random(1, 2)
  }
end

function Menu.DrawParticles()
  if not Menu.ShowSnowflakes then return end
  local sp = Menu.GetScaledPosition()
  local x, y = sp.x, sp.y
  local w = sp.width - 1

  -- approximate height based on current UI; simple + cheap
  local h = sp.headerHeight + sp.mainMenuHeight + sp.mainMenuSpacing + (Menu.ItemsPerPage * sp.itemHeight) + sp.footerSpacing + sp.footerHeight

  for _, p in ipairs(Menu.Particles) do
    p.y = p.y + p.vy
    p.x = p.x + p.vx
    if p.y > 1.0 then
      p.y = 0
      p.x = math.random()
      p.vy = (math.random(20, 100)/10000)
      p.vx = (math.random(-20, 20)/10000)
    end

    local px = x + (p.x * w)
    local py = y + (p.y * h)
    Menu.DrawRect(px, py, p.size, p.size, 255,255,255, 0.75)
  end
end

-- =========================
-- Render
-- =========================
function Menu.Render()
  if Menu.TopLevelTabs and not Menu.Categories then
    Menu.UpdateCategoriesFromTopTab()
  end

  if not (Susano and Susano.BeginFrame) then return end

  local dt = (GetFrameTime and GetFrameTime()) or 0.016
  local anim = 5.0 * dt

  if Menu.IsLoading then
    Menu.LoadingBarAlpha = clamp(Menu.LoadingBarAlpha + anim, 0, 1)
  else
    Menu.LoadingBarAlpha = clamp(Menu.LoadingBarAlpha - anim, 0, 1)
  end

  if Menu.SelectingKey or Menu.SelectingBind then
    Menu.KeySelectorAlpha = clamp(Menu.KeySelectorAlpha + anim, 0, 1)
  else
    Menu.KeySelectorAlpha = clamp(Menu.KeySelectorAlpha - anim, 0, 1)
  end

  if Menu.ShowKeybinds then
    Menu.KeybindsInterfaceAlpha = clamp(Menu.KeybindsInterfaceAlpha + anim, 0, 1)
  else
    Menu.KeybindsInterfaceAlpha = clamp(Menu.KeybindsInterfaceAlpha - anim, 0, 1)
  end

  Susano.BeginFrame()

  if Menu.KeybindsInterfaceAlpha > 0 then
    Menu.DrawKeybindsInterface(Menu.KeybindsInterfaceAlpha)
  end

  if Menu.Visible then
    if Susano.EnableOverlay then Susano.EnableOverlay(Menu.EditorMode == true) end
    Menu.DrawBackground()
    Menu.DrawParticles()
    Menu.DrawHeader()
    Menu.DrawCategories()
    Menu.DrawFooter()
  end

  if Menu.InputOpen then
    Menu.DrawInputWindow()
  end

  if Menu.LoadingBarAlpha > 0 then
    Menu.DrawLoadingBar(Menu.LoadingBarAlpha)
  end

  if Menu.KeySelectorAlpha > 0 then
    Menu.DrawKeySelector(Menu.KeySelectorAlpha)
  end

  if Menu.OnRender then pcall(Menu.OnRender) end
  if Susano.SubmitFrame then Susano.SubmitFrame() end

  if not Menu.Visible and not Menu.ShowKeybinds and Menu.LoadingBarAlpha <= 0 and Menu.KeySelectorAlpha <= 0 then
    if Susano.ResetFrame then Susano.ResetFrame() end
  end
end

-- =========================
-- Input Handling
-- =========================
local function setThemeFromSelector(item)
  if item.name == "Menu Theme" and item.options then
    local idx = clamp(item.selected or 1, 1, #item.options)
    Menu.ApplyTheme(item.options[idx])
  elseif item.name == "Gradient" and item.options then
    local idx = clamp(item.selected or 1, 1, #item.options)
    Menu.GradientType = tonumber(item.options[idx]) or 1
  elseif item.name == "Scroll Bar Position" and item.options then
    local idx = clamp(item.selected or 1, 1, #item.options)
    local v = item.options[idx]
    Menu.ScrollbarPosition = (v == "Right") and 2 or 1
  end
end

function Menu.HandleInput()
  if Menu.IsLoading or not Menu.LoadingComplete then return end
  if Menu.InputOpen then
    -- input window keys
    if Menu.IsKeyJustPressed(0x0D) then
      Menu.InputOpen = false
      if Menu.InputCallback then Menu.InputCallback(Menu.InputText) end
    elseif Menu.IsKeyJustPressed(0x08) then
      if #Menu.InputText > 0 then Menu.InputText = string.sub(Menu.InputText, 1, -2) end
    elseif Menu.IsKeyJustPressed(0x1B) then
      Menu.InputOpen = false
    end

    if Susano and Susano.GetAsyncKeyState then
      local shiftDown = (Susano.GetAsyncKeyState(0x10) == true) or (Susano.GetAsyncKeyState(0xA0) == true) or (Susano.GetAsyncKeyState(0xA1) == true)

      for i = 0x41, 0x5A do
        if Menu.IsKeyJustPressed(i) then
          local c = string.char(i)
          if not shiftDown then c = string.lower(c) end
          Menu.InputText = Menu.InputText .. c
        end
      end
      for i = 0x30, 0x39 do
        if Menu.IsKeyJustPressed(i) then
          Menu.InputText = Menu.InputText .. string.char(i)
        end
      end
      if Menu.IsKeyJustPressed(0x20) then Menu.InputText = Menu.InputText .. " " end
    end
    return
  end

  -- Bind capturing (F9 to start, Enter to confirm) — same behavior
  local function captureAnyKey()
    if not (Susano and Susano.GetAsyncKeyState) then return nil end
    local keys = {
      0x41,0x42,0x43,0x44,0x45,0x46,0x47,0x48,0x49,0x4A,0x4B,0x4C,0x4D,0x4E,0x4F,0x50,0x51,0x52,0x53,0x54,0x55,0x56,0x57,0x58,0x59,0x5A,
      0x30,0x31,0x32,0x33,0x34,0x35,0x36,0x37,0x38,0x39,
      0x20,0x1B,0x08,0x09,0x10,0x11,0x12,
      0x25,0x26,0x27,0x28,
      0x70,0x71,0x72,0x73,0x74,0x75,0x76,0x77,0x78,0x79,0x7A,0x7B
    }
    for _, k in ipairs(keys) do
      if k ~= 0x0D then
        local down, pressed = Susano.GetAsyncKeyState(k)
        local was = Menu.KeyStates[k] or false
        Menu.KeyStates[k] = (down == true)
        if pressed == true or (down == true and not was) then
          return k
        end
      end
    end
    return nil
  end

  if Menu.SelectingBind then
    if Menu.IsKeyJustPressed(0x0D) then
      if Menu.BindingKey and Menu.BindingItem then
        Menu.BindingItem.bindKey = Menu.BindingKey
        Menu.BindingItem.bindKeyName = Menu.BindingKeyName
      end
      Menu.SelectingBind = false
      Menu.BindingItem, Menu.BindingKey, Menu.BindingKeyName = nil, nil, nil
      return
    end

    local k = captureAnyKey()
    if k then
      Menu.BindingKey = k
      Menu.BindingKeyName = Menu.GetKeyName(k)
    end
    return
  end

  if Menu.SelectingKey then
    if Menu.IsKeyJustPressed(0x0D) then
      if Menu.SelectedKey then Menu.SelectingKey = false end
      return
    end
    local k = captureAnyKey()
    if k then
      Menu.SelectedKey = k
      Menu.SelectedKeyName = Menu.GetKeyName(k)
    end
    return
  end

  -- Global item bind execution
  if Susano and Susano.GetAsyncKeyState and Menu.Categories then
    for _, cat in ipairs(Menu.Categories) do
      if cat.hasTabs and cat.tabs then
        for _, tab in ipairs(cat.tabs) do
          for _, item in ipairs(tab.items or {}) do
            if item and item.bindKey and (item.type == "toggle" or item.type == "action") then
              local down, pressed = Susano.GetAsyncKeyState(item.bindKey)
              local was = Menu.KeyStates[item.bindKey] or false
              Menu.KeyStates[item.bindKey] = (down == true)
              if pressed == true or (down == true and not was) then
                if item.type == "toggle" then
                  item.value = not item.value
                  if item.name == "Editor Mode" then Menu.EditorMode = item.value end
                  if item.onClick then item.onClick(item.value) end
                else
                  if item.onClick then item.onClick() end
                end
              end
            end
          end
        end
      end
    end
  end

  -- Toggle menu key
  local toggleKey = Menu.SelectedKey or 0x31
  if Menu.IsKeyJustPressed(toggleKey) then
    local wasVisible = Menu.Visible
    Menu.Visible = not Menu.Visible
    if wasVisible and not Menu.Visible and not Menu.ShowKeybinds then
      if Susano and Susano.ResetFrame then Susano.ResetFrame() end
    end
  end

  if not Menu.Visible then return end

  -- Editor drag (mouse) - kept but simplified
  if Menu.EditorMode and Susano and Susano.GetCursorPos and Susano.GetAsyncKeyState then
    local cur = Susano.GetCursorPos()
    local mx = (type(cur)=="table" and (cur[1] or cur.x or 0)) or (cur and cur.x) or 0
    local my = (type(cur)=="table" and (cur[2] or cur.y or 0)) or (cur and cur.y) or 0
    local lmbDown = (Susano.GetAsyncKeyState(0x01) == true)

    local sp = Menu.GetScaledPosition()
    local totalH = sp.headerHeight + sp.mainMenuHeight + sp.mainMenuSpacing + (Menu.ItemsPerPage * sp.itemHeight) + sp.footerSpacing + sp.footerHeight

    local over = (mx >= Menu.Position.x and mx <= Menu.Position.x + Menu.Position.width and my >= Menu.Position.y and my <= Menu.Position.y + totalH)

    local was = Menu.KeyStates[0x01] or false

    if lmbDown then
      if (not was) and over then
        Menu.EditorDragging = true
        Menu.EditorDragOffsetX = mx - Menu.Position.x
        Menu.EditorDragOffsetY = my - Menu.Position.y
      end
      if Menu.EditorDragging then
        local sw, sh = 1920, 1080
        if Susano.GetScreenWidth and Susano.GetScreenHeight then
          sw, sh = Susano.GetScreenWidth(), Susano.GetScreenHeight()
        end
        local nx = mx - Menu.EditorDragOffsetX
        local ny = my - Menu.EditorDragOffsetY
        Menu.Position.x = clamp(nx, 0, sw - Menu.Position.width)
        Menu.Position.y = clamp(ny, 0, sh - totalH)
      end
      Menu.KeyStates[0x01] = true
    else
      Menu.EditorDragging = false
      Menu.KeyStates[0x01] = false
    end
    return
  end

  -- Navigation keys
  local up = Menu.IsKeyJustPressed(0x26)
  local down = Menu.IsKeyJustPressed(0x28)
  local left = Menu.IsKeyJustPressed(0x25)
  local right = Menu.IsKeyJustPressed(0x27)
  local enter = Menu.IsKeyJustPressed(0x0D)
  local back = Menu.IsKeyJustPressed(0x08)
  local aKey = Menu.IsKeyJustPressed(0x41) -- A
  local eKey = Menu.IsKeyJustPressed(0x45) -- E
  local f9 = Menu.IsKeyJustPressed(0x78) -- F9 bind menu

  if Menu.OpenedCategory then
    local cat = Menu.Categories and Menu.Categories[Menu.OpenedCategory]
    if not (cat and cat.hasTabs and cat.tabs) then
      Menu.OpenedCategory = nil
      return
    end

    local tab = cat.tabs[Menu.CurrentTab]
    if not (tab and tab.items) then return end

    if f9 then
      local it = tab.items[Menu.CurrentItem]
      if it and not it.isSeparator then
        Menu.SelectingBind = true
        Menu.BindingItem = it
        Menu.BindingKey = it.bindKey
        Menu.BindingKeyName = it.bindKeyName
      end
      return
    end

    if up then
      Menu.CurrentItem = findNextNonSeparator(tab.items, Menu.CurrentItem, -1)
    elseif down then
      Menu.CurrentItem = findNextNonSeparator(tab.items, Menu.CurrentItem, 1)
    elseif aKey then
      if Menu.CurrentTab > 1 then
        Menu.CurrentTab = Menu.CurrentTab - 1
        local nt = cat.tabs[Menu.CurrentTab]
        Menu.CurrentItem = nt and nt.items and findNextNonSeparator(nt.items, 0, 1) or 1
        Menu.ItemScrollOffset = 0
      elseif Menu.TopLevelTabs then
        Menu.CurrentTopTab = Menu.CurrentTopTab - 1
        if Menu.CurrentTopTab < 1 then Menu.CurrentTopTab = #Menu.TopLevelTabs end
        Menu.UpdateCategoriesFromTopTab()
      end
    elseif eKey then
      if Menu.CurrentTab < #cat.tabs then
        Menu.CurrentTab = Menu.CurrentTab + 1
        local nt = cat.tabs[Menu.CurrentTab]
        Menu.CurrentItem = nt and nt.items and findNextNonSeparator(nt.items, 0, 1) or 1
        Menu.ItemScrollOffset = 0
      elseif Menu.TopLevelTabs then
        Menu.CurrentTopTab = Menu.CurrentTopTab + 1
        if Menu.CurrentTopTab > #Menu.TopLevelTabs then Menu.CurrentTopTab = 1 end
        Menu.UpdateCategoriesFromTopTab()
      end
    elseif back then
      Menu.OpenedCategory = nil
      Menu.CurrentItem = 1
      Menu.CurrentTab = 1
      Menu.ItemScrollOffset = 0
    elseif left or right then
      local it = tab.items[Menu.CurrentItem]
      if it and not it.isSeparator then
        local dir = left and -1 or 1
        if it.type == "slider" then
          local step = it.step or 1.0
          local mn = it.min or 0.0
          local mx = it.max or 100.0
          it.value = clamp((it.value or mn) + (step * dir), mn, mx)
          if it.name == "Smooth Menu" then Menu.SmoothFactor = it.value / 100.0 end
          if it.name == "Menu Size" then Menu.Scale = it.value / 100.0 end
          if it.onClick then it.onClick(it.value) end
        elseif it.type == "toggle" and it.hasSlider then
          local step = it.sliderStep or 0.1
          local mn = it.sliderMin or 0.0
          local mx = it.sliderMax or 100.0
          it.sliderValue = clamp((it.sliderValue or mn) + (step * dir), mn, mx)
        elseif (it.type == "selector" or it.type == "toggle_selector") and it.options then
          local idx = it.selected or 1
          idx = idx + dir
          if idx < 1 then idx = #it.options end
          if idx > #it.options then idx = 1 end
          it.selected = idx
          setThemeFromSelector(it)
          if it.onClick then it.onClick(it.selected, it.options[it.selected]) end
        end
      end
    end

    if enter then
      local it = tab.items[Menu.CurrentItem]
      if it and not it.isSeparator then
        if it.type == "toggle" or it.type == "toggle_selector" then
          it.value = not it.value
          if it.name == "Show Menu Keybinds" then Menu.ShowKeybinds = it.value end
          if it.name == "Editor Mode" then Menu.EditorMode = it.value end
          if it.name == "Flocon" then Menu.ShowSnowflakes = it.value end
          if it.onClick then it.onClick(it.value) end
        elseif it.type == "action" then
          if it.name == "Change Menu Keybind" then
            Menu.SelectingKey = true
          end
          if it.onClick then it.onClick() end
        elseif it.type == "selector" then
          if it.onClick then it.onClick(it.selected, it.options and it.options[it.selected]) end
        end
      end
    end
    return
  end

  -- Root category navigation
  if up then
    Menu.CurrentCategory = Menu.CurrentCategory - 1
    if Menu.CurrentCategory < 2 then Menu.CurrentCategory = #Menu.Categories end
  elseif down then
    Menu.CurrentCategory = Menu.CurrentCategory + 1
    if Menu.CurrentCategory > #Menu.Categories then Menu.CurrentCategory = 2 end
  elseif aKey and Menu.TopLevelTabs then
    Menu.CurrentTopTab = Menu.CurrentTopTab - 1
    if Menu.CurrentTopTab < 1 then Menu.CurrentTopTab = #Menu.TopLevelTabs end
    Menu.UpdateCategoriesFromTopTab()
  elseif eKey and Menu.TopLevelTabs then
    Menu.CurrentTopTab = Menu.CurrentTopTab + 1
    if Menu.CurrentTopTab > #Menu.TopLevelTabs then Menu.CurrentTopTab = 1 end
    Menu.UpdateCategoriesFromTopTab()
  end

  if enter then
    local cat = Menu.Categories and Menu.Categories[Menu.CurrentCategory]
    if cat and cat.hasTabs and cat.tabs then
      Menu.OpenedCategory = Menu.CurrentCategory
      Menu.CurrentTab = 1
      local tab = cat.tabs[1]
      Menu.CurrentItem = (tab and tab.items) and findNextNonSeparator(tab.items, 0, 1) or 1
      Menu.ItemScrollOffset = 0
    end
  end
end

-- =========================
-- Threads
-- =========================
CreateThread(function()
  Menu.LoadingStartTime = (GetGameTimer and GetGameTimer()) or 0
  while Menu.IsLoading do
    local now = (GetGameTimer and GetGameTimer()) or Menu.LoadingStartTime
    local elapsed = now - Menu.LoadingStartTime
    Menu.LoadingProgress = (elapsed / Menu.LoadingDuration) * 100.0
    if Menu.LoadingProgress >= 100.0 then
      Menu.LoadingProgress = 100.0
      Menu.IsLoading = false
      Menu.LoadingComplete = true
      Menu.SelectingKey = true -- ask for menu keybind after loading (same vibe)
      break
    end
    Wait(0)
  end
end)

CreateThread(function()
  while true do
    Menu.Render()
    if Menu.LoadingComplete then
      Menu.HandleInput()
    end
    Wait(0)
  end
end)

-- Default theme
Menu.ApplyTheme("BlackOrange")

return Menu

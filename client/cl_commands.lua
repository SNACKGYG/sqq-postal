Core = config.Settings.prefix
Core = exports[config.Settings.Core]:GetCoreObject()
LANG = config.Notifs[config.Lang]

local ipairs = ipairs
local upper = string.upper
local format = string.format


RegisterNetEvent('sqq-postal:start')
AddEventHandler('sqq-postal:start', function()
    if config.SystemDebug then
        print("^5SystemDebug^7: ^Code cl_commands^7: [^8 sqq-postal:start AddEventHandler ^7]")
    end

    local PlayerData = Core.Functions.GetPlayerData()

    local postal = exports[config.Settings.Input]:ShowInput({
        header = LANG["InputTextHeader"],
        submitText = LANG["InputTextsubmit"],
        inputs = {
            {
                text = LANG["InputText"],
                name = "postalcod",
                type = "text",
                isRequired = true
            },
        },
    })

    if postal ~= nil then
        if config.SystemDebug then
            print("^5SystemDebug^7: ^Code cl_commands^7: [^4 if postal = "..postalcod.." ^7]")
        end

        local postalcod = postal.postalcod
        local userPostal = upper(postalcod)
        local foundPostal

        for _, p in ipairs(postals) do
            if upper(p.code) == userPostal then
                foundPostal = p
                break
            end
        end

        if foundPostal then
            if pBlip then
                RemoveBlip(pBlip.hndl)
            end

            local blip = AddBlipForCoord(foundPostal[1][1], foundPostal[1][2], 0.0)
            pBlip = { hndl = blip, p = foundPostal }
            SetBlipRoute(blip, true)
            SetBlipSprite(blip, config.blip.sprite)
            SetBlipColour(blip, config.blip.color)
            SetBlipRouteColour(blip, config.blip.color)
            BeginTextCommandSetBlipName('STRING')
            AddTextComponentSubstringPlayerName(format(LANG["blipText"], pBlip.p.code))
            EndTextCommandSetBlipName(blip)

            Core.Functions.Notify(LANG["drawRouteText"]..""..foundPostal.code, "success", 5000)
        else
            Core.Functions.Notify(LANG["notExistText"], "error", 5000)
        end
    else
        if config.SystemDebug then print("^5SystemDebug^7: ^Code cl_commands^7: [^3 else if postal ^7]") end
    end
end)

if config.CommandPostal then
    TriggerEvent('chat:addSuggestion', '/'..config.CommandPostalName, LANG["postal"])
    RegisterCommand(config.CommandPostalName, function(_, args)
        TriggerEvent("sqq-postal:start")
        if config.SystemDebug then print("^5SystemDebug^7: ^Code cl_commands^7: [^6 sqq-postal:start RegisterCommand ^7]") end
    end)
end

if config.CommandPostald then
    TriggerEvent('chat:addSuggestion', '/'..config.CommandPostaldName, LANG["postald"])
    RegisterCommand(config.CommandPostaldName, function(_, args)
        if pBlip then
            RemoveBlip(pBlip.hndl)
            pBlip = nil
            Core.Functions.Notify(LANG["deleteText"], "success", 5000)
            if config.SystemDebug then print("^5SystemDebug^7: ^Code cl_commands^7: [^6 postald pBlip = nil ^7]") end
        else
            if config.SystemDebug then print("^5SystemDebug^7: ^Code cl_commands^7: [^6 postald RegisterCommand ^7]") end
        end
    end)
end

if config.SystemDebug then
	print("^5Debug^7: ^3client.lua^7: ^2start^7 ^2scerpt^3 ^9sqq-postal ok^3 - ^0 By Snaacqq^7")

	print("^5Debug^7: ^Config Settings^7: ^6prefix ^0[^9"..config.Settings["prefix"].."^7] ")
	print("^5Debug^7: ^Config Settings^7: ^6Core ^0[^9"..config.Settings["Core"].."^7] ")
	print("^5Debug^7: ^Config Settings^7: ^6Input ^0[^9"..config.Settings["Input"].."^7] ")
	print("^5Debug^7: ^Config Settings^7: ^6Lang ^0[^9"..config.Lang.."^7] ")

end

---@class PostalData : table<number, vec>
---@field code string
---@type table<number, PostalData>
postals = nil
Citizen.CreateThread(function()
    postals = LoadResourceFile(GetCurrentResourceName(), GetResourceMetadata(GetCurrentResourceName(), 'postal_file'))
    postals = json.decode(postals)
    for i, postal in ipairs(postals) do postals[i] = { vec(postal.x, postal.y), code = postal.code } end
end)

---@class NearestResult
---@field code string
---@field dist number
nearest = nil

---@class PostalBlip
---@field 1 vec
---@field p PostalData
---@field hndl number
pBlip = nil

exports('getPostal', function() return nearest and nearest.code or nil end)

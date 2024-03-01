RegisterServerEvent("tcvs:server:addVehicle")
AddEventHandler("tcvs:server:addVehicle", function(data)
	local src = source
	data.source = src
	local player = QBCore.Functions.GetPlayer(src)
	data.identifier = player.PlayerData.citizenid
  	TriggerEvent("realisticVehicleSystem:server:addVehicle", 1, data)
end)
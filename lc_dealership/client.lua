RegisterNetEvent('lc_dealership:spawnVehicle')
AddEventHandler('lc_dealership:spawnVehicle', function(vehicle_model,colors,plate)

	local garage_coord = vector4(table.unpack(Config.dealership_locations[current_dealership_id]['cutomers_garage_coord']))
	closeUI()

	local data = {
		hash = GetHashKey(vehicle_model),
		vehicleName = vehicle_model,
		plate = plate,
		coords = garage_coord,
		color1 = colors.primary_color,
		color2 = colors.secondary_color
	}

	TriggerServerEvent("tcvs:server:addVehicle", data)
	SetEntityCoords(PlayerPedId(), garage_coord.x, garage_coord.y + 4, garage_coord.z)
	DoScreenFadeIn(500)
end)
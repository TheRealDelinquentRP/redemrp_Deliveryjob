local isDelivering = false

Citizen.CreateThread(function()
	Wait(0)
	jobspot1 = N_0x554d9d53f696d002(1664425300, Config.MainJob1.x, Config.MainJob1.y, Config.MainJob1.z)
		SetBlipSprite(jobspot1, Config.MainSprite, 1)
			Citizen.InvokeNative(0x9CB1A1623062F402, jobspot1, "Oil Delivery")
	jobspot2 = N_0x554d9d53f696d002(1664425300, Config.MainJob2.x, Config.MainJob2.y, Config.MainJob2.z)
		SetBlipSprite(jobspot2, Config.MainSprite, 1)
			Citizen.InvokeNative(0x9CB1A1623062F402, jobspot2, "Supply Delivery")
	jobspot3 = N_0x554d9d53f696d002(1664425300, Config.MainJob3.x, Config.MainJob3.y, Config.MainJob3.z)
		SetBlipSprite(jobspot3, Config.MainSprite, 1)
			Citizen.InvokeNative(0x9CB1A1623062F402, jobspot3, "Supply Delivery")
	jobspot4 = N_0x554d9d53f696d002(1664425300, Config.MainJob4.x, Config.MainJob4.y, Config.MainJob4.z)
		SetBlipSprite(jobspot4, Config.MainSprite, 1)
			Citizen.InvokeNative(0x9CB1A1623062F402, jobspot4, "Produce Delivery")
end)

Citizen.CreateThread(function()
    while true do
		Citizen.Wait(0)
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)
		local betweencoords = GetDistanceBetweenCoords(coords.x, coords.y, coords.z, Config.MainJob1.x, Config.MainJob1.y, Config.MainJob1.z, true)
		local betweencoords2 = GetDistanceBetweenCoords(coords.x, coords.y, coords.z, Config.MainJob2.x, Config.MainJob2.y, Config.MainJob2.z, true)
		local betweencoords3 = GetDistanceBetweenCoords(coords.x, coords.y, coords.z, Config.MainJob3.x, Config.MainJob3.y, Config.MainJob3.z, true)
		local betweencoords4 = GetDistanceBetweenCoords(coords.x, coords.y, coords.z, Config.MainJob4.x, Config.MainJob4.y, Config.MainJob4.z, true)
		if betweencoords <= 2.2 then
		DrawTxt(Config.StartWorking1, 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
			if IsControlJustPressed(2, Config.JobButton) then
				p1 = N_0x554d9d53f696d002(1664425300, Config.Point1.x, Config.Point1.y, Config.Point1.z)
					SetBlipSprite(p1, Config.DeliverySprite, 1)
					Citizen.InvokeNative(0x9CB1A1623062F402, p1, "Delivery")
				isDelivering = true
				DoScreenFadeOut(1500)
				Wait(1500)
				cart()
				StartGpsMultiRoute(GetHashKey("COLOR_RED"), true, true)
        
				-- Add the points
				AddPointToGpsMultiRoute(Config.Point1.x, Config.Point1.y, Config.Point1.z)

				-- Set the route to render
				SetGpsMultiRouteRender(true)
				Wait(500)
				DoScreenFadeIn(1500)
				DrawTxt("Delivery started", 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
			end

		elseif betweencoords2 <= 2.2 then
		DrawTxt(Config.StartWorking2, 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
			if IsControlJustPressed(2, Config.JobButton) then
				p2 = N_0x554d9d53f696d002(1664425300, Config.Point2.x, Config.Point2.y, Config.Point2.z)
					SetBlipSprite(p2, Config.DeliverySprite, 1)
					Citizen.InvokeNative(0x9CB1A1623062F402, p2, "Delivery")
				isDelivering = true
				DoScreenFadeOut(1500)
				Wait(1500)
				cart2()
				StartGpsMultiRoute(GetHashKey("COLOR_RED"), true, true)
        
				-- Add the points
				AddPointToGpsMultiRoute(Config.Point2.x, Config.Point2.y, Config.Point2.z)

				-- Set the route to render
				SetGpsMultiRouteRender(true)
				Wait(500)
				DoScreenFadeIn(1500)
				DrawTxt("Delivery started", 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
			end

		elseif betweencoords3 <= 2.2 then
		DrawTxt(Config.StartWorking3, 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
			if IsControlJustPressed(2, Config.JobButton) then
				p3 = N_0x554d9d53f696d002(1664425300, Config.Point3.x, Config.Point3.y, Config.Point3.z)
					SetBlipSprite(p3, Config.DeliverySprite, 1)
					Citizen.InvokeNative(0x9CB1A1623062F402, p3, "Delivery")
				isDelivering = true
				DoScreenFadeOut(1500)
				Wait(1500)
				cart3()
				StartGpsMultiRoute(GetHashKey("COLOR_RED"), true, true)
        
				-- Add the points
				AddPointToGpsMultiRoute(Config.Point3.x, Config.Point3.y, Config.Point3.z)

				-- Set the route to render
				SetGpsMultiRouteRender(true)
				Wait(500)
				DoScreenFadeIn(1500)
				DrawTxt("Delivery started", 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
			end

		elseif betweencoords4 <= 2.2 then
		DrawTxt(Config.StartWorking4, 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
			if IsControlJustPressed(2, Config.JobButton) then
				p4 = N_0x554d9d53f696d002(1664425300, Config.Point4.x, Config.Point4.y, Config.Point4.z)
					SetBlipSprite(p4, Config.DeliverySprite, 1)
					Citizen.InvokeNative(0x9CB1A1623062F402, p4, "Delivery")
				isDelivering = true
				DoScreenFadeOut(1500)
				Wait(1500)
				cart4()
				StartGpsMultiRoute(GetHashKey("COLOR_RED"), true, true)
        
				-- Add the points
				AddPointToGpsMultiRoute(Config.Point4.x, Config.Point4.y, Config.Point4.z)

				-- Set the route to render
				SetGpsMultiRouteRender(true)
				Wait(500)
				DoScreenFadeIn(1500)
				DrawTxt("Delivery started", 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
			end
		else end
	end
end)

function DrawTxt(_message, x, y, w, h, enableShadow, col1, col2, col3, a, centre)
    local str = Citizen.InvokeNative(0xFA925AC00EB830B9, 10, "LITERAL_STRING", _message, Citizen.ResultAsLong())
       SetTextScale(w, h)
       SetTextCentre(centre)
       Citizen.InvokeNative(0xFA233F8FE190514C, str)
       Citizen.InvokeNative(0xE9990552DEC71600)
   end

Citizen.CreateThread(function()
while true do
	Wait(0)
	local playerPed = PlayerPedId()
	local coords = GetEntityCoords(playerPed)
	local betweencoords = GetDistanceBetweenCoords(coords.x, coords.y, coords.z, Config.Point1.x, Config.Point1.y, Config.Point1.z, true)
	local betweencoords2 = GetDistanceBetweenCoords(coords.x, coords.y, coords.z, Config.Point2.x, Config.Point2.y, Config.Point2.z, true)
	local betweencoords3 = GetDistanceBetweenCoords(coords.x, coords.y, coords.z, Config.Point3.x, Config.Point3.y, Config.Point3.z, true)
	local betweencoords4 = GetDistanceBetweenCoords(coords.x, coords.y, coords.z, Config.Point4.x, Config.Point4.y, Config.Point4.z, true)
	if betweencoords <= Config.ZoneSize and isDelivering then
	DrawTxt(Config.Deliver, 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
		if IsControlJustPressed(2, Config.DeliveryButton) then
			TriggerEvent("redemrp_notification:start", "Delivering" , 1, "warning")
			TriggerServerEvent('redemrp_Deliveryjob:payout', Config.Cash1, Config.Gold1, Config.EXP1)
				isDelivering = false
				RemoveBlip(p1)
				DoScreenFadeOut(1500)
				Wait(1500)
				DeleteVehicle(car)
				SetGpsMultiRouteRender(false)
				Wait(500)
				DoScreenFadeIn(1500)
				DrawTxt("Delivery complete", 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
			end
	elseif betweencoords2 <= Config.ZoneSize and isDelivering then
	DrawTxt(Config.Deliver, 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
		if IsControlJustPressed(2, Config.DeliveryButton) then
			TriggerEvent("redemrp_notification:start", "Delivering" , 1, "warning")
			TriggerServerEvent('redemrp_Deliveryjob:payout', Config.Cash2, Config.Gold2, Config.EXP2)
				isDelivering = false
				RemoveBlip(p2)
				DoScreenFadeOut(1500)
				Wait(1500)
				DeleteVehicle(car2)
				SetGpsMultiRouteRender(false)
				Wait(500)
				DoScreenFadeIn(1500)
				DrawTxt("Delivery complete", 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
			end
	elseif betweencoords3 <= Config.ZoneSize and isDelivering then
	DrawTxt(Config.Deliver, 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
		if IsControlJustPressed(2, Config.DeliveryButton) then
			TriggerEvent("redemrp_notification:start", "Delivering" , 1, "warning")
			TriggerServerEvent('redemrp_Deliveryjob:payout', Config.Cash3, Config.Gold3, Config.EXP3)
				isDelivering = false
				RemoveBlip(p3)
				DoScreenFadeOut(1500)
				Wait(1500)
				DeleteVehicle(car3)
				SetGpsMultiRouteRender(false)
				Wait(500)
				DoScreenFadeIn(1500)
				DrawTxt("Delivery complete", 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
			end
			
	elseif betweencoords4 <= Config.ZoneSize and isDelivering then
	DrawTxt(Config.Deliver, 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
		if IsControlJustPressed(2, Config.DeliveryButton) then
			TriggerEvent("redemrp_notification:start", "Delivering" , 1, "warning")
			TriggerServerEvent('redemrp_Deliveryjob:payout', Config.Cash4, Config.Gold4, Config.EXP4)
				isDelivering = false
				RemoveBlip(p4)
				DoScreenFadeOut(1500)
				Wait(1500)
				DeleteVehicle(car4)
				SetGpsMultiRouteRender(false)
				Wait(500)
				DoScreenFadeIn(1500)
				DrawTxt("Delivery complete", 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
			end
	else end
	end
end)

function cart()
    local ped = PlayerPedId()
    local car_start = GetEntityCoords(ped)
    local car_name = "OILWAGON01X"
    local carHash = GetHashKey(car_name)
    RequestModel(carHash)

    while not HasModelLoaded(carHash) do
        Citizen.Wait(0)
    end

    car = CreateVehicle(carHash, Config.Cart1.x, Config.Cart1.y, Config.Cart1.z, Config.Cart1.h, true, false)
    SetVehicleOnGroundProperly(car)
    SetPedIntoVehicle(ped, car, -1)
	--Citizen.InvokeNative(0xD80FAF919A2E56EA, car, 986026237)--add cargo
    SetModelAsNoLongerNeeded(carHash)
end

function cart2()
    local ped = PlayerPedId()
    local car_start = GetEntityCoords(ped)
    local car_name = "supplywagon"
    local carHash = GetHashKey(car_name)
    RequestModel(carHash)

    while not HasModelLoaded(carHash) do
        Citizen.Wait(0)
    end

    car2 = CreateVehicle(carHash, Config.Cart2.x, Config.Cart2.y, Config.Cart2.z, Config.Cart2.h, true, false)
    SetVehicleOnGroundProperly(car2)
	SetPedIntoVehicle(ped, car2, -1)
	SetVehicleExtra(car2, 0, false)
	SetVehicleExtra(car2, 1, false)--ribs
	SetVehicleExtra(car2, 2, true)--full cover
	SetVehicleExtra(car2, 3, false)--cover, rolled sides
	Citizen.InvokeNative(0xD80FAF919A2E56EA, car2, 0xBE99FB24)--add cargo
    SetModelAsNoLongerNeeded(carHash)
end

function cart3()
    local ped = PlayerPedId()
    local car_start = GetEntityCoords(ped)
    local car_name = "WAGON05X"
    local carHash = GetHashKey(car_name)
    RequestModel(carHash)

    while not HasModelLoaded(carHash) do
        Citizen.Wait(0)
    end

    car3 = CreateVehicle(carHash, Config.Cart3.x, Config.Cart3.y, Config.Cart3.z, Config.Cart3.h, true, false)
    SetVehicleOnGroundProperly(car3)
    SetPedIntoVehicle(ped, car3, -1)
	SetVehicleExtra(car3, 0, true)
	SetVehicleExtra(car3, 1, false)--ribs
	SetVehicleExtra(car3, 2, false)--full cover
	SetVehicleExtra(car3, 3, false)--cover, rolled sides
	Citizen.InvokeNative(0xD80FAF919A2E56EA, car3, -488847186)--add cargo
    SetModelAsNoLongerNeeded(carHash)
end

function cart4()
    local ped = PlayerPedId()
    local car_start = GetEntityCoords(ped)
    local car_name = "GATCHUCK"
    local carHash = GetHashKey(car_name)
    RequestModel(carHash)

    while not HasModelLoaded(carHash) do
        Citizen.Wait(0)
    end

    car4 = CreateVehicle(carHash, Config.Cart4.x, Config.Cart4.y, Config.Cart4.z, Config.Cart4.h, true, false)
    SetVehicleOnGroundProperly(car4)	
    SetPedIntoVehicle(ped, car4, -1)
	SetVehicleExtra(car4, 0, false)
	SetVehicleExtra(car4, 1, true)--ribs
	SetVehicleExtra(car4, 2, false)--full cover
	SetVehicleExtra(car4, 3, true)--cover, rolled sides
	Citizen.InvokeNative(0xD80FAF919A2E56EA, car4, 2031331786)--add cargo
    SetModelAsNoLongerNeeded(carHash)
end
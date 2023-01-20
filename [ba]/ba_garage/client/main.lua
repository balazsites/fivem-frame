local garagek = {}
BA = {}
BA.Garage = {}
local vehiclesList = {}
local vehiclesLists = {}

for i=1, #Config.Garages, 1 do
    print(Config.Garages[i].name .. ', ' .. Config.Garages[i].lehivo)
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local ped = GetPlayerPed(-1)
        local playerCoords = GetEntityCoords(ped)
        for i=1, #Config.Garages, 1 do 
            if GetDistanceBetweenCoords(playerCoords, Config.Garages[i].lehivo, true) < 3.0 then
                SendNUIMessage({
                    type = 'notifyo',
                    header = 'Garázs',
                    text = 'Nyomj [E]-t, hogy meg nyisd a garázst!'
                })
                if IsControlJustReleased(0, 38) then
                    TriggerServerEvent('ba_garage:getPlayerVehicles', Config.Garages[i].name)
                    --[[ OpenGarage(Config.Garages[i].name) ]]
                end
            elseif GetDistanceBetweenCoords(playerCoords, Config.Garages[i].lehivo, true) > 3.0 then
                SendNUIMessage({
                    type = 'notifyc'
                })
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local ped = GetPlayerPed(-1)
        local playerCoords = GetEntityCoords(ped)
        for i=1, #Config.Garages, 1 do 
            if IsPedInAnyVehicle(GetPlayerPed(-1)) then 
                if GetDistanceBetweenCoords(playerCoords, Config.Garages[i].leado, true) < 20.0 then
                    SendNUIMessage({
                        type = 'notifyo',
                        header = 'Garázs',
                        text = 'Nyomj [E]-t, hogy leadd az autód!'
                    })
                    if IsControlJustReleased(0, 38) then
                        local torolnivalo = GetVehiclePedIsIn(GetPlayerPed(-1), false)
                        DeleteVehicle(torolnivalo)
                        -- leellenorizni a rendszamot es a tulajdonost es ha nincs ilye kocsija akkor 
                        -- mentes a jelenlegi allapotot az sqlbe
                    end
                elseif GetDistanceBetweenCoords(playerCoords, Config.Garages[i].leado, true) > 20.0 then
                    SendNUIMessage({
                        type = 'notifyc'
                    })
                end
            end
        end
    end
end)

Citizen.CreateThread(function()
    for i=1, #Config.Garages, 1 do 
        blip = AddBlipForCoord(Config.Garages[i].lehivo)
        SetBlipSprite(blip, 357)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, 1.0)
        SetBlipColour(blip, 3)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString('Garázs ('.. Config.Garages[i].name .. ')')
        EndTextCommandSetBlipName(blip)
    end
end)

Citizen.CreateThread(function()
    modelHash = GetHashKey(Config.Ped)
    RequestModel(modelHash)
    while not HasModelLoaded(modelHash) do
         Wait(1)
    end
    spawnParkPed() 
end)

function spawnParkPed()
    for i=1, #Config.Garages, 1 do 
        created_ped = CreatePed(0, Config.Ped, Config.Garages[i].lehivo - vector3(0.0,0.0,1.0), Config.Garages[i].ped_heading, true)
        FreezeEntityPosition(created_ped, true)
        SetEntityInvincible(created_ped, true)
        SetBlockingOfNonTemporaryEvents(created_ped, true)
        --[[ TaskStartScenarioInPlace(created_ped, "WORLD_HUMAN_COP_IDLES", 0, true) ]]

        local options = {
            {
                name = 'ba:open',
                icon = 'fa-solid fa-road',
                label = 'Garázs megnyitása ('.. Config.Garages[i].name .. ')',
                serverEvent = 'ba_garage:getPlayerVehicles'
            }
        }
        exports.ox_target:addGlobalPed(options)
    end
end

RegisterCommand('loc', function(source, args, rawCommand)
    local player = source
    local ped = GetPlayerPed(-1)
    local playerCoords = GetEntityCoords(ped)
    local playerHeading = GetEntityHeading(ped)

    print(playerCoords, playerHeading) -- vector3(...)
end)

function OpenGarageA()
    SetNuiFocus(true, true)
    SendNUIMessage({
        type = 'openg',
        garage = 'A'
    })
end

RegisterNUICallback('getout', function(data, cb)
    if not data.vehicle then
        print('kaki van a palacsintában')
    else
        SetNuiFocus(false, false)
        SendNUIMessage({
            type = 'close'
        })
        for k in pairs (vehiclesList) do
            vehiclesList[k] = nil
        end
        for k in pairs (vehiclesLists) do
            vehiclesLists[k] = nil
        end   
        print(data.vehicle, data.plate)
        for i=1, #Config.Garages, 1 do 
            if not IsModelInCdimage(data.vehicle) then return end
            RequestModel(data.vehicle) -- Request the model
            while not HasModelLoaded(data.vehicle) do -- Waits for the model to load with a check so it does not get stuck in an infinite loop
                Citizen.Wait(10)
            end
            vehicle = CreateVehicle(data.vehicle, Config.Garages[i].leado, Config.Garages[i].leado_heading, true)
            SetModelAsNoLongerNeeded(data.vehicle)
            SetVehicleNumberPlateText(vehicle, data.plate)
            SetPedIntoVehicle(GetPlayerPed(-1), vehicle, -1)
        end
    end
end)

RegisterNUICallback('close', function(data, cb)
    local itemId = data.itemId
    if itemId ~= 'close' then
        print('kaki van a palacsintában')
    else
        SetNuiFocus(false, false)
        SendNUIMessage({
            type = 'close'
        })
        for k in pairs (vehiclesList) do
            vehiclesList[k] = nil
        end
        for k in pairs (vehiclesLists) do
            vehiclesLists[k] = nil
        end    
    end
end)

RegisterNetEvent('ba_garage:getVehiclesInfos')
AddEventHandler('ba_garage:getVehiclesInfos', function(from_garage, result, result1)
    OpenGarage(from_garage)
    --[[  print(vehicle, garage, plate) ]]
    for j=1, #result, 1 do
        vehicle = result[j].vehicle
        garage = result[j].garage
        plate = result[j].plate
        table.insert(vehiclesList, {
            vehicle = result[j].vehicle,
            garage = result[j].garage,
            plate = result[j].plate
        })
        print(vehicle, garage, plate)
    end
    for j=1, #result1, 1 do
        vehicle = result[j].vehicle
        garage = result[j].garage
        plate = result[j].plate
        table.insert(vehiclesLists, {
            vehicle = result1[j].vehicle,
            garage = result1[j].garage,
            plate = result1[j].plate
        })
    end
    SendNUIMessage({
        type = 'og',
        vehiclesList = {json.encode(vehiclesList)},
    })
    if garage == from_garage and Config.SharedGarage == false then
        SendNUIMessage({
            type = 'sajatg',
            vehiclesList = {json.encode(vehiclesLists)},
        })
        print(vehicle, garage, plate)
    elseif Config.SharedGarage then
        SendNUIMessage({
            type = 'sajatg',
            vehiclesList = {json.encode(vehiclesList)},
        })
    end
end)
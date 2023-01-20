BA = {}
BA.Garage = {}
local vehiclesList = {}

RegisterNetEvent('ba_garage:getPlayerVehicles')
AddEventHandler('ba_garage:getPlayerVehicles', function(garage1)
    local source = source
    local identifiers = GetPlayerIdentifiers(source)
    local license  = false
    local discord = false
    vehicle = false
    garage = false
    plate = false
    --license lekérdezése
    for k,v in pairs(GetPlayerIdentifiers(source))do
        if string.sub(v, 1, string.len("license:")) == "license:" then
            license = v
        elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
            discord = v
        end    
    end

    MySQL.Async.fetchAll('SELECT * FROM user_vehicles WHERE owner = @owner', { 
        ['@owner'] = license 
    }, function(result)
        MySQL.Async.fetchAll('SELECT * FROM user_vehicles WHERE garage = @garage', { 
            ['@garage'] = garage1
        }, function(result1)
            TriggerClientEvent('ba_garage:getVehiclesInfos', source, garage1, result, result1)
        end)
    end)
end)
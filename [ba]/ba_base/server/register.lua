--csatlakozás figyelése 
AddEventHandler('playerConnecting', function(name, setKickReason, deferrals)
    local source = source
    local identifiers = GetPlayerIdentifiers(source)
    local license  = false
    local discord = false
    
    --license lekérdezése
    for k,v in pairs(GetPlayerIdentifiers(source))do
        if string.sub(v, 1, string.len("license:")) == "license:" then
            license = v
            print('license megvan:' .. license)
        elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
            discord = v
            print('discord megvan:' .. discord)
        end    
    end
    

    if not discord then
        deferrals.done('Nem vagy bejelentkezve a discord aplikációba vagy nincs letöltve!');
    else 
        deferrals.done();
        -- license összehasonlítása az adatbázissal
        MySQL.Async.fetchScalar('SELECT 1 FROM `users` WHERE license = @license', {
            ['@license'] = license
        }, function(result)
            if not result then
                -- megnyitás
                Citizen.Wait(30000)
                TriggerClientEvent('ba_base:openregisterpanel', source)
                print('Regisztrálópanel megnyitva!')
            else
                --sima csatlakozás
                MySQL.Async.fetchAll('SELECT * FROM users WHERE license = @license', {
                    ['@license'] = license
                }, function(result)
                    print(json.encode(result))
                    if string.find(json.encode(result), '"nem":"ferfi"') then
                        --TriggerClientEvent('ba_skin:defaultPed', source, true)
                        print('ferfiu')
                        --print('Skin ráadava!')
                        Citizen.Wait(30000)
                        TriggerClientEvent('ba_skin:skinDef', source, '0')
                        TriggerEvent('skin:setit', source, license)
                        print('donnnnnnne')
                    elseif string.find(json.encode(result), '"nem":"no"') then
                        TriggerClientEvent('ba_skin:skinDef', source, '1')
                        TriggerEvent('skin:setit', source, license)
                        print('no')
                        print('Skin ráadava!')
                    end
                end)
            end
        end)
    end
end)

RegisterNetEvent('ba_base:getRegisterInfos')
AddEventHandler('ba_base:getRegisterInfos', function(firstname_s, lastname_s, nem_s, szuletes_s)
    -- infok atirasa
    firstname = firstname_s
    lastname = lastname_s
    nem = nem_s
    szuletes = szuletes_s
    local source = source
    local identifiers = GetPlayerIdentifiers(source)
    local license  = false
    local discord = false
    
    --license lekérdezése
    for k,v in pairs(GetPlayerIdentifiers(source))do
        if string.sub(v, 1, string.len("license:")) == "license:" then
            license = v
        elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
            discord = v
        end    
    end

    MySQL.Async.fetchScalar('SELECT 1 FROM `users` WHERE license = @license', {
        ['@license'] = license
    }, function(result)
        if not result then
            -- SQL-be illesztes
            MySQL.Async.insert('INSERT INTO users (license, discord, firstname, lastname, nem, szuletes) VALUES (@license, @discord, @firstname, @lastname, @nem, @szuletes)', { 
                ['@license'] = license, 
                ['@discord'] = discord, 
                ['@firstname'] = firstname, 
                ['@lastname'] = lastname, 
                ['@nem'] = nem,
                ['@szuletes'] = szuletes
            }, function(insertId)
                    print(insertId)
                    print('SQL mentve')
                end
            )
        else
            print(license .. ', ' .. discord .. ': Megpróbált újból regisztrálni!')
        end
    end)
end)

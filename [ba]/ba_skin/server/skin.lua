AddEventHandler('onResourceStart', function(resource)
    if (GetCurrentResourceName() ~= resource) then
        return
      end
      print(resource .. ' A rendszer felállt!')
end)

RegisterNetEvent('ba_skin:registerskin')
AddEventHandler('ba_skin:registerskin', function(skin)
    local source = source
    local identifiers = GetPlayerIdentifiers(source)
    local license  = false
    local discord = false
    local json =  json.encode(skin)
    
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
            return
        else
            MySQL.Async.execute('UPDATE users SET `skin` = @skin WHERE license = @license', { 
                ['@license'] = license, 
                ['@skin'] = json
                
            },
            function(affectedRows)
                print(affectedRows)
                local file = io.open('resources/skins.txt', "a")

				file:write(json .. "\n\n")
				file:flush()
				file:close()
                print('Skin regisztrálva SQL-be')
            end)
        end
    end)
end)

--[[ RegisterNetEvent('ba_skin:setit')
AddEventHandler('ba_skin:setit', function(license)
    local source = source
    --[[ local karakter = {
        sex          = 332,
        face         = 0,
        skin         = 0,
        beard_1      = 0,
        beard_2      = 0,
        beard_3      = 0,
        beard_4      = 0,
        hair_1       = 0,
        hair_2       = 0,
        hair_color_1 = 0,
        hair_color_2 = 0,
        tshirt_1     = 0,
        tshirt_2     = 0,
        torso_1      = 0,
        torso_2      = 0,
        decals_1     = 0,
        decals_2     = 0,
        arms         = 0,
        pants_1      = 0,
        pants_2      = 0,
        shoes_1      = 0,
        shoes_2      = 0,
        mask_1       = 0,
        mask_2       = 0,
        bproof_1     = 0,
        bproof_2     = 0,
        chain_1      = 0,
        chain_2      = 0,
        helmet_1     = -1,
        helmet_2     = 0,
        glasses_1    = 0,
        glasses_2    = 0,
    } ]]
   --[[  MySQL.Async.fetchAll('SELECT skin FROM users WHERE license = @license', { 
        ['@license'] = license 
    }, function(result)
        --[[ kaei = result ]]
        --[[ print(json.decode(result)) ]]
        finalkarakter = result
        --[[ if result then
            TriggerEvent('ba_skin:setsatit')
            print('fasza1')
        end ]
    end) ]]
    --[[ satit()
    print('fasza1') ]
end) ]]

--[[ function satit()
    local source = source
    TriggerClientEvent('ba_skin:loadskin', source, finalkarakter)
    print('fasza2')
end ]]

RegisterCommand('skindef', function(source, args, rawCommand)
    TriggerClientEvent('ba_skin:skinDef', source, '0')
end)

RegisterCommand('discordid', function(source, args, rawCommand)
    local source = source
    local identifiers = GetPlayerIdentifiers(source)
    local discord = false
    
    --license lekérdezése
    for k,v in pairs(GetPlayerIdentifiers(source)) do
        if string.sub(v, 1, string.len("discord:")) == "discord:" then
            discord = v
            print('@' .. discord)
        end    
    end
end)



RegisterCommand('loadskin', function(source, args, rawCommand)
    -- infok atirasa
    local source = source
    local identifiers = GetPlayerIdentifiers(source)
    local license  = false
    local discord = false
    
    --license lekérdezése
    for k,v in pairs(GetPlayerIdentifiers(source))do
        if string.sub(v, 1, string.len("license:")) == "license:" then
            lici = v
        elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
            discord = v
        end    
    end
    local karakter = {
        face         = 0,
        skin         = 0,
        age_1        = 0,
        age_2        = 0,
        beard_1      = 0,
        beard_2      = 0,
        beard_3      = 0,
        beard_4      = 0,
        hair_1       = 0,
        hair_2       = 0,
        hair_color_1 = 0,
        hair_color_2 = 0,
        eyebrows_1   = 0,
        eyebrows_2   = 0,
        eyebrows_3   = 0,
        eyebrows_4   = 0,
        makeup_1     = 0,
        makeup_2     = 0,
        makeup_3     = 0,
        makeup_4     = 0,
        lipstick_1   = 0,
        lipstick_2   = 0,
        lipstick_3   = 0,
        lipstick_4   = 0,
        tshirt_1     = 0,
        tshirt_2     = 0,
        torso_1      = 100,
        torso_2      = 0,
        decals_1     = 0,
        decals_2     = 0,
        ears_1       = 0,
        ears_2       = 0,
        arms         = 0,
        pants_1      = 0,
        pants_2      = 0,
        shoes_1      = 0,
        shoes_2      = 0,
        mask_1       = 0,
        mask_2       = 0,
        bproof_1     = 0,
        bproof_2     = 0,
        chain_1      = 0,
        chain_2      = 0,
        helmet_1     = 0,
        helmet_2     = 0,
        glasses_1    = 0,
        glasses_2    = 0,
    }
    MySQL.Async.fetchAll('SELECT skin FROM users WHERE license = @license', { 
        ['@license'] = license 
    }, function(reulst)
        --[[ kaei = result ]]
        --[[ print(json.decode(result)) ]]
        --[[ if result then
            TriggerEvent('ba_skin:setsatit')
            print('fasza1')
        end ]]
        --[[ local file = io.open('resources/skins.txt', "a")

        file:write(json.decode(result) .. "\n\n")
        file:flush()
        file:close()
        print(json.encode(result))
        TriggerClientEvent('skinchanger:loadSkin', source, karakter)
        print('fasza2') ]]
        local user = reulst[1]
		local skin = nil
		if user.skin ~= nil then
			skin = json.decode(user.skin)
		end

        print(user.skin)
        TriggerClientEvent('skinchanger:loadSkin', source, skin)
    end)
    --[[ TriggerClientEvent('ba_skin:loadskin', source, finalkarakter)
    print('fasza2') ]]
end)

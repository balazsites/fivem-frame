-- megnyitás
RegisterNetEvent('ba_base:openregisterpanel')
AddEventHandler('ba_base:openregisterpanel', function()
    SetNuiFocus(true, true)
    SendNUIMessage({
        type = 'open'
    })
    print("opened")
end)

-- teszt parancs 
RegisterCommand('open', function(source, args, rawCommand)
    SetNuiFocus(true, true)
    SendNUIMessage({
        type = 'open'
    })
end)

-- lekérdezés a NUI-ból és panel bezárás
RegisterNUICallback('register', function(data, cb)
    local firstname = data.firstname
    local lastname = data.lastname
    local nem = data.nem
    local szuletes = data.szuletes
    print(firstname, lastname, nem, szuletes)
    print('Sikeres regisztráció!')
    SendNUIMessage({
        type = 'close'
    })
    SetNuiFocus(false, false)
    TriggerServerEvent('ba_base:getRegisterInfos', firstname, lastname, nem, szuletes)
    TriggerEvent('ba_skin:openSkinRegister')
    print('Átküldve szerver oldalra!')
    cb('ok')
end)
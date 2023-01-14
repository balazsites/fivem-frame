local Components = {
    {label = 'sex',                   name = 'sex',           value = 0,  min = 0,  zoomOffset = 0.6,   camOffset = 0.65},
    {label = 'face',                  name = 'face',          value = 0,  min = 0,  zoomOffset = 0.6,   camOffset = 0.65},
    {label = 'skin',                  name = 'skin',          value = 0,  min = 0,  zoomOffset = 0.6,   camOffset = 0.65},
    {label = 'wrinkles',              name = 'age_1',         value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65},
    {label = 'wrinkle_thickness',     name = 'age_2',         value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65},
    {label = 'beard_type',            name = 'beard_1',       value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65},
    {label = 'beard_size',            name = 'beard_2',       value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65},
    {label = 'beard_color_1',         name = 'beard_3',       value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65},
    {label = 'beard_color_2',         name = 'beard_4',       value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65},
    {label = 'hair_1',                name = 'hair_1',        value = 0,  min = 0,  zoomOffset = 0.6,   camOffset = 0.65},
    {label = 'hair_2',                name = 'hair_2',        value = 0,  min = 0,  zoomOffset = 0.6,   camOffset = 0.65},
    {label = 'hair_color_1',          name = 'hair_color_1',  value = 0,  min = 0,  zoomOffset = 0.6,   camOffset = 0.65},
    {label = 'hair_color_2',          name = 'hair_color_2',  value = 0,  min = 0,  zoomOffset = 0.6,   camOffset = 0.65},
    {label = 'eyebrow_size',          name = 'eyebrows_2',    value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65},
    {label = 'eyebrow_type',          name = 'eyebrows_1',    value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65},
    {label = 'eyebrow_color_1',       name = 'eyebrows_3',    value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65},
    {label = 'eyebrow_color_2',       name = 'eyebrows_4',    value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65},
    {label = 'makeup_type',           name = 'makeup_1',      value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65},
    {label = 'makeup_thickness',      name = 'makeup_2',      value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65},
    {label = 'makeup_color_1',        name = 'makeup_3',      value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65},
    {label = 'makeup_color_2',        name = 'makeup_4',      value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65},
    {label = 'lipstick_type',         name = 'lipstick_1',    value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65},
    {label = 'lipstick_thickness',    name = 'lipstick_2',    value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65},
    {label = 'lipstick_color_1',      name = 'lipstick_3',    value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65},
    {label = 'lipstick_color_2',      name = 'lipstick_4',    value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65},
    {label = 'ear_accessories',       name = 'ears_1',        value = -1, min = -1, zoomOffset = 0.4,   camOffset = 0.65},
    {label = 'ear_accessories_color', name = 'ears_2',        value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65, textureof = 'ears_1'},
    {label = 'tshirt_1',              name = 'tshirt_1',      value = 0,  min = 0,  zoomOffset = 0.75,  camOffset = 0.15},
    {label = 'tshirt_2',              name = 'tshirt_2',      value = 0,  min = 0,  zoomOffset = 0.75,  camOffset = 0.15, textureof = 'tshirt_1'},
    {label = 'torso_1',               name = 'torso_1',       value = 0,  min = 0,  zoomOffset = 0.75,  camOffset = 0.15},
    {label = 'torso_2',               name = 'torso_2',       value = 0,  min = 0,  zoomOffset = 0.75,  camOffset = 0.15, textureof = 'torso_1'},
    {label = 'decals_1',              name = 'decals_1',      value = 0,  min = 0,  zoomOffset = 0.75,  camOffset = 0.15}, 
    {label = 'decals_2',              name = 'decals_2',      value = 0,  min = 0,  zoomOffset = 0.75,  camOffset = 0.15, textureof = 'decals_1'},
    {label = 'arms',                  name = 'arms',          value = 0,  min = 0,  zoomOffset = 0.75,  camOffset = 0.15},
    {label = 'pants_1',               name = 'pants_1',       value = 0,  min = 0,  zoomOffset = 0.8,   camOffset = -0.5},
    {label = 'pants_2',               name = 'pants_2',       value = 0,  min = 0,  zoomOffset = 0.8,   camOffset = -0.5, textureof = 'pants_1'},
    {label = 'shoes_1',               name = 'shoes_1',       value = 0,  min = 0,  zoomOffset = 0.8,   camOffset = -0.8},
    {label = 'shoes_2',               name = 'shoes_2',       value = 0,  min = 0,  zoomOffset = 0.8,   camOffset = -0.8, textureof = 'shoes_1'},
    {label = 'mask_1',                name = 'mask_1',        value = 0,  min = 0,  zoomOffset = 0.6,   camOffset = 0.65},
    {label = 'mask_2',                name = 'mask_2',        value = 0,  min = 0,  zoomOffset = 0.6,   camOffset = 0.65, textureof = 'mask_1'},
    {label = 'bproof_1',              name = 'bproof_1',      value = 0,  min = 0,  zoomOffset = 0.75,  camOffset = 0.15},
    {label = 'bproof_2',              name = 'bproof_2',      value = 0,  min = 0,  zoomOffset = 0.75,  camOffset = 0.15, textureof = 'bproof_1'},
    {label = 'chain_1',               name = 'chain_1',       value = 0,  min = 0,  zoomOffset = 0.6,   camOffset = 0.65},
    {label = 'chain_2',               name = 'chain_2',       value = 0,  min = 0,  zoomOffset = 0.6,   camOffset = 0.65, textureof = 'chain_1'},
    {label = 'helmet_1',              name = 'helmet_1',      value = -1, min = -1, zoomOffset = 0.6,   camOffset = 0.65, componentId = 0 },
    {label = 'helmet_2',              name = 'helmet_2',      value = 0,  min = 0,  zoomOffset = 0.6,   camOffset = 0.65, textureof = 'helmet_1'},
    {label = 'glasses_1',             name = 'glasses_1',     value = -1,  min = -1,  zoomOffset = 0.6,   camOffset = 0.65},
    {label = 'glasses_2',             name = 'glasses_2',     value = 0,  min = 0,  zoomOffset = 0.6,   camOffset = 0.65, textureof = 'glasses_1'},
    {label = 'bag',                   name = 'bags_1',        value = 0,  min = 0,  zoomOffset = 0.75,  camOffset = 0.15},
    {label = 'bag_color',             name = 'bags_2',        value = 0,  min = 0,  zoomOffset = 0.75,  camOffset = 0.15, textureof = 'bags_1'}
}
local Character   = {}
for i=1, #Components, 1 do
    Character[Components[i].name] = Components[i].value
end
  

RegisterNetEvent('ba_skin:maxVals')
AddEventHandler('ba_skin:maxVals', function()
    local playerPed = GetPlayerPed(-1)
    local data = {
        {name = 'face', count = 45},
        {name = 'skin', count = 45},
        {name = 'age_1', count = GetNumHeadOverlayValues(3)-1},
        {name = 'age_2', count = 10},
        {name = 'beard_1', count = GetNumHeadOverlayValues(1)-1},
        {name = 'beard_2', count = 10},
        {name = 'beard_3', count = GetNumHairColors()-1,},
        {name = 'beard_4', count = GetNumHairColors()-1,},
        {name = 'hair_1', count = GetNumberOfPedDrawableVariations(playerPed, 2) - 1},
        {name = 'hair_2', count = GetNumberOfPedTextureVariations(playerPed, 2, Character['hair_1']) - 1},
        {name = 'hair_color_1', count = GetNumHairColors()-1},
        {name = 'hair_color_2', count = GetNumHairColors()-1},
        {name = 'eyebrows_1', count = GetNumHeadOverlayValues(2)-1},
        {name = 'eyebrows_2', count = 10},
        {name = 'eyebrows_3', count = GetNumHairColors()-1},
        {name = 'eyebrows_4', count = GetNumHairColors()-1},
        {name = 'makeup_1', count = GetNumHeadOverlayValues(4)-1},
        {name = 'makeup_2', count = 10},
        {name = 'makeup_3', count = GetNumHairColors()-1},
        {name = 'makeup_4', count = GetNumHairColors()-1},
        {name = 'lipstick_1', count = GetNumHeadOverlayValues(8)-1},
        {name = 'lipstick_2', count = 10},
        {name = 'lipstick_3', count = GetNumHairColors()-1},
        {name = 'lipstick_4', count = GetNumHairColors()-1},
        {name = 'ears_1', count = GetNumberOfPedPropDrawableVariations(playerPed, 1) - 1},
        {name = 'ears_2', count = GetNumberOfPedPropTextureVariations(playerPed, 1, Character['ears_1'] - 1)},
        {name = 'tshirt_1', count = GetNumberOfPedDrawableVariations(playerPed, 8) - 1},
        {name = 'tshirt_2', count = GetNumberOfPedTextureVariations(playerPed, 8, Character['tshirt_1']) - 1},
        {name = 'torso_1', count = GetNumberOfPedDrawableVariations(playerPed, 11) - 1},
        {name = 'torso_2', count = GetNumberOfPedTextureVariations(playerPed, 11, Character['torso_1']) - 1},
        {name = 'decals_1', count = GetNumberOfPedDrawableVariations(playerPed, 10) - 1},
        {name = 'decals_2', count = GetNumberOfPedTextureVariations(playerPed, 10, Character['decals_1']) - 1},
        {name = 'arms', count = GetNumberOfPedDrawableVariations(playerPed, 3) - 1},
        {name = 'pants_1', count = GetNumberOfPedDrawableVariations(playerPed, 4) - 1},
        {name = 'pants_2', count = GetNumberOfPedTextureVariations(playerPed, 4, Character['pants_1']) - 1},
        {name = 'shoes_1', count = GetNumberOfPedDrawableVariations(playerPed, 6) - 1},
        {name = 'shoes_2', count = GetNumberOfPedTextureVariations(playerPed, 6, Character['shoes_1']) - 1},
        {name = 'mask_1', count = GetNumberOfPedDrawableVariations(playerPed, 1) - 1},
        {name = 'mask_2', count = GetNumberOfPedTextureVariations(playerPed, 1, Character['mask_1']) - 1},
        {name = 'bproof_1', count = GetNumberOfPedDrawableVariations(playerPed, 9) - 1},
        {name = 'bproof_2', count = GetNumberOfPedTextureVariations(playerPed, 9, Character['bproof_1']) - 1},
        {name = 'chain_1', count = GetNumberOfPedDrawableVariations(playerPed, 7) - 1},
        {name = 'chain_2', count = GetNumberOfPedTextureVariations(playerPed, 7, Character['chain_1']) - 1},
        {name = 'bags_1', count = GetNumberOfPedDrawableVariations(playerPed, 5) - 1},
        {name = 'bags_2', count = GetNumberOfPedTextureVariations(playerPed, 5, Character['bags_1']) - 1},
        {name = 'helmet_1', count = GetNumberOfPedPropDrawableVariations(playerPed, 0) - 1},
        {name = 'helmet_2', count = GetNumberOfPedPropTextureVariations(playerPed, 0, Character['helmet_1']) - 1},
        {name = 'glasses_1', count = GetNumberOfPedPropDrawableVariations(playerPed, 1) - 1},
        {name = 'glasses_2', count = GetNumberOfPedPropTextureVariations   (playerPed, 1, Character['glasses_1'] - 1)},
    }
    for i=1, #data, 1 do
        SendNUIMessage({
            type = 'item',
            name = data[i].name,
            count = data[i].count
        })
    end
end)

RegisterNetEvent('ba_skin:openSkinRegister')
AddEventHandler('ba_skin:openSkinRegister', function()
    TriggerEvent('ba_skin:maxVals')
    TriggerEvent('ba_skin:skinDef', '0')
    SetNuiFocus(true, true)
    SendNUIMessage({
        type = 'openr'
    })
    print('dooone')
end)

RegisterCommand('skin', function(source, args, rawCommand)
    TriggerEvent('ba_skin:openSkinRegister')
end)

RegisterNUICallback('skinnem', function(data, cb)
    print('DefaultSkin')
    local sex = data.sex
    print(sex)
    TriggerEvent('ba_skin:skinDef', sex)
    cb({"ok"})
end)

RegisterNUICallback('skinr', function(data, cb)
    --[[ local kulso = {
        sex          = 332,
        face         = data.face,
        skin         = data.skin,
        beard_1      = data.beard_1,
        beard_2      = data.beard_2,
        beard_3      = data.beard_3,
        beard_4      = data.beard_4,
        hair_1       = data.hair_1,
        hair_2       = data.hair_2,
        hair_color_1 = data.hair_color_1,
        hair_color_2 = data.hair_color_2,
        eyebrows_1   = data.eyebrows_1,
        eyebrows_2   = data.eyebrows_2,
        eyebrows_3   = data.eyebrows_3,
        eyebrows_4   = data.eyebrows_4,
        lipstick_1   = data.lipstick_1,
        lipstick_2   = data.lipstick_2,
        lipstick_3   = data.lipstick_3,
        lipstick_4   = data.lipstick_4,
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
        helmet_1     = 0,
        helmet_2     = 0,
        glasses_1    = 0,
        glasses_2    = 0,
    } ]]
    karakter = {
        face         = data.face,
        skin         = data.skin,
        age_1        = data.age_1,
        age_2        = data.age_2,
        beard_1      = data.beard_1,
        beard_2      = data.beard_2,
        beard_3      = data.beard_3,
        beard_4      = data.beard_4,
        hair_1       = data.hair_1,
        hair_2       = data.hair_2,
        hair_color_1 = data.hair_color_1,
        hair_color_2 = data.hair_color_2,
        eyebrows_1   = data.eyebrows_1,
        eyebrows_2   = data.eyebrows_2,
        eyebrows_3   = data.eyebrows_3,
        eyebrows_4   = data.eyebrows_4,
        makeup_1     = data.makeup_1,
        makeup_2     = data.makeup_2,
        makeup_3     = data.makeup_3,
        makeup_4     = data.makeup_4,
        lipstick_1   = data.lipstick_1,
        lipstick_2   = data.lipstick_2,
        lipstick_3   = data.lipstick_3,
        lipstick_4   = data.lipstick_4,
        tshirt_1     = data.tshirt_1,
        tshirt_2     = data.tshirt_2,
        torso_1      = data.torso_1,
        torso_2      = data.torso_2,
        decals_1     = data.decals_1,
        decals_2     = data.decals_2,
        ears_1       = data.ears_1,
        ears_2       = data.ears_2,
        arms         = data.arms,
        pants_1      = data.pants_1,
        pants_2      = data.pants_2,
        shoes_1      = data.shoes_1,
        shoes_2      = data.shoes_2,
        mask_1       = data.mask_1,
        mask_2       = data.mask_2,
        bproof_1     = data.bproof_1,
        bproof_2     = data.bproof_2,
        chain_1      = data.chain_1,
        chain_2      = data.chain_2,
        helmet_1     = data.helmet_1,
        helmet_2     = data.helmet_2,
        glasses_1    = data.glasses_1,
        glasses_2    = data.glasses_2,
    }

    TriggerEvent('ba_skin:maxVals')
    TriggerEvent('ba_skin:skinrReal')
    
--[[         tshirt_1     = 0
        tshirt_2     = 0
        torso_1      = 0
        torso_2      = 0
        decals_1     = 0
        decals_2     = 0
        arms         = 0
        pants_1      = 0
        pants_2      = 0
        shoes_1      = 0
        shoes_2      = 0
        mask_1       = 0
        mask_2       = 0
        bproof_1     = 0
        bproof_2     = 0
        chain_1      = 0
        chain_2      = 0
        helmet_1     = -1
        helmet_2     = 0
        glasses_1    = 0
        glasses_2    = 0 ]]

    --[[ TriggerEvent('ba_skin:maxVals') ]]
    --[[ SetPedHeadBlendData     (playerPed, face, face, face, skin, skin, skin, 1.0, 1.0, 1.0, true)
  
    SetPedHairColor         (playerPed,       hair_color_1, hair_color_2)-- Hair Color
    SetPedHeadOverlay       (playerPed, 3,    age_1, (age_2 / 10) + 0.0)-- Age + opacity
    SetPedHeadOverlay       (playerPed, 1,    beard_1, (beard_2 / 10) + 0.0)-- Beard + opacity
    SetPedHeadOverlay       (playerPed, 2,    eyebrows_1, (eyebrows_2 / 10) + 0.0)-- Eyebrows + opacity
    SetPedHeadOverlay       (playerPed, 4,    makeup_1, (makeup_2 / 10) + 0.0)-- Makeup + opacity
    SetPedHeadOverlay       (playerPed, 8,    lipstick_1, (lipstick_2 / 10) + 0.0)-- Lipstick + opacity
    SetPedComponentVariation(playerPed, 2,    hair_1, hair_2, 2)-- Hair
    SetPedHeadOverlayColor  (playerPed, 1, 1, beard_3, beard_4)-- Beard Color
    SetPedHeadOverlayColor  (playerPed, 2, 1, eyebrows_3, eyebrows_4)-- Eyebrows Color
    SetPedHeadOverlayColor  (playerPed, 4, 1, makeup_3, makeup_4)-- Makeup Color
    SetPedHeadOverlayColor  (playerPed, 8, 1, lipstick_3, lipstick_4)-- Lipstick Color
   ]]
   --[[  if Character['ears_1'] == -1 then
      ClearPedProp(playerPed, 2)
    else
      SetPedPropIndex(playerPed, 2, Character['ears_1'], Character['ears_2'], 2)  -- Ears Accessories
    end
  
    SetPedComponentVariation(playerPed, 8,  Character['tshirt_1'],  Character['tshirt_2'], 2)     -- Tshirt
    SetPedComponentVariation(playerPed, 11, Character['torso_1'],   Character['torso_2'], 2)      -- torso parts
    SetPedComponentVariation(playerPed, 3,  Character['arms'], 0, 2)                              -- torso
    SetPedComponentVariation(playerPed, 10, Character['decals_1'],  Character['decals_2'], 2)     -- decals
    SetPedComponentVariation(playerPed, 4,  Character['pants_1'],   Character['pants_2'], 2)      -- pants
    SetPedComponentVariation(playerPed, 6,  Character['shoes_1'],   Character['shoes_2'], 2)      -- shoes
    SetPedComponentVariation(playerPed, 1,  Character['mask_1'],    Character['mask_2'], 2)       -- mask
    SetPedComponentVariation(playerPed, 9,  Character['bproof_1'],  Character['bproof_2'], 2)     -- bulletproof
    SetPedComponentVariation(playerPed, 7,  Character['chain_1'],   Character['chain_2'], 2)      -- chain
    SetPedComponentVariation(playerPed, 5,  Character['bags_1'],    Character['bags_2'], 2)       -- Bag
  
    if Character['helmet_1'] == -1 then
      ClearPedProp(playerPed, 0)
    else
      SetPedPropIndex(playerPed, 0, Character['helmet_1'], Character['helmet_2'], 2)  -- Helmet
    end
  
    SetPedPropIndex(playerPed, 1, Character['glasses_1'], Character['glasses_2'], 2)  -- Glasses ]]
    cb({"ok"})
end)

local kulso = {}

RegisterNetEvent('ba_skin:skinrReal')
AddEventHandler('ba_skin:skinrReal', function()
    local playerPed = GetPlayerPed(-1)
    --[[ for i=1, #kinezet, 1 do
        kulso[kinezet[i].name] = tonumber(kinezet[i].value)
        print(kinezet[i].name .. ', ' .. tonumber(kinezet[i].value))
    end ]]
    for k,v in pairs(karakter) do
        kulso[k] = tonumber(v)
    end
    SetPedHeadBlendData(playerPed, kulso['face'], kulso['face'], kulso['face'], kulso['skin'], kulso['skin'], kulso['skin'], 1.0, 1.0, 1.0, true)
  
    SetPedHairColor(playerPed,kulso['hair_color_1'],kulso['hair_color_2'])-- Hair Color
    SetPedHeadOverlay(playerPed, 3,kulso['age_1'],(kulso['age_2'] / 10) + 0.0)-- Age + opacity
    SetPedHeadOverlay(playerPed, 1,kulso['beard_1'],(kulso['beard_2'] / 10) + 0.0)-- Beard + opacity
    SetPedHeadOverlay(playerPed, 2,kulso['eyebrows_1'],(kulso['eyebrows_2'] / 10) + 0.0) -- Eyebrows + opacity
    SetPedHeadOverlay(playerPed, 4,kulso['makeup_1'],(kulso['makeup_2'] / 10) + 0.0)-- Makeup + opacity
    SetPedHeadOverlay(playerPed, 8,kulso['lipstick_1'],(kulso['lipstick_2'] / 10) + 0.0)-- Lipstick + opacity
    SetPedComponentVariation(playerPed, 2,kulso['hair_1'],kulso['hair_2'], 2)-- Hair
    SetPedHeadOverlayColor(playerPed, 1, 1, kulso['beard_3'],kulso['beard_4'])-- Beard 
    SetPedHeadOverlayColor(playerPed, 2, 1, kulso['eyebrows_3'],kulso['eyebrows_4'])-- Eyebrows Color
    SetPedHeadOverlayColor(playerPed, 4, 1, kulso['makeup_3'],kulso['makeup_4'])-- Makeup Color
    SetPedHeadOverlayColor(playerPed, 8, 1, kulso['lipstick_3'],kulso['lipstick_4'])-- Lipstick Color

    if kulso['ears_1'] == -1 then
        ClearPedProp(playerPed, 2)
      else
        SetPedPropIndex(playerPed, 2, kulso['ears_1'], kulso['ears_2'], 2)  -- Ears Accessories
      end
    
      SetPedComponentVariation(playerPed, 8,  kulso['tshirt_1'],kulso['tshirt_2'], 2)-- Tshirt
      SetPedComponentVariation(playerPed, 11, kulso['torso_1'],kulso['torso_2'], 2)-- torso parts
      SetPedComponentVariation(playerPed, 3,  kulso['arms'], 0, 2)-- torso
      SetPedComponentVariation(playerPed, 10, kulso['decals_1'],kulso['decals_2'], 2)-- decals
      SetPedComponentVariation(playerPed, 4,  kulso['pants_1'],kulso['pants_2'], 2)-- pants
      SetPedComponentVariation(playerPed, 6,  kulso['shoes_1'],kulso['shoes_2'], 2)-- shoes
      SetPedComponentVariation(playerPed, 1,  kulso['mask_1'],kulso['mask_2'], 2)-- mask
      SetPedComponentVariation(playerPed, 9,  kulso['bproof_1'],kulso['bproof_2'], 2)-- bulletproof
      SetPedComponentVariation(playerPed, 7,  kulso['chain_1'],kulso['chain_2'], 2)-- chain
      SetPedComponentVariation(playerPed, 5,  kulso['bags_1'],kulso['bags_2'], 2)-- Bag
    
      if kulso['helmet_1'] == -1 then
        ClearPedProp(playerPed, 0)
      else
        SetPedPropIndex(playerPed, 0, kulso['helmet_1'], kulso['helmet_2'], 2)  -- Helmet
      end
    
      SetPedPropIndex(playerPed, 1, kulso['glasses_1'], kulso['glasses_2'], 2)  -- Glasses
    
    print('fasza')
end)

RegisterNetEvent('ba_skin:skinDef')
AddEventHandler('ba_skin:skinDef', function(nem)
    --[[ local kinezet1 = {
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
    if nem == '1' then 
        local model = 'mp_f_freemode_01'
        if IsModelInCdimage(model) and IsModelValid(model) then
            RequestModel(model)
            while not HasModelLoaded(model) do
                Citizen.Wait(0)
            end
            SetPlayerModel(PlayerId(), model)
            SetModelAsNoLongerNeeded(model)
            TriggerEvent('skinchanger:loadSkin', kinezet1)
        end
    elseif nem == '0' then
        local model = 'mp_m_freemode_01'
        if IsModelInCdimage(model) and IsModelValid(model) then
            RequestModel(model)
            while not HasModelLoaded(model) do
                Citizen.Wait(0)
            end
            SetPlayerModel(PlayerId(), model)
            SetModelAsNoLongerNeeded(model)
            TriggerEvent('skinchanger:loadSkin', kinezet1)
        end
    else
        print('nemtom')
    end 
end)

RegisterNUICallback('registerskin', function(data, cb)
    --[[ local karakter = {
        face         = data.face,
        skin         = data.skin,
        beard_1      = data.beard_1,
        beard_2      = data.beard_2,
        beard_3      = data.beard_3,
        beard_4      = data.beard_4,
        hair_1       = data.hair_1,
        hair_2       = data.hair_2,
        hair_color_1 = data.hair_color_1,
        hair_color_2 = data.hair_color_2,
        eyebrows_1   = data.eyebrows_1,
        eyebrows_2   = data.eyebrows_2,
        eyebrows_3   = data.eyebrows_3,
        eyebrows_4   = data.eyebrows_4,
        lipstick_1   = data.lipstick_1,
        lipstick_2   = data.lipstick_2,
        lipstick_3   = data.lipstick_3,
        lipstick_4   = data.lipstick_4,
        tshirt_1     = data.tshirt_1,
        tshirt_2     = data.tshirt_2,
        torso_1      = data.torso_1,
        torso_2      = data.torso_2,
        decals_1     = data.decals_1,
        decals_2     = data.decals_2,
        ears_1       = data.ears_1,
        ears_2       = data.ears_2,
        arms         = data.arms,
        pants_1      = data.pants_1,
        pants_2      = data.pants_2,
        shoes_1      = data.shoes_1,
        shoes_2      = data.shoes_2,
        mask_1       = data.mask_1,
        mask_2       = data.mask_2,
        bproof_1     = data.bproof_1,
        bproof_2     = data.bproof_2,
        chain_1      = data.chain_1,
        chain_2      = data.chain_2,
        helmet_1     = data.helmet_1,
        helmet_2     = data.helmet_2,
        glasses_1    = data.glasses_1,
        glasses_2    = data.glasses_2,
    } ]]
    SetNuiFocus(false, false)
    SendNUIMessage({
        type = 'closer'
    })
    TriggerEvent('skinchanger:getSkin', function(skin)
        print(json.encode(skin))
        TriggerServerEvent('ba_skin:registerskin', skin)
    end)

end)
--[[ local karakter = {
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
    ears_1       = -1,
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
 ]]
RegisterNetEvent('ba_skin:loadskin')
AddEventHandler('ba_skin:loadskin', function(skimo)
    TriggerEvent('skinchanger:loadSkin', skimo)
    print('fasza')
end)
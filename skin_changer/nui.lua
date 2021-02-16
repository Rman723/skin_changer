local display = false
local hat = 0
local hattexture = 0
local glasses = 0
local glassestexture = 0
local ear = 0
local eartexture = 0
local mask = 0
local masktexture = 0
local hair = 0
local hairtexture = 0
local arms = 0
local armtexture = 0
local arms2 = 0
local arm2texture = 0
local pant = 0
local panttexture = 0
local shoes = 0
local shoestexture = 0
local shirt2 = 0
local shirt2texture = 0
local shirt = 0
local shirttexture = 0

RegisterCommand("nui", function(source, args)
    SetDisplay(not display)
    TriggerEvent('values',"hatval", hat)
    TriggerEvent('values',"hattextval", hattexture)
    TriggerEvent('values',"glassesval", glasses)
    TriggerEvent('values',"glassestextval", glassestexture)
    TriggerEvent('values',"earval", ear)
    TriggerEvent('values',"eartextval", eartexture)
    TriggerEvent('values',"maskval", mask)
    TriggerEvent('values',"masktextval",masktexture)
    TriggerEvent('values',"hairval", hair)
    TriggerEvent('values',"hairtextval",hairtexture)
    TriggerEvent('values',"armval", arms)
    TriggerEvent('values',"armtextval",armtexture)
    TriggerEvent('values',"arm2val", arms2)
    TriggerEvent('values',"arm2textval",arm2texture)
    TriggerEvent('values',"pantval", pant)
    TriggerEvent('values',"panttextval",panttexture)
    TriggerEvent('values',"shoesval", shoes)
    TriggerEvent('values',"shoestextval",shoestexture)
    TriggerEvent('values',"shirt2val", shirt2)
    TriggerEvent('values',"shirt2textval",shirt2texture)
    TriggerEvent('values',"shirtval", shirt)
    TriggerEvent('values',"shirttextval",shirttexture)
end)

--very important cb 
RegisterNUICallback("exit", function(data)
    SetDisplay(false)
end)
------HAT STUFF-----
RegisterNUICallback("hat", function(data)
    local ped = GetPlayerPed(-1)
    if data.txt == 'plushat' then--Hat Stuff
        if hat >= 133 then
            chat("Cant Go Highter", {255,0,0})
        else
            hat = hat+1
            hattexture = 0
            SetPedPropIndex(ped, 0, hat, 3, true)
            TriggerEvent('values',"hatval", hat)
        end
    elseif data.txt == 'minushat' then
        if hat <= 0 then
            chat("Cant Go Lower", {255,0,0})
        else
            hat = hat-1
            hattexture = 0
            SetPedPropIndex(ped, 0, hat, 3, true)
            TriggerEvent('values',"hatval", hat)
        end
    elseif data.txt == "plushattext" then 
        if hattexture >= 10 then
            chat("Cant Go Highter", {255,0,0})
        else
            hattexture = hattexture+1
            SetPedPropIndex(ped, 0, hat, hattexture, true)
            TriggerEvent('values',"hattextval", hattexture)
        end
    elseif data.txt == "minushattext" then 
        if hattexture <= 0 then
            chat("Cant Go Lower", {255,0,0})
        else
            hattexture = hattexture-1
            SetPedPropIndex(ped, 0, hat, hattexture, true)
            TriggerEvent('values',"hattextval", hattexture)
        end
    elseif data.txt == "plusglasses" then--Glasses Stuff
        if glasses >= 27 then
            chat("Cant Go Highter", {255,0,0})
        else
            glasses = glasses+1
            glassestexture = 0
            SetPedPropIndex(ped, 1, glasses, glassestexture, true)
            TriggerEvent('values',"hattextval", hattexture)
        end
    elseif data.txt == "minusglasses" then
        if glasses <= 0 then
            chat("Cant Go Lower", {255,0,0})
        else
            glasses = glasses-1
            glassestexture = 0
            SetPedPropIndex(ped, 1, glasses, glassestexture, true)
            TriggerEvent('values',"hattextval", hattexture)
        end
    elseif data.txt == "plusglassestext" then
        if glassestexture >= 10 then
            chat("Cant Go Highter", {255,0,0})
        else
            glassestexture = glassestexture+1
            SetPedPropIndex(ped, 1, glasses, glassestexture, true)
            TriggerEvent('values',"glassestextval", glassestexture)
        end
    elseif data.txt == "minusglassestext" then  
        if glassestexture <= 0 then
            chat("Cant Go Lower", {255,0,0})
        else
            glassestexture = glassestexture-1
            SetPedPropIndex(ped, 1, glasses, glassestexture, true)
            TriggerEvent('values',"glassestextval", glassestexture)
        end
    elseif data.txt == "plusear" then--Ear Stuff
        if ear >= 100 then
            chat("Cant Go Highter", {255,0,0})
        else
            ear = ear+1
            eartexture = 0
            SetPedPropIndex(ped, 2, ear, eartexture, true)
            TriggerEvent('values',"earval", ear)
        end
    elseif data.txt == "minusear" then  
        if ear <= 0 then
            chat("Cant Go Lower", {255,0,0})
        else
            ear = ear-1
            eartexture = 0
            SetPedPropIndex(ped, 2, ear, eartexture, true)
            TriggerEvent('values',"earval", ear)
        end
    elseif data.txt == "pluseartext" then
        if eartexture >= 10 then
            chat("Cant Go Highter", {255,0,0})
        else 
            eartexture = eartexture+1
            SetPedPropIndex(ped, 2, ear, eartexture, true)
            TriggerEvent('values',"eartextval", eartexture)
        end
    elseif data.txt == "minuseartext" then
        if eartexture <= 0 then
            chat("Cant Go Lower", {255,0,0})
        else
            eartexture = eartexture-1
            SetPedPropIndex(ped, 2, ear, eartexture, true)
            TriggerEvent('values',"eartextval", eartexture)
        end
    elseif data.txt == 'plusmask' then--Mask Stuff
        if mask >= 147 then
            chat("Cant Go Highter", {255,0,0})
        else
            mask = mask+1
            masktexture = 0
            SetPedComponentVariation(ped, 1, mask, masktexture, 0)
            TriggerEvent('values',"maskval", mask)
        end
    elseif data.txt == 'minusmask' then
        if mask <= 0 then
            chat("Cant Go Lower", {255,0,0})
        else
            mask = mask-1
            masktexture = 0
            SetPedComponentVariation(ped, 1, mask, masktexture, 0)
            TriggerEvent('values',"maskval", mask)
        end
    elseif data.txt == 'plusmasktext' then
        if masktexture >= 20 then
          chat("Cant Go Higher", {255,0,0})
        else
            masktexture = masktexture+1
            SetPedComponentVariation(ped, 1, mask, masktexture, 0)
            TriggerEvent('values',"masktextval",masktexture)
        end
    elseif data.txt == 'minusmasktext' then
        if masktexture <= 0 then
            chat("Cant Go Lower", {255,0,0})
        else
            masktexture = masktexture-1
            SetPedComponentVariation(ped, 1, mask, masktexture, 0)
            TriggerEvent('values',"masktextval",masktexture)
        end
    elseif data.txt == 'plushair' then--Hair Stuff
        if hair >= 73 then
            chat("Cant Go Highter", {255,0,0})
        else
            hair = hair+1
            hairtexture = 0
            SetPedComponentVariation(ped, 2, hair, hairtexture, 0)
            TriggerEvent('values',"hairval", hair)
        end
    elseif data.txt == 'minushair' then
        if hair <= 0 then
            chat("Cant Go Lower", {255,0,0})
        else
            hair = hair-1
            hairtexture = 0
            SetPedComponentVariation(ped, 2, hair, hairtexture, 0)
            TriggerEvent('values',"hairval", hair)
        end
    elseif data.txt == 'plushairtext' then
        if hairtexture >= 6 then
          chat("Cant Go Higher", {255,0,0})
        else
            hairtexture = hairtexture+1
            SetPedComponentVariation(ped, 2, hair, hairtexture, 0)
            TriggerEvent('values',"hairtextval",hairtexture)
        end
    elseif data.txt == 'minushairtext' then
        if hairtexture <= 0 then
            chat("Cant Go Lower", {255,0,0})
        else
            hairtexture = hairtexture-1
            SetPedComponentVariation(ped, 2, hair, hairtexture, 0)
            TriggerEvent('values',"hairtextval",hairtexture)
        end
    elseif data.txt == 'plusarms' then--Arms Stuff
        if arms >= 73 then
            chat("Cant Go Highter", {255,0,0})
        else
            arms = arms+1
            armtexture = 0
            SetPedComponentVariation(ped, 3, arms, armtexture, 0)
            TriggerEvent('values',"armval", arms)
        end
    elseif data.txt == 'minusarm' then
        if arms <= 0 then
            chat("Cant Go Lower", {255,0,0})
        else
            arms = arms-1
            armtexture = 0
            SetPedComponentVariation(ped, 3, arms, armtexture, 0)
            TriggerEvent('values',"armval", arms)
        end
    elseif data.txt == 'plusarmtext' then
        if armtexture >= 6 then
          chat("Cant Go Higher", {255,0,0})
        else
            armtexture = armtexture+1
            SetPedComponentVariation(ped, 3, arms, armtexture, 0)
            TriggerEvent('values',"armtextval",armtexture)
        end
    elseif data.txt == 'minusarmtext' then
        if armtexture <= 0 then
            chat("Cant Go Lower", {255,0,0})
        else
            armtexture = armtexture-1
            SetPedComponentVariation(ped, 3, arms, armtexture, 0)
            TriggerEvent('values',"armtextval",armtexture)
        end
    elseif data.txt == 'plusarms2' then--Bags Stuff
        if arms2 >= 73 then
            chat("Cant Go Highter", {255,0,0})
        else
            arms2 = arms2+1
            arm2texture = 0
            SetPedComponentVariation(ped, 5, arms2, arm2texture, 0)
            TriggerEvent('values',"arm2val", arms2)
        end
    elseif data.txt == 'minusarm2' then
        if arms2 <= 0 then
            chat("Cant Go Lower", {255,0,0})
        else
            arms2 = arms2-1
            arm2texture = 0
            SetPedComponentVariation(ped, 5, arms2, arm2texture, 0)
            TriggerEvent('values',"arm2val", arms)
        end
    elseif data.txt == 'plusarm2text' then
        if arm2texture >= 6 then
          chat("Cant Go Higher", {255,0,0})
        else
            arm2texture = arm2texture+1
            SetPedComponentVariation(ped, 5, arm2s, arm2texture, 0)
            TriggerEvent('values',"arm2textval",arm2texture)
        end
    elseif data.txt == 'minusarm2text' then
        if arm2texture <= 0 then
            chat("Cant Go Lower", {255,0,0})
        else
            arm2texture = arm2texture-1
            SetPedComponentVariation(ped, 5, arms2, arm2texture, 0)
            TriggerEvent('values',"arm2textval",arm2texture)
        end
    elseif data.txt == 'pluspants' then--Pants Stuff
        if pant >= 73 then
            chat("Cant Go Highter", {255,0,0})
        else
            pant = pant+1
            panttexture = 0
            SetPedComponentVariation(ped, 4, pant, panttexture, 0)
            TriggerEvent('values',"pantval", pant)
        end
    elseif data.txt == 'minuspants' then
        if pant <= 0 then
            chat("Cant Go Lower", {255,0,0})
        else
            pant = pant-1
            panttexture = 0
            SetPedComponentVariation(ped, 4, pant, panttexture, 0)
            TriggerEvent('values',"pantval", pant)
        end
    elseif data.txt == 'pluspanttext' then
        if panttexture >= 6 then
          chat("Cant Go Higher", {255,0,0})
        else
            panttexture = panttexture+1
            SetPedComponentVariation(ped, 4, pant, panttexture, 0)
            TriggerEvent('values',"panttextval",panttexture)
        end
    elseif data.txt == 'minuspanttext' then
        if panttexture <= 0 then
            chat("Cant Go Lower", {255,0,0})
        else
            panttexture = panttexture-1
            SetPedComponentVariation(ped, 4, pant, panttexture, 0)
            TriggerEvent('values',"panttextval",panttexture)
        end
    elseif data.txt == 'plusshoes' then--Shoes Stuff
        if shoes >= 73 then
            chat("Cant Go Highter", {255,0,0})
        else
            shoes = shoes+1
            shoestexture = 0
            SetPedComponentVariation(ped, 6, shoes, shoestexture, 0)
            TriggerEvent('values',"shoesval", shoes)
        end
    elseif data.txt == 'minusshoes' then
        if shoes <= 0 then
            chat("Cant Go Lower", {255,0,0})
        else
            shoes = shoes-1
            shoestexture = 0
            SetPedComponentVariation(ped, 6, shoes, shoestexture, 0)
            TriggerEvent('values',"shoesval", shoes)
        end
    elseif data.txt == 'plusshoestext' then
        if shoestexture >= 16 then
          chat("Cant Go Higher", {255,0,0})
        else
            shoestexture = shoestexture+1
            SetPedComponentVariation(ped, 6, shoes, shoestexture, 0)
            TriggerEvent('values',"shoestextval",shoestexture)
        end
    elseif data.txt == 'minusshoestext' then
        if shoestexture <= 0 then
            chat("Cant Go Lower", {255,0,0})
        else
            shoestexture = shoestexture-1
            SetPedComponentVariation(ped, 6, shoes, shoestexture, 0)
            TriggerEvent('values',"shoestextval",shoestexture)
        end
    elseif data.txt == 'plusshirt2' then--Shirt2 Stuff
        if shirt2 >= 73 then
            chat("Cant Go Highter", {255,0,0})
        else
            shirt2 = shirt2+1
            shirt2texture = 0
            SetPedComponentVariation(ped, 8, shirt2, shirt2texture, 0)
            TriggerEvent('values',"shirt2val", shirt2)
        end
    elseif data.txt == 'minusshirt2' then
        if shirt2 <= 0 then
            chat("Cant Go Lower", {255,0,0})
        else
            shirt2 = shirt2-1
            shirt2texture = 0
            SetPedComponentVariation(ped, 8, shirt2, shirt2texture, 0)
            TriggerEvent('values',"shirt2val", shirt2)
        end
    elseif data.txt == 'plusshirt2text' then
        if shirt2texture >= 16 then
          chat("Cant Go Higher", {255,0,0})
        else
            shirt2texture = shirt2texture+1
            SetPedComponentVariation(ped, 8, shirt2, shirt2texture, 0)
            TriggerEvent('values',"shirt2textval",shirt2texture)
        end
    elseif data.txt == 'minusshirt2text' then
        if shirt2texture <= 0 then
            chat("Cant Go Lower", {255,0,0})
        else
            shirt2texture = shirt2texture-1
            SetPedComponentVariation(ped, 8, shirt2, shirt2texture, 0)
            TriggerEvent('values',"shirt2textval",shirt2texture)
        end


    elseif data.txt == 'plusshirt' then--Shirt Stuff
        if shirt >= 73 then
            chat("Cant Go Highter", {255,0,0})
        else
            shirt = shirt+1
            shirttexture = 0
            SetPedComponentVariation(ped, 11, shirt, shirttexture, 0)
            TriggerEvent('values',"shirtval", shirt)
        end
    elseif data.txt == 'minusshirt' then
        if shirt <= 0 then
            chat("Cant Go Lower", {255,0,0})
        else
            shirt = shirt-1
            shirttexture = 0
            SetPedComponentVariation(ped, 11, shirt, shirttexture, 0)
            TriggerEvent('values',"shirtval", shirt)
        end
    elseif data.txt == 'plusshirttext' then
        if shirttexture >= 16 then
          chat("Cant Go Higher", {255,0,0})
        else
            shirttexture = shirttexture+1
            SetPedComponentVariation(ped, 11, shirt, shirttexture, 0)
            TriggerEvent('values',"shirttextval",shirttexture)
        end
    elseif data.txt == 'minusshirttext' then
        if shirttexture <= 0 then
            chat("Cant Go Lower", {255,0,0})
        else
            shirttexture = shirttexture-1
            SetPedComponentVariation(ped, 11, shirt, shirttexture, 0)
            TriggerEvent('values',"shirttextval",shirttexture)
        end
    end
    
end)



-- HAIR = SetPedComponentVariation(ped, 2, mask, masktexture, 0)--
-- Arms = SetPedComponentVariation(ped, 3, mask, masktexture, 0)--
-- Pants = SetPedComponentVariation(ped, 4, 1, 1, 0)--
-- Arms2 = SetPedComponentVariation(ped, 5,1,1, 2)--	
-- Shoes = SetPedComponentVariation(ped, 6,2,1, 2)--	
-- Shirt2 = SetPedComponentVariation(ped, 8,2,1, 2)--	
-- Kevlar = SetPedComponentVariation(ped, 9,2,1, 2)	
-- Shirt = SetPedComponentVariation(ped, 11,0,1, 2)



RegisterNetEvent('values')
AddEventHandler('values', function(data1, data2)
    SendNUIMessage({
        type = data1,
        value = data2,
    })
end)



---Remove Stuff---

RegisterNUICallback("remove", function(data)
    local ped = GetPlayerPed(-1)
    if data.txt == "removeglasses" then 
        ClearPedProp(ped, 1)
    elseif data.txt == "removeear" then 
        ClearPedProp(ped, 2)
    elseif data.txt == "removehat" then 
        ClearPedProp(ped, 0)
    end
end)




-- this cb is used as the main route to transfer data back 
-- and also where we hanld the data sent from js
RegisterNUICallback("main", function(data)
    chat(data.text, {0,255,0})
    SetDisplay(false)
end)

RegisterNUICallback("error", function(data)
    chat(data.error, {255,0,0})
    SetDisplay(false)
end)

function SetDisplay(bool)
    display = bool
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        type = "ui",
        status = bool,
    })
end

Citizen.CreateThread(function()
    while display do
        Citizen.Wait(0)
        -- https://runtime.fivem.net/doc/natives/#_0xFE99B66D079CF6BC
        --[[ 
            inputGroup -- integer , 
	        control --integer , 
            disable -- boolean 
        ]]
        --DisableControlAction(0, 1, display) -- LookLeftRight
        --DisableControlAction(0, 2, display) -- LookUpDown
        DisableControlAction(0, 142, display) -- MeleeAttackAlternate
        DisableControlAction(0, 18, display) -- Enter
        DisableControlAction(0, 322, display) -- ESC
        DisableControlAction(0, 106, display) -- VehicleMouseControlOverride
    end
end)

function chat(str, color)
    TriggerEvent(
        'chat:addMessage',
        {
            color = color,
            multiline = true,
            args = {str}
        }
    )
end
local arg = 0
RegisterCommand('Gess', function(source, args)
    arg = arg+1
    --local arg = table.concat(args, "")
    local ped = GetPlayerPed(-1)
    --SetPedComponentVariation(ped, 3, 1, 1, 0)
    SetPedComponentVariation(ped, 14,1,1, 2)	
    print(GetPedDrawableVariation(ped, 3))
    --SetPedRandomComponentVariation(ped, true)
    --SetPedDefaultComponentVariation(ped)
    --SetPedComponentVariation(ped, componentId, drawableId, textureId, paletteId)
    --SetPedPropIndex(ped, 0, arg, 3, true)
    --SetPedRandomProps(ped)
    --print(GetNumberOfPedDrawableVariations(ped, 3))
end)


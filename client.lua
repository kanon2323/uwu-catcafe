local QBCore = exports['qb-core']:GetCoreObject()
local spawned = false

--- Scenes and stuff for Job -------------

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
		if PlayerData.job.onduty then
			if PlayerData.job.name == "uwu" then
				TriggerServerEvent("QBCore:ToggleDuty")
			end
		end
	end)
end)

local QBCore = exports['qb-core']:GetCoreObject() 

-- Define the coordinates and radius for the interaction zone
local bossMenuZone = {
    coords = vector3(-578.91, -1062.01, 26.61), -- Replace with your desired coordinates
    radius = 2.5
}

-- Specify the job for which the boss menu should open
local jobName = "uwu" -- Replace with the identifier of your job

-- Function to handle the interaction
local function handleBossMenu()
    local playerJob = QBCore.Functions.GetPlayerData().job

    if playerJob.name == jobName and playerJob.isboss then
        -- Test notification
        TriggerEvent('qb-bossmenu:client:OpenMenu') -- Trigger the boss menu
    else
        QBCore.Functions.Notify("You are not authorized to access this.", "error")
    end
end


-- Create the interaction zone using qb-target
exports.ox_target:addSphereZone({
    coords = bossMenuZone.coords,
    radius = bossMenuZone.radius,
    debug = false,        -- debugPoly の代わり
    useZ = true,
    options = {
        {
            name = 'BossMenu',
            icon = 'fas fa-briefcase',
            label = 'Open Boss Menu',
            onSelect = function(data)
                handleBossMenu()
            end,
        }
    },
    distance = 2.5
})


RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    onDuty = PlayerJob.onduty
end)

RegisterNetEvent("mt-UwUCafe:client:Servico", function()
    TriggerServerEvent("QBCore:ToggleDuty")
end)



---------------------------------
----- Config Blip to set it on ur map/gps --------------

Citizen.CreateThread(function()
    local blip = AddBlipForCoord(462.2, -693.88, 26.44)
    
    SetBlipSprite (blip, 59)
    SetBlipDisplay(blip, 4)
    SetBlipScale  (blip, 0.7)
    SetBlipColour (blip, 2)
    SetBlipAsShortRange(blip, true)

    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString('Ingredients Seller')
    EndTextCommandSetBlipName(blip)

    local blip = AddBlipForCoord(-582.49, -1062.94, 22.35)
    
    SetBlipSprite (blip, 621)
    SetBlipDisplay(blip, 4)
    SetBlipScale  (blip, 0.9)
    SetBlipColour (blip, 34)
    SetBlipAsShortRange(blip, true)

    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString('Ingredients Seller')
    EndTextCommandSetBlipName(blip)
end)

--------------------
----- Menus --------

RegisterNetEvent('mt-UwUCafe:client:MenuComidas', function() -- Menu to make food
    exports['qb-menu']:openMenu({
        {
            header = "フード UwU カフェ",
            isMenuHeader = true,
        },
        {
            header = "< メニューを閉じる",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
        {
            header = "ストロベリーカップケーキ",
            txt = "材料: <br> - 牛乳 1個 <br> - バター 1個 <br> - 小麦粉 1個 <br> - ストロベリーパッケージ 1個",
            params = {
                event = "mt-UwUCafe:client:FazerCupcakeMorango",
            }
        },
        {
            header = "チョコレートカップケーキ",
            txt = "材料: <br> - 牛乳 1個 <br> - バター 1個 <br> - 小麦粉 1個 <br> - チョコレート 1個",
            params = {
                event = "mt-UwUCafe:client:FazerCupcakeChocolate",
            }
        },
        {
            header = "レモンカップケーキ",
            txt = "材料: <br> - 牛乳 1個 <br> - バター 1個 <br> - 小麦粉 1個 <br> - レモン 1個",
            params = {
                event = "mt-UwUCafe:client:FazerCupcakeLimao",
            }
        },
        {
            header = "ストロベリーアイスクリーム",
            txt = "材料: <br> - クリーム 1個 <br> - 練乳 1個 <br> - ストロベリーパッケージ 1個",
            params = {
                event = "mt-UwUCafe:client:FazerGeladoMorango",
            }
        },
        {
            header = "チョコレートアイスクリーム",
            txt = "材料: <br> - クリーム 1個 <br> - 練乳 1個 <br> - チョコレート 1個",
            params = {
                event = "mt-UwUCafe:client:FazerGeladoChocolate",
            }
        },
        {
            header = "バニラアイスクリーム",
            txt = "材料: <br> - クリーム 1個 <br> - 練乳 1個 <br> - バニラエッセンス 1個",
            params = {
                event = "mt-UwUCafe:client:FazerGeladoBaunilha",
            }
        },
        {
            header = "ヌテラパンケーキ",
            txt = "材料: <br> - 小麦粉 1個 <br> - 牛乳 1個 <br> - 砂糖パック 1個 <br> - ヌテラ 1個",
            params = {
                event = "mt-UwUCafe:client:FazerPanquencaNutela",
            }
        },
        {
            header = "オレオパンケーキ",
            txt = "材料: <br> - 小麦粉 1個 <br> - 牛乳 1個 <br> - 砂糖パック 1個 <br> - オレオ 1個",
            params = {
                event = "mt-UwUCafe:client:FazerPanquencaOreo",
            }
        },
        {
            header = "チョコレートマフィン",
            txt = "材料: <br> - 小麦粉 1個 <br> - 牛乳 1個 <br> - チョコレート 1個",
            params = {
                event = "mt-UwUCafe:client:FazerMuffinChocolate",
            }
        },
        {
            header = "チキンパステル",
            txt = "材料: <br> - 小麦粉 1個 <br> - バター 1個 <br> - チキン 1個",
            params = {
                event = "mt-UwUCafe:client:FazerPastelFrango",
            }
        },
        {
            header = "ヌテラワッフル",
            txt = "材料: <br> - 小麦粉 1個 <br> - 牛乳 1個 <br> - ヌテラ 1個",
            params = {
                event = "mt-UwUCafe:client:FazerWaffleNutela",
            }
        },
    })
end)

RegisterNetEvent('mt-UwUCafe:client:MenuBebidas', function() -- Menu for making drinks
    exports['qb-menu']:openMenu({
        {
            header = "ドリンク UwU カフェ",
            isMenuHeader = true,
        },
        {
            header = "< メニューを閉じる",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
        {
            header = "コーヒー",
            txt = "材料: <br> - コーヒー豆 1個 <br> - 水ボトル 1個",
            params = {
                event = "mt-UwUCafe:client:FazerCafe",
            }
        },
        {
            header = "ラテ",
            txt = "材料: <br> - コーヒー豆 1個 <br> - 牛乳 1個",
            params = {
                event = "mt-UwUCafe:client:FazerLatte",
            }
        },
        {
            header = "ブラックベリーバブルティー",
            txt = "材料: <br> - ブラックベリーの箱 1個 <br> - 水ボトル 1個",
            params = {
                event = "mt-UwUCafe:client:FazerBubbleTeaAmora",
            }
        },
        {
            header = "ストロベリーバブルティー",
            txt = "材料: <br> - ストロベリーパッケージ 1個 <br> - 水ボトル 1個",
            params = {
                event = "mt-UwUCafe:client:FazerBubbleTeaMorango",
            }
        },
        {
            header = "ミントバブルティー",
            txt = "材料: <br> - ミントエッセンス 1個 <br> - 水ボトル 1個",
            params = {
                event = "mt-UwUCafe:client:FazerBubbleTeaMenta",
            }
        },
        {
            header = "ストロベリーミルクシェイク",
            txt = "材料: <br> - ストロベリーパッケージ 1個 <br> - 牛乳 1個",
            params = {
                event = "mt-UwUCafe:client:FazerMilkshakeMorango",
            }
        },
        {
            header = "チョコレートミルクシェイク",
            txt = "材料: <br> - チョコレート 1個 <br> - 牛乳 1個",
            params = {
                event = "mt-UwUCafe:client:FazerMilkshakeChocolate",
            }
        },
    })
end)

RegisterNetEvent('mt-UwUCafe:client:MenuLoja', function() -- Menu to the ingredient vendor
    if Config.UsarPed == true then
    exports['qb-menu']:openMenu({
        {
            header = "材料販売者",
            isMenuHeader = true,
        },
        {
            header = "< メニューを閉じる",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
        {
            header = "牛乳",
            txt = "価格: 4個で500$",
            params = {
                event = "mt-UwUCafe:client:ComprarLeite",
            }
        },
        {
            header = "バター",
            txt = "価格: 4個で500$",
            params = {
                event = "mt-UwUCafe:client:ComprarManteiga",
            }
        },
        {
            header = "小麦粉",
            txt = "価格: 4個で500$",
            params = {
                event = "mt-UwUCafe:client:ComprarFarinha",
            }
        },
        {
            header = "ストロベリーパッケージ",
            txt = "価格: 4個で500$",
            params = {
                event = "mt-UwUCafe:client:ComprarMorangos",
            }
        },
        {
            header = "チョコレート",
            txt = "価格: 4個で500$",
            params = {
                event = "mt-UwUCafe:client:ComprarChocolate",
            }
        },
        {
            header = "レモン",
            txt = "価格: 4個で500$",
            params = {
                event = "mt-UwUCafe:client:ComprarLimao",
            }
        },
        {
            header = "クリーム",
            txt = "価格: 4個で500$",
            params = {
                event = "mt-UwUCafe:client:ComprarNatas",
            }
        },
        {
            header = "練乳",
            txt = "価格: 4個で500$",
            params = {
                event = "mt-UwUCafe:client:ComprarCondensado",
            }
        },
        {
            header = "バニラエッセンス",
            txt = "価格: 4個で500$",
            params = {
                event = "mt-UwUCafe:client:ComprarBaunilha",
            }
        },
        {
            header = "砂糖パック",
            txt = "価格: 4個で500$",
            params = {
                event = "mt-UwUCafe:client:ComprarAcucar",
            }
        },
        {
            header = "ヌテラボトル",
            txt = "価格: 4個で500$",
            params = {
                event = "mt-UwUCafe:client:ComprarNutela",
            }
        },
        {
            header = "オレオパック",
            txt = "価格: 4個で500$",
            params = {
                event = "mt-UwUCafe:client:ComprarOreo",
            }
        },
        {
            header = "コーヒー豆",
            txt = "価格: 4個で500$",
            params = {
                event = "mt-UwUCafe:client:ComprarCafe",
            }
        },
        {
            header = "ミントエッセンス",
            txt = "価格: 4個で500$",
            params = {
                event = "mt-UwUCafe:client:ComprarMenta",
            }
        },
        {
            header = "ブラックベリーの箱",
            txt = "価格: 4個で500$",
            params = {
                event = "mt-UwUCafe:client:ComprarAmoras",
            }
        },
        {
            header = "チキン",
            txt = "価格: 4個で500$",
            params = {
                event = "mt-UwUCafe:client:ComprarFrango",
            }
        },
    })
    end
end)

---------------------------------------
----------- Making food -------------

RegisterNetEvent('mt-UwUCafe:client:FazerCupcakeMorango', function() -- Make Strawberry Cupcake
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('cupcake_morango', 'MAKING A CUPCAKE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('mt-UwUCafe:server:FazerCupcakeMorango')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:FazerCupcakeChocolate', function() -- Make Chocolate Cupcake
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('cupcake_chocolate', 'MAKING A CUPCAKE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('mt-UwUCafe:server:FazerCupcakeChocolate')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:FazerCupcakeLimao', function() -- Make Lemon Cupcake
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('cupcake_limao', 'MAKING A CUPCAKE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('mt-UwUCafe:server:FazerCupcakeLimao')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:FazerGeladoMorango', function() -- Make strawberry ice cream
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('gelado_morango', 'MAKING A ICE CREAM...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('mt-UwUCafe:server:FazerGeladoMorango')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:FazerGeladoChocolate', function() -- Make chocolate ice cream
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('gelado_chocolate', 'MAKING A ICE CREAM...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('mt-UwUCafe:server:FazerGeladoChocolate')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:FazerGeladoBaunilha', function() -- Make vanilla ice cream
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('gelado_baunilha', 'MAKING A ICE CREAM...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('mt-UwUCafe:server:FazerGeladoBaunilha')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:FazerPanquencaNutela', function() -- Make nutella pancake
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('panqueca_nutela', 'MAKING A PANCAKE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('mt-UwUCafe:server:FazerPanquencaNutela')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:FazerPanquencaOreo', function() -- Make oreo pancake
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('panqueca_oreo', 'MAKING A PANCAKE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('mt-UwUCafe:server:FazerPanquencaOreo')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:FazerMuffinChocolate', function() -- Make oreo pancake
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('muffin_chocolate', 'MAKING A MUFFIN...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('mt-UwUCafe:server:FazerMuffinChocolate')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:FazerPastelFrango', function() -- Make Chicken Pastel
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('pastel_frango', 'MAKING A PASTEL...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('mt-UwUCafe:server:FazerPastelFrango')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:FazerWaffleNutela', function() -- Make Nutela Waffle
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('waffle_nutela', 'MAKING A WAFFLE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('mt-UwUCafe:server:FazerWaffleNutela')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

---------------------------------------
--------- Making drinks ---------------

RegisterNetEvent('mt-UwUCafe:client:FazerCafe', function() -- Make a coffee
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('fazer_cafe', 'TAKING A COFFEE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('mt-UwUCafe:server:FazerCafe')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:FazerLatte', function() -- Make a Latte
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('fazer_latte', 'TAKING A LATTE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('mt-UwUCafe:server:FazerLatte')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:FazerBubbleTeaAmora', function() -- Make a blackberry bubble tea
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('bubble_amora', 'TAKING A BUBBLE TEA...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('mt-UwUCafe:server:FazerBubbleTeaAmora')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:FazerBubbleTeaMorango', function() -- Make a Strawberry Bubble Tea
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('bubble_morango', 'TAKING A BUBBLE TEA...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('mt-UwUCafe:server:FazerBubbleTeaMorango')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:FazerBubbleTeaMenta', function() -- Make a mint bubble tea
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('bubble_menta', 'TAKING A BUBBLE TEA...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('mt-UwUCafe:server:FazerBubbleTeaMenta')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:FazerMilkshakeMorango', function() -- Make a mint bubble tea
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('milkshake_morango', 'TAKING A MILKSHAKE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('mt-UwUCafe:server:FazerMilkshakeMorango')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:FazerMilkshakeChocolate', function() -- Make a mint bubble tea
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('milkshake_chocolate', 'TAKING A MILKSHAKE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('mt-UwUCafe:server:FazerMilkshakeChocolate')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

--------------------------------
------- Stashes ----------------

RegisterNetEvent('mt-UwUCafe:client:FrigorificoComida', function() -- Refrigerator for food (made)
    local stash = "frigorificouwu"
    TriggerEvent("inventory:client:SetCurrentStash", stash)
    if exports['ox_inventory'] then
        exports.ox_inventory:openInventory('stash', stash, {
            maxweight = 250000,
            slots = 40,
        })
    else
        TriggerServerEvent("inventory:server:OpenInventory", "stash", stash, {
            maxweight = 250000,
            slots = 40,
        })
    end
end)

RegisterNetEvent('mt-UwUCafe:client:FrigorificoIngredientes', function() -- Fridge for Ingredients
    local stash = "FrigorificoIngredientes"
    TriggerEvent("inventory:client:SetCurrentStash", stash)
    if exports['ox_inventory'] then
        exports.ox_inventory:openInventory('stash', stash, {
            maxweight = 500000,
            slots = 40,
        })
    else
        TriggerServerEvent("inventory:server:OpenInventory", "stash", stash, {
            maxweight = 500000,
            slots = 40,
        })
    end
end)

RegisterNetEvent('mt-UwUCafe:client:Balcao', function() -- Refrigerator for food (made)
    local stash = "balcaouwu"
    TriggerEvent("inventory:client:SetCurrentStash", stash)
    if exports['ox_inventory'] then
        exports.ox_inventory:openInventory('stash', stash, {
            maxweight = 10000,
            slots = 40,
        })
    else
        TriggerServerEvent("inventory:server:OpenInventory", "stash", stash, {
            maxweight = 10000,
            slots = 40,
        })
    end
end)

RegisterNetEvent('mt-UwUCafe:client:Tabuleiro1', function() -- board1
    local stash = "TabuleiroUwU1"
    TriggerEvent("inventory:client:SetCurrentStash", stash)
    if exports['ox_inventory'] then
        exports.ox_inventory:openInventory('stash', stash, {
            maxweight = 20000,
            slots = 10,
        })
    else
        TriggerServerEvent("inventory:server:OpenInventory", "stash", stash, {
            maxweight = 20000,
            slots = 10,
        })
    end
end)

RegisterNetEvent('mt-UwUCafe:client:Tabuleiro2', function() -- board2
    local stash = "TabuleiroUwU2"
    TriggerEvent("inventory:client:SetCurrentStash", stash)
    if exports['ox_inventory'] then
        exports.ox_inventory:openInventory('stash', stash, {
            maxweight = 20000,
            slots = 10,
        })
    else
        TriggerServerEvent("inventory:server:OpenInventory", "stash", stash, {
            maxweight = 20000,
            slots = 10,
        })
    end
end)

---------------------------
---- Spawn Cats ----------

CreateThread(function()
    local spot1 = CircleZone:Create(vector3(-580.54, -1064.7, 22.79), 10.0, {
        name="spot1",
        debugPoly=false,
    })
	while true do
		Wait(3000)
		local plyPed = PlayerPedId()
		local coord = GetEntityCoords(plyPed)
		if spot1:isPointInside(coord)then
			if not spawned then
				spawnGatos()
			end
		end
	end
end)

function spawnGatos()
	spawned = true
    for key, value in pairs(Config.Gatos) do
        local hash = GetHashKey('a_c_cat_01')
        RequestModel(hash)
        while not HasModelLoaded(hash) do
            Citizen.Wait(10)
        end
        if value.sitting  == true then
            ped = CreatePed(28, hash, value.coords.x, value.coords.y, value.coords.z - 0.9, value.coords.w, false, true)
            DoRequestAnimSet('creatures@cat@amb@world_cat_sleeping_ground@idle_a')
            TaskPlayAnim(ped, 'creatures@cat@amb@world_cat_sleeping_ground@idle_a', 'idle_a' ,8.0, -8, -1, 1, 0, false, false, false)
            SetPedCanBeTargetted(ped, false)
            SetEntityAsMissionEntity(ped, true,true)
            SetBlockingOfNonTemporaryEvents(ped, true)
        else
            ped = CreatePed(28, hash, value.coords.x, value.coords.y, value.coords.z - 1.0, value.coords.w, false, true)
            SetPedCanBeTargetted(ped, false)
            SetEntityAsMissionEntity(ped, true,true)
            TaskWanderStandard(ped, 0, 0)
            SetBlockingOfNonTemporaryEvents(ped, true)
        end
    end
end

function DoRequestAnimSet(anim)
	RequestAnimDict(anim)
	while not HasAnimDictLoaded(anim) do
		Citizen.Wait(1)
	end
end

------------------------------------
----- Use food/drinks ---------

RegisterNetEvent('mt-UwUCafe:client:ComerCupcake', function() -- Eat Cupcake
    food = math.random(10, 10)
    TriggerEvent('animations:client:EmoteCommandStart', {"uwusandy"})
    QBCore.Functions.Progressbar('comer_cupcake', 'EATING A CUPCAKE...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + food)
        TriggerServerEvent("consumables:server:addHunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + food)
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComerPastel', function() -- Eat Chicken Pastel
    food = math.random(30, 30)
    TriggerEvent('animations:client:EmoteCommandStart', {"sandwich"})
    QBCore.Functions.Progressbar('comer_pastel', 'EATING A PASTEL...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + food)
        TriggerServerEvent("consumables:server:addHunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + food)
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComerMuffin', function() -- Eat muffin
    food = math.random(40, 70)
    TriggerEvent('animations:client:EmoteCommandStart', {"uwusandy"})
    QBCore.Functions.Progressbar('comer_muffin', 'EATING A MUFFIN...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + food)
        TriggerServerEvent("consumables:server:addHunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + food)
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComerWaffle', function() -- Eat Waffle
    food = math.random(40, 70)
    TriggerEvent('animations:client:EmoteCommandStart', {"sandwich"})
    QBCore.Functions.Progressbar('comer_waffle', 'EATING A WAFFLE...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + food)
        TriggerServerEvent("consumables:server:addHunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + food)
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComerGelado', function() -- Eat icecream
    food = math.random(40, 70)
    TriggerEvent('animations:client:EmoteCommandStart', {"uwusandy"})
    QBCore.Functions.Progressbar('comer_gelado', 'EATING A GELADO...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + food)
        TriggerServerEvent("consumables:server:addHunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + food)
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComerPanqueca', function() -- Eat pancake
    food = math.random(20, 20)
    TriggerEvent('animations:client:EmoteCommandStart', {"sandwich"})
    QBCore.Functions.Progressbar('comer_panqueca', 'DRINKING A PANCAKE...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + food)
        TriggerServerEvent("consumables:server:addHunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + food)
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:BeberBubbleTea', function() -- Drink bubble Tea
    food = math.random(40, 70)
    TriggerEvent('animations:client:EmoteCommandStart', {"cup"})
    QBCore.Functions.Progressbar('beber_bubbletea', 'DRINKING A BUBBLE TEA...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + food)
        TriggerServerEvent("consumables:server:addThirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + food)
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:BeberMilkshake', function() -- Drink Milkshake
    food = math.random(30, 30)
    TriggerEvent('animations:client:EmoteCommandStart', {"cup"})
    QBCore.Functions.Progressbar('beber_milkshake', 'DRINKING A MILKSHAKE...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + food)
        TriggerServerEvent("consumables:server:addThirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + food)
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:BeberCafe', function() -- Drink Coffee
    food = math.random(10, 10)
    TriggerEvent('animations:client:EmoteCommandStart', {"coffee"})
    QBCore.Functions.Progressbar('beber_cafe', 'DRINKING A COFFEE...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + food)
        TriggerServerEvent("consumables:server:addThirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + food)
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('hud:server:RelieveStress', math.random(20, 30))
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:BeberLatte', function() -- Drink Latte
    food = math.random(20, 20)
    TriggerEvent('animations:client:EmoteCommandStart', {"coffee"})
    QBCore.Functions.Progressbar('beber_latte', 'DRINKING A LATTE...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + food)
        TriggerServerEvent("consumables:server:addThirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + food)
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('hud:server:RelieveStress', math.random(10, 20))
    end)
end)

------------------------------------------
------ Spawn ped selling food ---------

local IngredientsPed = {
    Config.Ped
}

Citizen.CreateThread(function()
    if Config.UsarPed == true then
    for _,v in pairs(IngredientsPed) do
        RequestModel(GetHashKey(v[7]))
        while not HasModelLoaded(GetHashKey(v[7])) do
            Wait(1)
        end
        IngredientsProcPed =  CreatePed(4, v[6],v[1],v[2],v[3], 3374176, false, true)
        SetEntityHeading(IngredientsProcPed, v[5])
        FreezeEntityPosition(IngredientsProcPed, true)
        SetEntityInvincible(IngredientsProcPed, true)
        SetBlockingOfNonTemporaryEvents(IngredientsProcPed, true)
        TaskStartScenarioInPlace(IngredientsProcPed, "WORLD_HUMAN_STAND_MOBILE_UPRIGHT", 0, true) 
        end
    end
end)

Citizen.CreateThread(function()
    lib.zones.box({
        coords = Config.PedTargetLoc,
        size = vec3(1.0, 1.0, 3.0), -- 高さは任意調整
        rotation = 0,
        debug = false,
        onEnter = function()
            exports.ox_target:addLocalEntity({
                {
                    name = "PedIngredients",
                    icon = "fas fa-shopping-bag",
                    label = "従業員と話す",
                    event = "mt-UwUCafe:client:MenuLoja",
                }
            })
        end
    })
end)

------------------------------------------
------- Comprar alimentos ----------------

RegisterNetEvent('mt-UwUCafe:client:ComprarLeite', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_leite', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('mt-UwUCafe:Server:AddItem', "pacote-leite", 4)
        TriggerServerEvent('mt-UwUCafe:server:Tirar20dolares')
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComprarManteiga', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_manteiga', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('mt-UwUCafe:Server:AddItem', "barra-manteiga", 4)
        TriggerServerEvent('mt-UwUCafe:server:Tirar20dolares')
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComprarFarinha', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_farinha', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('mt-UwUCafe:Server:AddItem', "pacote-farinha", 4)
        TriggerServerEvent('mt-UwUCafe:server:Tirar20dolares')
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComprarMorangos', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_morangos', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('mt-UwUCafe:Server:AddItem', "caixa-morangos", 4)
        TriggerServerEvent('mt-UwUCafe:server:Tirar50dolares')
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComprarChocolate', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_chocolate', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('mt-UwUCafe:Server:AddItem', "barra-chocolate", 4)
        TriggerServerEvent('mt-UwUCafe:server:Tirar50dolares')
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComprarLimao', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_limao', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('mt-UwUCafe:Server:AddItem', "limao", 4)
        TriggerServerEvent('mt-UwUCafe:server:Tirar30dolares')
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComprarNatas', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_natas', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('mt-UwUCafe:Server:AddItem', "pacote-natas", 4)
        TriggerServerEvent('mt-UwUCafe:server:Tirar50dolares')
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComprarCondensado', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_condensado', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('mt-UwUCafe:Server:AddItem', "leite-condensado", 4)
        TriggerServerEvent('mt-UwUCafe:server:Tirar50dolares')
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComprarBaunilha', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_baunilha', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('mt-UwUCafe:Server:AddItem', "extrato-baunilha", 4)
        TriggerServerEvent('mt-UwUCafe:server:Tirar50dolares')
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComprarAcucar', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_acucar', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('mt-UwUCafe:Server:AddItem', "pacote-acucar", 4)
        TriggerServerEvent('mt-UwUCafe:server:Tirar20dolares')
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComprarNutela', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_nutela', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('mt-UwUCafe:Server:AddItem', "frasco-nutela", 4)
        TriggerServerEvent('mt-UwUCafe:server:Tirar50dolares')
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComprarOreo', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_oreo', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('mt-UwUCafe:Server:AddItem', "pacote-oreo", 4)
        TriggerServerEvent('mt-UwUCafe:server:Tirar50dolares')
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComprarCafe', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_cafe', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('mt-UwUCafe:Server:AddItem', "graos-cafe", 4)
        TriggerServerEvent('mt-UwUCafe:server:Tirar50dolares')
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComprarMenta', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_menta', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('mt-UwUCafe:Server:AddItem', "extrato-menta", 4)
        TriggerServerEvent('mt-UwUCafe:server:Tirar50dolares')
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComprarAmoras', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_amoras', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('mt-UwUCafe:Server:AddItem', "caixa-amoras", 4)
        TriggerServerEvent('mt-UwUCafe:server:Tirar50dolares')
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComprarFrango', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprarfrango', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('mt-UwUCafe:Server:AddItem', "frango", 4)
        TriggerServerEvent('mt-UwUCafe:server:Tirar50dolares')
    end)
end)

----------------------------------
--------- Pet Cats --------

RegisterNetEvent('mt-UwUCafe:client:AcariciarGato', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic3"})
    QBCore.Functions.Progressbar('acariciar_gatos', 'HAVING PARTIES WITH THE CAT...', 5000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

---------------------------------
--- See menu ------------------

RegisterNetEvent("mt-UwUCafe:client:VerEmenta", function()
    exports['qb-menu']:openMenu({
        {
            header = "メニュー UwU カフェ",
            isMenuHeader = true,
        },
        {
            header = "< メニューを閉じる",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
        {
            header = "ドリンク",
            txt = "現在カフェで利用可能なドリンクをご覧ください！",
            params = {
                event = "mt-UwUCafe:client:EmentaBebidas",
            }
        },
        {
            header = "フード",
            txt = "現在カフェで利用可能なフードをご覧ください！",
            params = {
                event = "mt-UwUCafe:client:EmentaComidas",
            }
        },
    })
end)

RegisterNetEvent('mt-UwUCafe:client:EmentaBebidas', function()
    exports['qb-menu']:openMenu({
        {
            header = "ドリンク UwU カフェ",
            isMenuHeader = true,
        },
        {
            header = "< 戻る",
            txt = "",
            params = {
                event = "mt-UwUCafe:client:VerEmenta",
            }
        },
        {
            header = "ラテ",
            txt = "価格: 25$",
            params = {
                event = "mt-UwUCafe:client:EmentaBebidas",
            }
        },
        {
            header = "コーヒー",
            txt = "価格: 20$",
            params = {
                event = "mt-UwUCafe:client:EmentaBebidas",
            }
        },
        {
            header = "ブラックベリーバブルティー",
            txt = "価格: 25$",
            params = {
                event = "mt-UwUCafe:client:EmentaBebidas",
            }
        },
        {
            header = "ミントバブルティー",
            txt = "価格: 25$",
            params = {
                event = "mt-UwUCafe:client:EmentaBebidas",
            }
        },
        {
            header = "ストロベリーバブルティー",
            txt = "価格: 25$",
            params = {
                event = "mt-UwUCafe:client:EmentaBebidas",
            }
        },
        {
            header = "ストロベリーミルクシェイク",
            txt = "価格: 25$",
            params = {
                event = "mt-UwUCafe:client:EmentaBebidas",
            }
        },
        {
            header = "チョコレートミルクシェイク",
            txt = "価格: 25$",
            params = {
                event = "mt-UwUCafe:client:EmentaBebidas",
            }
        },
    })
end)

RegisterNetEvent('mt-UwUCafe:client:EmentaComidas', function()
    exports['qb-menu']:openMenu({
        {
            header = "フード UwU カフェ",
            isMenuHeader = true,
        },
        {
            header = "< 戻る",
            txt = "",
            params = {
                event = "mt-UwUCafe:client:VerEmenta",
            }
        },
        {
            header = "ストロベリーカップケーキ",
            txt = "価格: 50$",
            params = {
                event = "mt-UwUCafe:client:EmentaComidas",
            }
        },
        {
            header = "チョコレートカップケーキ",
            txt = "価格: 50$",
            params = {
                event = "mt-UwUCafe:client:EmentaComidas",
            }
        },
        {
            header = "レモンカップケーキ",
            txt = "価格: 50$",
            params = {
                event = "mt-UwUCafe:client:EmentaComidas",
            }
        },
        {
            header = "ストロベリーアイスクリーム",
            txt = "価格: 40$",
            params = {
                event = "mt-UwUCafe:client:EmentaComidas",
            }
        },
        {
            header = "バニラアイスクリーム",
            txt = "価格: 40$",
            params = {
                event = "mt-UwUCafe:client:EmentaComidas",
            }
        },
        {
            header = "チョコレートアイスクリーム",
            txt = "価格: 40$",
            params = {
                event = "mt-UwUCafe:client:EmentaComidas",
            }
        },
        {
            header = "ヌテラパンケーキ",
            txt = "価格: 50$",
            params = {
                event = "mt-UwUCafe:client:EmentaComidas",
            }
        },
        {
            header = "オレオパンケーキ",
            txt = "価格: 50$",
            params = {
                event = "mt-UwUCafe:client:EmentaComidas",
            }
        },
        {
            header = "チョコレートマフィン",
            txt = "価格: 50$",
            params = {
                event = "mt-UwUCafe:client:EmentaComidas",
            }
        },
        {
            header = "チキンパステル",
            txt = "価格: 50$",
            params = {
                event = "mt-UwUCafe:client:EmentaComidas",
            }
        },
        {
            header = "ヌテラワッフル",
            txt = "価格: 50$",
            params = {
                event = "mt-UwUCafe:client:EmentaComidas",
            }
        },
    })
end)

RegisterCommand('ementa-uwu', function()
    TriggerEvent('mt-UwUCafe:client:VerEmenta')
end)

-------------------------------------
------------- Bill Player --------

RegisterNetEvent("mt-UwUCafe:client:FaturarPlayer", function()
    local dialog = exports['qb-input']:ShowInput({
        header = "請求書",
        submitText = "プレイヤーに請求する",
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'id',
                text = 'paypal id'
            },
            {
                type = 'number',
                isRequired = true,
                name = 'amount',
                text = '$ 金額!'
            }
        }
    })
    if dialog then
        if not dialog.id or not dialog.amount then return end
        TriggerServerEvent("mt-UwUCafe:server:FaturarPlayer", dialog.id, dialog.amount)
    end
end)
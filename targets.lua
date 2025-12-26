Citizen.CreateThread(function()

    -----------------------------------------------------
    -- 出勤退勤
    -----------------------------------------------------
    exports.ox_target:addBoxZone({
        coords = vec3(-593.99, -1052.34, 22.34),
        size = vec3(1.0, 1.2, 3.6),
        rotation = 91,
        debug = false,
        options = {
            {
                event = "mt-UwUCafe:client:Servico",
                icon = "far fa-clipboard",
                label = "出勤退勤",
                job = "uwu"
            }
        },
        distance = 2.0
    })

    -----------------------------------------------------
    -- 調理
    -----------------------------------------------------
    exports.ox_target:addBoxZone({
        coords = vec3(-590.95, -1056.56, 22.28),
        size = vec3(0.7, 1.5, 3.0),
        rotation = 91.25,
        debug = false,
        options = {
            {
                event = "mt-UwUCafe:client:MenuComidas",
                icon = "fas fa-rocket",
                label = "調理をする",
                job = "uwu"
            }
        },
        distance = 2.0
    })

    -----------------------------------------------------
    -- 猫（モデルターゲット）
    -----------------------------------------------------
    exports.ox_target:addModel(`a_c_cat_01`, {
        {
            event = "mt-UwUCafe:client:AcariciarGato",
            icon = "fas fa-cat",
            label = "Caress cat"
        }
    })

    -----------------------------------------------------
    -- 飲み物
    -----------------------------------------------------
    exports.ox_target:addBoxZone({
        coords = vec3(-586.95, -1061.92, 22.34),
        size = vec3(1.0, 1.0, 3.0),
        rotation = 0,
        debug = false,
        options = {
            {
                event = "mt-UwUCafe:client:MenuBebidas",
                icon = "far fa-coffee",
                label = "コーヒーを作る",
                job = "uwu"
            }
        },
        distance = 2.0
    })

    -----------------------------------------------------
    -- 服
    -----------------------------------------------------
    exports.ox_target:addBoxZone({
        coords = vec3(-585.91, -1050.11, 22.36),
        size = vec3(1.5, 1.0, 3.0),
        rotation = 0,
        debug = false,
        options = {
            {
                event = "qb-clothing:client:openOutfitMenu",
                icon = "far fa-tshirt",
                label = "Change Clothes"
            }
        },
        distance = 2.0
    })

end)
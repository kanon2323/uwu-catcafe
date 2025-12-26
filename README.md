# uwu-catcafe
Release of a revised version of ox_inventory and target compatible version

# Dependencies
# ox_inventory - https://github.com/overextended/ox_inventory/releases
# ox_target - https://github.com/overextended/ox_target
# ox_lib - https://github.com/overextended/ox_lib
# dpemote - https://github.com/AamiRobin/dpemotes
--------------------------
I am Japanese, so the contents of client.lua and targets.lua are in Japanese, so please change the language when using them.

maps gabz-uwucatcafe
https://fivem.gabzv.com/package/4724734
--------------------------
日本語訳にもなってますのでその他の方も自由にお使いください

マップはgabzのものが必要です
https://fivem.gabzv.com/package/4724734
--------------------------

ox_invenry/data/items.lua
```
	["gelado-morango"] = {
		label = "Strawberry Icecream",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "gemorango.png",
		}
	},

	["pacote-acucar"] = {
		label = "Sugar Pack",
		weight = 1500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "acucar.png",
		}
	},

	["frango"] = {
		label = "Chicken",
		weight = 1500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "frango.png",
		}
	},

	["bubble-morango"] = {
		label = "Strawberry Bubble Tea",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "btmorango.png",
		}
	},

	["pacote-oreo"] = {
		label = "Oreo Pack",
		weight = 1500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "oreo.png",
		}
	},

	["cupcake-limao"] = {
		label = "Lemon Cupcake",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cuplimao.png",
		}
	},

	["graos-cafe"] = {
		label = "Coffee Beans",
		weight = 1500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "graoscafe.png",
		}
	},

	["bubble-menta"] = {
		label = "Mint Bubble Team",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "btmenta.png",
		}
	},

	["pacote-natas"] = {
		label = "Package of Cream",
		weight = 1500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "natas.png",
		}
	},

	["cafe-uwu"] = {
		label = "Café",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cafe.png",
		}
	},

	["cupcake-chocolate"] = {
		label = "Chocolate Cupcake",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cupchocolate.png",
		}
	},

	["gelado-baunilha"] = {
		label = "Vanilla Icecream",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "vanilaice.png",
		}
	},

	["latte-uwu"] = {
		label = "Latte",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "latte.png",
		}
	},

	["extrato-baunilha"] = {
		label = "Vanilla Extract",
		weight = 1500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "baunilha.png",
		}
	},

	["extrato-menta"] = {
		label = "Mint Extract",
		weight = 1500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "menta.png",
		}
	},

	["clothing_bag"] = {
		label = "Clothing Bag",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "clothing_bag.png",
		}
	},

	["waffle-nutela"] = {
		label = "Nutela Waffle",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "wnutela.png",
		}
	},

	["frasco-nutela"] = {
		label = "Jar of Nutella",
		weight = 1500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "nutela.png",
		}
	},

	["pastel-frango"] = {
		label = "Chicken Pastel",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pfrango.png",
		}
	},

	["leite-condensado"] = {
		label = "Condensed Milk",
		weight = 1500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "condensado.png",
		}
	},

	["barra-chocolate"] = {
		label = "Chocolate Bar",
		weight = 1500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chocolate.png",
		}
	},

	["muffin-chocolate"] = {
		label = "Chocolate Muffin",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mufchocolate.png",
		}
	},

	["bubble-amora"] = {
		label = "Blackberry Bubble Tea",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "btamora.png",
		}
	},

	["milkshake-chocolate"] = {
		label = "Chocolate Milkshake",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mschocolate.png",
		}
	},

	["limao"] = {
		label = "Lemon",
		weight = 1500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "limao.png",
		}
	},

	["pacote-farinha"] = {
		label = "Flour Package",
		weight = 1500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farinha.png",
		}
	},

	["pacote-leite"] = {
		label = "Milk Pack",
		weight = 1500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "leite.png",
		}
	},

	["panqueca-oreo"] = {
		label = "Oreo Pancake",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "paoreo.png",
		}
	},

	["barra-manteiga"] = {
		label = "Butter Bar",
		weight = 1500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "manteiga.png",
		}
	},

	["cupcake-morango"] = {
		label = "Strawberry Cupcake",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cupmorango.png",
		}
	},

	["caixa-morangos"] = {
		label = "Strawberries Box",
		weight = 1500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "morangos.png",
		}
	},

	["gelado-chocolate"] = {
		label = "Chocolate Icecream",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "gechocolate.png",
		}
	},

	["panqueca-nutela"] = {
		label = "Nutella Pancake",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "panutela.png",
		}
	},

	["milkshake-morango"] = {
		label = "Strawberry Milkshake",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "msmorango.png",
		}
	},

	["caixa-amoras"] = {
		label = "Box of Blackberries",
		weight = 1500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "amoras.png",
		}
	},

	    bottle = {
        name = "bottle",
        label = "Empty Bottle",
        weight = 10,
        client = {
            image = "bottle.png",
        }
    },
    can = {
        name = "can",
        label = "Empty Can",
        weight = 10,
        client = {
            image = "can.png",
        }
    },
```
    ox_inventory/web/imges
    Place image in
```
	# add to qb-core/shared/jobs.lua
	--------------------------------
```
	    ['uwu'] = {
		label = 'UwU Cat Cafe',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Novice',
                payment = 50
            },
			['1'] = {
                name = 'Employee',
                payment = 75
            },
			['2'] = {
                name = 'Experienced',
                payment = 100
            },
			['3'] = {
                name = 'Advanced',
                payment = 125
            },
			['4'] = {
                name = 'Boss',
				isboss = true,
                payment = 150
            },
        },
	},
```
	# add to d@emotes/client/AnimationList.lua
	---------------------------------------
```
	["bubbletea"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "", AnimationOptions = { Prop = 'apa_prop_cs_plastic_cup_01', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0}, EmoteLoop = true, EmoteMoving = true, }}, ["misosoup"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "", AnimationOptions = { Prop = 'v_ret_247_noodle1', PropBone = 28422, PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0}, EmoteLoop = true, EmoteMoving = true, }}, ["uwusandy"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "", AnimationOptions = { Prop = 'ng_proc_food_ornge1a', PropBone = 18905, PropPlacement = {0.13, 0.05, 0.02, -50.0, 16.0, 60.0}, EmoteMoving = true, }}, ["budhabowl"] = {"anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1", "base_idle", "", AnimationOptions = { Prop = "prop_cs_bowl_01b", PropBone = 60309, PropPlacement = {0.0, 0.0300, 0.0100, 0.0, 0.0, 0.0}, SecondProp = 'h4_prop_h4_caviar_spoon_01a', SecondPropBone = 28422, SecondPropPlacement = {0.0,0.0,0.0,0.0,0.0,0.0}, EmoteLoop = true, EmoteMoving = true, } },
```	
	

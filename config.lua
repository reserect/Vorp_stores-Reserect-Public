Config = {}

Lang = "English"

-- menu position
-- "center" / "top-left" / "top-right"
Config.Align = "top-left"
Config.DevMode = false -- if true you can use /reload to reload the script

-- Webhook Section, description is in translation
Config.UseWebhook = false -- Use webhook
Config.WebhookLanguage = {
    WebhookUrl = "",
    WebhookTitle = "",
    WebhookColor = "",
    WebhookName = "",
    WebhookLogo = "",
    WebhookLogo2 = "",
    WebhookAvatar = ""
}
-- if you have UI you want to hid use it in this function
-- remove what you dont use
  Config.UI = function(state)
       if state then
           --ExecuteCommand("hideneeds hidden")
           --ExecuteCommand("hideui")
           TriggerEvent('vorpmetabolism:setHud', false)
       else
             -- ExecuteCommand("hideneeds visible")
          -- ExecuteCommand("showui")
          TriggerEvent('vorpmetabolism:setHud', true)
       end
   end


-- open stores
Config.Key = 0x760A9C6F --[G] open stores

Config.Stores = {
    -- any name you want sell items and buy items must have same name
    Valentine = {

        useRandomLocation = true, -- if true it will pick a random location from the list bellow, good thing for a store that can move and not always in the same place and npc
        possibleLocations = {
            OpenMenu = {
                vector3(-324.628, 803.9818, 116.88), -- valentine
                -- add more it will pick a random location from the list
            },
            Npcs = {
                 vector4(-324.628, 803.9818, 116.88, -81.17), --valentine
                -- add more it will pick a random location from the list
            }

        },

        Blip = {
            Allowed = true,                            -- allow blip to show on map?
            Name = "valentine store",                  -- blip name
            sprite = 1475879922,                       -- blip sprite
            Pos = vector3(-324.628, 803.9818, 116.88), -- blip position and prompt press open position
        },

        Npc = {
            Pos = vector4(-324.628, 803.9818, 116.88, -81.17), -- npc position
            distanceRemoveNpc = 20.0,                          -- distance to remove npc
            Allowed = true,                                    -- allow npc to spawn?
            Model = "U_M_M_NbxGeneralStoreOwner_01",           -- npc model to spawn
        },

        -- * store categories allow which category to show in the store
        category = {
		    
            { label = "Food",    Type = "Food",    desc = "delicious Food", img = "consumable_bread_roll" },
            { label = "Tools",   Type = "Tools",   desc = "useful Tools",   img = "butcher_table_production" },
            { label = "Meds", Type = "Meds", desc = "Meds",    img = "bandage" },
			{ label = "Cooking", Type = "cooking", desc = "Cooking Items",    img = "upgrade_upg_cooking_spit" },
			{ label = "Crafting", Type = "crafting", desc = "Crafting Items",    img = "weapon_melee_hammer" },
			{ label = "Drinks", Type = "Drinks", desc = "Drinks",    img = "beer" },
			{ label = "Pets", Type = "Pets", desc = "Pet Items",    img = "DogFood" },
			{ label = "AnimalsandPelts",    Type = "AnimalsandPelts",    desc = "Nice Pelts And Stuff", img = "wolf_pelt" },
            { label = "Legendary",   Type = "Legendary",   desc = "Legendary Items",   img = "provision_role_naturalist_carcass_ram_legendary_02" },
			{ label = "Seeds", Type = "Seeds", desc = "Seeds",    img = "Wheat_Seed" },
			{ label = "daweed", Type = "daweed", desc = "daweed Stuff",    img = "joint" },
			{ label = "Preciousitems", Type = "Preciousitems", desc = "Buy Preciousitems",    img = "jewel_ruby1" },
			{ label = "Valuables",   Type = "Valuables",   desc = "Valuable Items",   img = "jewel_ruby2" },
			{ label = "Fishing", Type = "Fishing", desc = "Fishing Stuff",    img = "spinner_bait" },
			{ label = "Coins", Type = "Coins", desc = "Coins",    img = "rescoin" },
			{ label = "Caboom", Type = "Caboom", desc = "Caboom",    img = "dynamite" },
			{ label = "Furniture", Type = "Furniture", desc = "Furniture",    img = "table" },
			{ label = "Meat", Type = "Meat", desc = "Meat",    img = "meat" },
			{ label = "Documents", Type = "Documents", desc = "Documents",    img = "paper" },
			{ label = "Misc", Type = "Misc", desc = "Misc",    img = "lockpick" },
			{ label = "Materials", Type = "Materials", desc = "Materials",    img = "clay" },
			{ label = "Plants", Type = "Plants", desc = "Plants",    img = "Black_Berry" },
			{ label = "Fertilizer", Type = "Fertilizer", desc = "Fertilizer",    img = "fertilizer" },
			{ label = "Liquor", Type = "Liquor", desc = "Liquor",    img = "whisky" },
			{ label = "Orchids", Type = "Orchids", desc = "Orchids",    img = "orchid_mf (2) " },
			{ label = "Sweets", Type = "Sweets", desc = "Sweets",    img = "consumable_chocolatecake " },
			{ label = "Maptools", Type = "Maptools", desc = "Items for Map",    img = "compass " },
        },
        -- * store type allow which type of store to show in the store
        -- * buy and sell USE ENGLISH ONLY
        storeType = {
            { label = "Buy", Type = "buy", desc = "Buy",   img = "Buy" },
			{ label = "Sell", Type = "sell", desc = "Sell", img = "Sell" }
        },

        storeName = "valentine",      -- menu name
        PromptName = "general store", -- prompt name
        AllowedJobs = {},             -- if empty everyone can use or do {"police", "sheriff"}
        JobGrade = 1,                 -- use ranks
        StoreHoursAllowed = false,     -- if you want the stores to use opening and closed hours
        RandomPrices = true,          -- prices of items will be random every restart if set to true based on the prices you added in the config items
        distanceOpenStore = 3.0,      -- distance to open store
        StoreOpen = 7,                -- am
        StoreClose = 21,              -- pm
        DynamicStore = true,          -- if true what you sell to the store will increase the stock of the store if in each item you add a value for stock

    },

    Rhodes = {

        useRandomLocation = true, -- if true it will pick a random location from the list bellow, good thing for a store that can move and not always in the same place and npc
        possibleLocations = {
            OpenMenu = {
                vector3(1330.227, -1293.41, 76.021), -- valentine
                -- add more it will pick a random location from the list
            },
            Npcs = {
                vector4(1330.227, -1293.41, 76.021, 68.88), --valentine
                -- add more it will pick a random location from the list
            }

        },
        Blip = {
            Allowed = true,
            Name = "rhodes store",
            sprite = 1475879922,
            Pos = vector3(1330.227, -1293.41, 76.021),
        },
        Npc = {
            Pos = vector4(1330.227, -1293.41, 76.021, 68.88),
            distanceRemoveNpc = 20.0,
            Allowed = true,
            Model = "S_M_M_UNIBUTCHERS_01",
        },

        storeName = "Rhodes",
        PromptName = " general store",
        distanceOpenStore = 5.0,
        AllowedJobs = {},
        JobGrade = 0,
        -- * store categories allow which category to show in the store
        category = {
			
            { label = "Food",    Type = "Food",    desc = "delicious Food", img = "consumable_bread_roll" },
            { label = "Tools",   Type = "Tools",   desc = "useful Tools",   img = "butcher_table_production" },
            { label = "Meds", Type = "Meds", desc = "Meds",    img = "bandage" },
			{ label = "Cooking", Type = "cooking", desc = "Cooking Items",    img = "upgrade_upg_cooking_spit" },
			{ label = "Crafting", Type = "crafting", desc = "Crafting Items",    img = "weapon_melee_hammer" },
			{ label = "Drinks", Type = "Drinks", desc = "Drinks",    img = "beer" },
			{ label = "Pets", Type = "Pets", desc = "Pet Items",    img = "DogFood" },
			{ label = "AnimalsandPelts",    Type = "AnimalsandPelts",    desc = "Nice Pelts And Stuff", img = "wolf_pelt" },
            { label = "Legendary",   Type = "Legendary",   desc = "Legendary Items",   img = "provision_role_naturalist_carcass_ram_legendary_02" },
			{ label = "Seeds", Type = "Seeds", desc = "Seeds",    img = "Wheat_Seed" },
			{ label = "daweed", Type = "daweed", desc = "daweed Stuff",    img = "joint" },
			{ label = "Preciousitems", Type = "Preciousitems", desc = "Buy Preciousitems",    img = "jewel_ruby1" },
			{ label = "Valuables",   Type = "Valuables",   desc = "Valuable Items",   img = "jewel_ruby2" },
			{ label = "Fishing", Type = "Fishing", desc = "Fishing Stuff",    img = "spinner_bait" },
			{ label = "Coins", Type = "Coins", desc = "Coins",    img = "rescoin" },
			{ label = "Caboom", Type = "Caboom", desc = "Caboom",    img = "dynamite" },
			{ label = "Furniture", Type = "Furniture", desc = "Furniture",    img = "table" },
			{ label = "Meat", Type = "Meat", desc = "Meat",    img = "meat" },
			{ label = "Documents", Type = "Documents", desc = "Documents",    img = "paper" },
			{ label = "Misc", Type = "Misc", desc = "Misc",    img = "lockpick" },
			{ label = "Materials", Type = "Materials", desc = "Materials",    img = "clay" },
			{ label = "Plants", Type = "Plants", desc = "Plants",    img = "Black_Berry" },
			{ label = "Fertilizer", Type = "Fertilizer", desc = "Fertilizer",    img = "fertilizer" },
			{ label = "Liquor", Type = "Liquor", desc = "Liquor",    img = "whisky" },
			{ label = "Orchids", Type = "Orchids", desc = "Orchids",    img = "orchid_mf (2) " },
			{ label = "Sweets", Type = "Sweets", desc = "Sweets",    img = "consumable_chocolatecake " },
			{ label = "Maptools", Type = "Maptools", desc = "Items for Map",    img = "compass " },
        },
        -- * store type allow which type of store to show in the store
        -- * buy and sell USE ENGLISH ONLY
        storeType = {
            { label = "Buy", Type = "buy", desc = "Buy",   img = "Buy" },
			{ label = "Sell", Type = "sell", desc = "Sell", img = "Sell" }
        },
        StoreHoursAllowed = false,
        RandomPrices = true,
        StoreOpen = 8,
        StoreClose = 20,
        DynamicStore = true,

    },
    Strawberry = {
        useRandomLocation = true, -- if true it will pick a random location from the list bellow, good thing for a store that can move and not always in the same place and npc
        possibleLocations = {
            OpenMenu = {
                vector3(-1789.66, -387.918, 159.32), -- valentine
                -- add more it will pick a random location from the list
            },
            Npcs = {
                vector4(-1789.66, -387.918, 159.32, 56.96), --valentine
                -- add more it will pick a random location from the list
            }

        },

        Blip = {
            Allowed = true,
            Name = "strawberry store",
            sprite = 1475879922,
            Pos = vector3(-1789.66, -387.918, 159.32),

        },

        Npc = {
            Pos = vector4(-1789.66, -387.918, 159.32, 56.96),
            distanceRemoveNpc = 20.0,
            Allowed = true,
            Model = "S_M_M_UNIBUTCHERS_01",
        },
        storeName = "Strawberry",
        PromptName = "general store",
        distanceOpenStore = 3.0,
        AllowedJobs = {},
        JobGrade = 0,
        -- * store categories allow which category to show in the store
        category = {
			
            { label = "Food",    Type = "Food",    desc = "delicious Food", img = "consumable_bread_roll" },
            { label = "Tools",   Type = "Tools",   desc = "useful Tools",   img = "butcher_table_production" },
            { label = "Meds", Type = "Meds", desc = "Meds",    img = "bandage" },
			{ label = "Cooking", Type = "cooking", desc = "Cooking Items",    img = "upgrade_upg_cooking_spit" },
			{ label = "Crafting", Type = "crafting", desc = "Crafting Items",    img = "weapon_melee_hammer" },
			{ label = "Drinks", Type = "Drinks", desc = "Drinks",    img = "beer" },
			{ label = "Pets", Type = "Pets", desc = "Pet Items",    img = "DogFood" },
			{ label = "AnimalsandPelts",    Type = "AnimalsandPelts",    desc = "Nice Pelts And Stuff", img = "wolf_pelt" },
            { label = "Legendary",   Type = "Legendary",   desc = "Legendary Items",   img = "provision_role_naturalist_carcass_ram_legendary_02" },
			{ label = "Seeds", Type = "Seeds", desc = "Seeds",    img = "Wheat_Seed" },
			{ label = "daweed", Type = "daweed", desc = "daweed Stuff",    img = "joint" },
			{ label = "Preciousitems", Type = "Preciousitems", desc = "Buy Preciousitems",    img = "jewel_ruby1" },
			{ label = "Valuables",   Type = "Valuables",   desc = "Valuable Items",   img = "jewel_ruby2" },
			{ label = "Fishing", Type = "Fishing", desc = "Fishing Stuff",    img = "spinner_bait" },
			{ label = "Coins", Type = "Coins", desc = "Coins",    img = "rescoin" },
			{ label = "Caboom", Type = "Caboom", desc = "Caboom",    img = "dynamite" },
			{ label = "Furniture", Type = "Furniture", desc = "Furniture",    img = "table" },
			{ label = "Meat", Type = "Meat", desc = "Meat",    img = "meat" },
			{ label = "Documents", Type = "Documents", desc = "Documents",    img = "paper" },
			{ label = "Misc", Type = "Misc", desc = "Misc",    img = "lockpick" },
			{ label = "Materials", Type = "Materials", desc = "Materials",    img = "clay" },
			{ label = "Plants", Type = "Plants", desc = "Plants",    img = "Black_Berry" },
			{ label = "Fertilizer", Type = "Fertilizer", desc = "Fertilizer",    img = "fertilizer" },
			{ label = "Liquor", Type = "Liquor", desc = "Liquor",    img = "whisky" },
			{ label = "Orchids", Type = "Orchids", desc = "Orchids",    img = "orchid_mf (2) " },
			{ label = "Sweets", Type = "Sweets", desc = "Sweets",    img = "consumable_chocolatecake " },
			{ label = "Maptools", Type = "Maptools", desc = "Items for Map",    img = "compass " },
        },
        -- * store type allow which type of store to show in the store
        -- * buy and sell USE ENGLISH ONLY
        storeType = {
            { label = "Buy", Type = "buy", desc = "Buy",   img = "Buy" },
			{ label = "Sell", Type = "sell", desc = "Sell", img = "Sell" }
        },
        StoreHoursAllowed = false,
        RandomPrices = true,
        StoreOpen = 6,
        StoreClose = 23,
        DynamicStore = true,

    },
    Blackwater = {
        useRandomLocation = true, -- if true it will pick a random location from the list bellow, good thing for a store that can move and not always in the same place and npc
        possibleLocations = {
            OpenMenu = {
                vector3(-784.738, -1321.73, 42.884), -- valentine
                -- add more it will pick a random location from the list
            },
            Npcs = {
                vector4(-784.738, -1321.73, 42.884, 179.63), --valentine
                -- add more it will pick a random location from the list
            }

        },
        Blip = {
            Allowed = true,
            Name = "Blackwater Store",
            sprite = 1475879922,
            Pos = vector3(-784.738, -1321.73, 42.884),
        },
        Npc = {
            Pos = vector4(-784.738, -1321.73, 42.884, 179.63),
            distanceRemoveNpc = 20.0,
            Allowed = true,
            Model = "S_M_M_UNIBUTCHERS_01",
        },
        storeName = "Blackwater",
        PromptName = "general store",
        distanceOpenStore = 5.0,
        AllowedJobs = {},
        JobGrade = 0,
        -- * store categories allow which category to show in the store
        category = {
			
            { label = "Food",    Type = "Food",    desc = "delicious Food", img = "consumable_bread_roll" },
            { label = "Tools",   Type = "Tools",   desc = "useful Tools",   img = "butcher_table_production" },
            { label = "Meds", Type = "Meds", desc = "Meds",    img = "bandage" },
			{ label = "Cooking", Type = "cooking", desc = "Cooking Items",    img = "upgrade_upg_cooking_spit" },
			{ label = "Crafting", Type = "crafting", desc = "Crafting Items",    img = "weapon_melee_hammer" },
			{ label = "Drinks", Type = "Drinks", desc = "Drinks",    img = "beer" },
			{ label = "Pets", Type = "Pets", desc = "Pet Items",    img = "DogFood" },
			{ label = "AnimalsandPelts",    Type = "AnimalsandPelts",    desc = "Nice Pelts And Stuff", img = "wolf_pelt" },
            { label = "Legendary",   Type = "Legendary",   desc = "Legendary Items",   img = "provision_role_naturalist_carcass_ram_legendary_02" },
			{ label = "Seeds", Type = "Seeds", desc = "Seeds",    img = "Wheat_Seed" },
			{ label = "daweed", Type = "daweed", desc = "daweed Stuff",    img = "joint" },
			{ label = "Preciousitems", Type = "Preciousitems", desc = "Buy Preciousitems",    img = "jewel_ruby1" },
			{ label = "Valuables",   Type = "Valuables",   desc = "Valuable Items",   img = "jewel_ruby2" },
			{ label = "Fishing", Type = "Fishing", desc = "Fishing Stuff",    img = "spinner_bait" },
			{ label = "Coins", Type = "Coins", desc = "Coins",    img = "rescoin" },
			{ label = "Caboom", Type = "Caboom", desc = "Caboom",    img = "dynamite" },
			{ label = "Furniture", Type = "Furniture", desc = "Furniture",    img = "table" },
			{ label = "Meat", Type = "Meat", desc = "Meat",    img = "meat" },
			{ label = "Documents", Type = "Documents", desc = "Documents",    img = "paper" },
			{ label = "Misc", Type = "Misc", desc = "Misc",    img = "lockpick" },
			{ label = "Materials", Type = "Materials", desc = "Materials",    img = "clay" },
			{ label = "Plants", Type = "Plants", desc = "Plants",    img = "Black_Berry" },
			{ label = "Fertilizer", Type = "Fertilizer", desc = "Fertilizer",    img = "fertilizer" },
			{ label = "Liquor", Type = "Liquor", desc = "Liquor",    img = "whisky" },
			{ label = "Orchids", Type = "Orchids", desc = "Orchids",    img = "orchid_mf (2) " },
			{ label = "Sweets", Type = "Sweets", desc = "Sweets",    img = "consumable_chocolatecake " },
			{ label = "Maptools", Type = "Maptools", desc = "Items for Map",    img = "compass " },
        },
        -- * store type allow which type of store to show in the store
        -- * buy and sell USE ENGLISH ONLY
        storeType = {
            { label = "Buy", Type = "buy", desc = "Buy",   img = "Buy" },
			{ label = "Sell", Type = "sell", desc = "Sell", img = "Sell" }
        },
        StoreHoursAllowed = false,
        RandomPrices = true,
        StoreOpen = 7,
        StoreClose = 21,
        DynamicStore = true,

    },
    Armadillo = {
        useRandomLocation = true, -- if true it will pick a random location from the list bellow, good thing for a store that can move and not always in the same place and npc
        possibleLocations = {
            OpenMenu = {
                vector3(-3687.34, -2623.53, -13.43), -- valentine
                -- add more it will pick a random location from the list
            },
            Npcs = {
                vector4(-3687.34, -2623.53, -13.43, -85.32), --valentine
                -- add more it will pick a random location from the list
            }

        },
        Blip = {
            Allowed = true,
            Name = "Armadillo Store",
            sprite = 1475879922,
            Pos = vector3(-3687.34, -2623.53, -13.43),
        },
        Npc = {
            Pos = vector4(-3687.34, -2623.53, -13.43, -85.32),
            distanceRemoveNpc = 20.0,
            Allowed = true,
            Model = "S_M_M_UNIBUTCHERS_01",
        },

        storeName = "Armadillo",
        PromptName = "general store",
        distanceOpenStore = 3.0,
        AllowedJobs = {},
        JobGrade = 0,
        -- * store categories allow which category to show in the store
        category = {
			
            { label = "Food",    Type = "Food",    desc = "delicious Food", img = "consumable_bread_roll" },
            { label = "Tools",   Type = "Tools",   desc = "useful Tools",   img = "butcher_table_production" },
            { label = "Meds", Type = "Meds", desc = "Meds",    img = "bandage" },
			{ label = "Cooking", Type = "cooking", desc = "Cooking Items",    img = "upgrade_upg_cooking_spit" },
			{ label = "Crafting", Type = "crafting", desc = "Crafting Items",    img = "weapon_melee_hammer" },
			{ label = "Drinks", Type = "Drinks", desc = "Drinks",    img = "beer" },
			{ label = "Pets", Type = "Pets", desc = "Pet Items",    img = "DogFood" },
			{ label = "AnimalsandPelts",    Type = "AnimalsandPelts",    desc = "Nice Pelts And Stuff", img = "wolf_pelt" },
            { label = "Legendary",   Type = "Legendary",   desc = "Legendary Items",   img = "provision_role_naturalist_carcass_ram_legendary_02" },
			{ label = "Seeds", Type = "Seeds", desc = "Seeds",    img = "Wheat_Seed" },
			{ label = "daweed", Type = "daweed", desc = "daweed Stuff",    img = "joint" },
			{ label = "Preciousitems", Type = "Preciousitems", desc = "Buy Preciousitems",    img = "jewel_ruby1" },
			{ label = "Valuables",   Type = "Valuables",   desc = "Valuable Items",   img = "jewel_ruby2" },
			{ label = "Fishing", Type = "Fishing", desc = "Fishing Stuff",    img = "spinner_bait" },
			{ label = "Coins", Type = "Coins", desc = "Coins",    img = "rescoin" },
			{ label = "Caboom", Type = "Caboom", desc = "Caboom",    img = "dynamite" },
			{ label = "Furniture", Type = "Furniture", desc = "Furniture",    img = "table" },
			{ label = "Meat", Type = "Meat", desc = "Meat",    img = "meat" },
			{ label = "Documents", Type = "Documents", desc = "Documents",    img = "paper" },
			{ label = "Misc", Type = "Misc", desc = "Misc",    img = "lockpick" },
			{ label = "Materials", Type = "Materials", desc = "Materials",    img = "clay" },
			{ label = "Plants", Type = "Plants", desc = "Plants",    img = "Black_Berry" },
			{ label = "Fertilizer", Type = "Fertilizer", desc = "Fertilizer",    img = "fertilizer" },
			{ label = "Liquor", Type = "Liquor", desc = "Liquor",    img = "whisky" },
			{ label = "Orchids", Type = "Orchids", desc = "Orchids",    img = "orchid_mf (2) " },
			{ label = "Sweets", Type = "Sweets", desc = "Sweets",    img = "consumable_chocolatecake " },
			{ label = "Maptools", Type = "Maptools", desc = "Items for Map",    img = "compass " },
        },
        -- * store type allow which type of store to show in the store
        -- * buy and sell USE ENGLISH ONLY
        storeType = {
            { label = "Buy", Type = "buy", desc = "Buy",   img = "Buy" },
			{ label = "Sell", Type = "sell", desc = "Sell", img = "Sell" }
        },
        StoreHoursAllowed = false,
        RandomPrices = true,
        StoreOpen = 7,
        StoreClose = 21,
        DynamicStore = true,

    },
    Tumbleweed = {
        useRandomLocation = true, -- if true it will pick a random location from the list bellow, good thing for a store that can move and not always in the same place and npc
        possibleLocations = {
            OpenMenu = {
                vector3(-5485.70, -2938.08, -0.299), -- valentine
                -- add more it will pick a random location from the list
            },
            Npcs = {
                vector4(-5485.70, -2938.08, -0.299, 127.72), --valentine
                -- add more it will pick a random location from the list
            }

        },
        Blip = {
            Allowed = true,
            Name = "Tumbleweed Store",
            sprite = 1475879922,
            Pos = vector3(-5485.70, -2938.08, -0.299),
        },
        Npc = {
            Pos = vector4(-5485.70, -2938.08, -0.299, 127.72),
            distanceRemoveNpc = 20.0,
            Allowed = true,
            Model = "S_M_M_UNIBUTCHERS_01",
        },
        storeName = "Tumbleweed",
        PromptName = "general store",
        distanceOpenStore = 3.0,
        AllowedJobs = {},
        JobGrade = 0,
        -- * store categories allow which category to show in the store
        category = {
			
            { label = "Food",    Type = "Food",    desc = "delicious Food", img = "consumable_bread_roll" },
            { label = "Tools",   Type = "Tools",   desc = "useful Tools",   img = "butcher_table_production" },
            { label = "Meds", Type = "Meds", desc = "Meds",    img = "bandage" },
			{ label = "Cooking", Type = "cooking", desc = "Cooking Items",    img = "upgrade_upg_cooking_spit" },
			{ label = "Crafting", Type = "crafting", desc = "Crafting Items",    img = "weapon_melee_hammer" },
			{ label = "Drinks", Type = "Drinks", desc = "Drinks",    img = "beer" },
			{ label = "Pets", Type = "Pets", desc = "Pet Items",    img = "DogFood" },
			{ label = "AnimalsandPelts",    Type = "AnimalsandPelts",    desc = "Nice Pelts And Stuff", img = "wolf_pelt" },
            { label = "Legendary",   Type = "Legendary",   desc = "Legendary Items",   img = "provision_role_naturalist_carcass_ram_legendary_02" },
			{ label = "Seeds", Type = "Seeds", desc = "Seeds",    img = "Wheat_Seed" },
			{ label = "daweed", Type = "daweed", desc = "daweed Stuff",    img = "joint" },
			{ label = "Preciousitems", Type = "Preciousitems", desc = "Buy Preciousitems",    img = "jewel_ruby1" },
			{ label = "Valuables",   Type = "Valuables",   desc = "Valuable Items",   img = "jewel_ruby2" },
			{ label = "Fishing", Type = "Fishing", desc = "Fishing Stuff",    img = "spinner_bait" },
			{ label = "Coins", Type = "Coins", desc = "Coins",    img = "rescoin" },
			{ label = "Caboom", Type = "Caboom", desc = "Caboom",    img = "dynamite" },
			{ label = "Furniture", Type = "Furniture", desc = "Furniture",    img = "table" },
			{ label = "Meat", Type = "Meat", desc = "Meat",    img = "meat" },
			{ label = "Documents", Type = "Documents", desc = "Documents",    img = "paper" },
			{ label = "Misc", Type = "Misc", desc = "Misc",    img = "lockpick" },
			{ label = "Materials", Type = "Materials", desc = "Materials",    img = "clay" },
			{ label = "Plants", Type = "Plants", desc = "Plants",    img = "Black_Berry" },
			{ label = "Fertilizer", Type = "Fertilizer", desc = "Fertilizer",    img = "fertilizer" },
			{ label = "Liquor", Type = "Liquor", desc = "Liquor",    img = "whisky" },
			{ label = "Orchids", Type = "Orchids", desc = "Orchids",    img = "orchid_mf (2) " },
			{ label = "Sweets", Type = "Sweets", desc = "Sweets",    img = "consumable_chocolatecake " },
			{ label = "Maptools", Type = "Maptools", desc = "Items for Map",    img = "compass " },
        },
        -- * store type allow which type of store to show in the store
        -- * buy and sell USE ENGLISH ONLY
        storeType = {
            { label = "Buy", Type = "buy", desc = "Buy",   img = "Buy" },
			{ label = "Sell", Type = "sell", desc = "Sell", img = "Sell" }
        },
        StoreHoursAllowed = false,
        RandomPrices = true,
        StoreOpen = 7,
        StoreClose = 21,
        DynamicStore = true,
    },
    StDenis = {
        useRandomLocation = true, -- if true it will pick a random location from the list bellow, good thing for a store that can move and not always in the same place and npc
        possibleLocations = {
            OpenMenu = {
                vector3(2824.863, -1319.74, 45.755), -- valentine
                -- add more it will pick a random location from the list
            },
            Npcs = {
                vector4(2824.863, -1319.74, 45.755, -39.61), --valentine
                -- add more it will pick a random location from the list
            }

        },
        Blip = {
            Allowed = true,
            Name = "St Denis Store",
            sprite = 1475879922,
            Pos = vector3(2824.863, -1319.74, 45.755),
        },
        Npc = {
            Pos = vector4(2824.863, -1319.74, 45.755, -39.61),
            distanceRemoveNpc = 20.0,
            Allowed = true,
            Model = "U_M_M_NbxGeneralStoreOwner_01",
        },

        storeName = "ST Denis",
        PromptName = "general store",
        distanceOpenStore = 2.0,
        AllowedJobs = {},
        JobGrade = 0,
        -- * store categories allow which category to show in the store
        category = {
			
            { label = "Food",    Type = "Food",    desc = "delicious Food", img = "consumable_bread_roll" },
            { label = "Tools",   Type = "Tools",   desc = "useful Tools",   img = "butcher_table_production" },
            { label = "Meds", Type = "Meds", desc = "Meds",    img = "bandage" },
			{ label = "Cooking", Type = "cooking", desc = "Cooking Items",    img = "upgrade_upg_cooking_spit" },
			{ label = "Crafting", Type = "crafting", desc = "Crafting Items",    img = "weapon_melee_hammer" },
			{ label = "Drinks", Type = "Drinks", desc = "Drinks",    img = "beer" },
			{ label = "Pets", Type = "Pets", desc = "Pet Items",    img = "DogFood" },
			{ label = "AnimalsandPelts",    Type = "AnimalsandPelts",    desc = "Nice Pelts And Stuff", img = "wolf_pelt" },
            { label = "Legendary",   Type = "Legendary",   desc = "Legendary Items",   img = "provision_role_naturalist_carcass_ram_legendary_02" },
			{ label = "Seeds", Type = "Seeds", desc = "Seeds",    img = "Wheat_Seed" },
			{ label = "daweed", Type = "daweed", desc = "daweed Stuff",    img = "joint" },
			{ label = "Preciousitems", Type = "Preciousitems", desc = "Buy Preciousitems",    img = "jewel_ruby1" },
			{ label = "Valuables",   Type = "Valuables",   desc = "Valuable Items",   img = "jewel_ruby2" },
			{ label = "Fishing", Type = "Fishing", desc = "Fishing Stuff",    img = "spinner_bait" },
			{ label = "Coins", Type = "Coins", desc = "Coins",    img = "rescoin" },
			{ label = "Caboom", Type = "Caboom", desc = "Caboom",    img = "dynamite" },
			{ label = "Furniture", Type = "Furniture", desc = "Furniture",    img = "table" },
			{ label = "Meat", Type = "Meat", desc = "Meat",    img = "meat" },
			{ label = "Documents", Type = "Documents", desc = "Documents",    img = "paper" },
			{ label = "Misc", Type = "Misc", desc = "Misc",    img = "lockpick" },
			{ label = "Materials", Type = "Materials", desc = "Materials",    img = "clay" },
			{ label = "Plants", Type = "Plants", desc = "Plants",    img = "Black_Berry" },
			{ label = "Fertilizer", Type = "Fertilizer", desc = "Fertilizer",    img = "fertilizer" },
			{ label = "Liquor", Type = "Liquor", desc = "Liquor",    img = "whisky" },
			{ label = "Orchids", Type = "Orchids", desc = "Orchids",    img = "orchid_mf (2) " },
			{ label = "Sweets", Type = "Sweets", desc = "Sweets",    img = "consumable_chocolatecake " },
			{ label = "Maptools", Type = "Maptools", desc = "Items for Map",    img = "compass " },
        },
        -- * store type allow which type of store to show in the store
        -- * buy and sell USE ENGLISH ONLY
        storeType = {
            { label = "Buy", Type = "buy", desc = "Buy",   img = "Buy" },
			{ label = "Sell", Type = "sell", desc = "Sell", img = "Sell" }
        },
        StoreHoursAllowed = false,
        RandomPrices = true,
        StoreOpen = 7,
        StoreClose = 21,
        DynamicStore = true,

    },
    Vanhorn = {
        useRandomLocation = true, -- if true it will pick a random location from the list bellow, good thing for a store that can move and not always in the same place and npc
        possibleLocations = {
            OpenMenu = {
                vector3(3025.420, 561.7910, 43.722), -- valentine
                -- add more it will pick a random location from the list
            },
            Npcs = {
                vector4(3025.420, 561.7910, 43.722, -99.20), --valentine
                -- add more it will pick a random location from the list
            }

        },
        Blip = {
            Allowed = true,
            Name = "Vanhorn Store",
            sprite = 1475879922,
            Pos = vector3(3025.420, 561.7910, 43.722),
        },
        Npc = {
            Pos = vector4(3025.420, 561.7910, 43.722, -99.20),
            distanceRemoveNpc = 20.0,
            Allowed = true,
            Model = "U_M_M_NbxGeneralStoreOwner_01",
        },
        storeName = "Vanhorn",
        PromptName = "general store",
        distanceOpenStore = 2.5,
        AllowedJobs = {},
        JobGrade = 0,
        -- * store categories allow which category to show in the store
        category = {
			
            { label = "Food",    Type = "Food",    desc = "delicious Food", img = "consumable_bread_roll" },
            { label = "Tools",   Type = "Tools",   desc = "useful Tools",   img = "butcher_table_production" },
            { label = "Meds", Type = "Meds", desc = "Meds",    img = "bandage" },
			{ label = "Cooking", Type = "cooking", desc = "Cooking Items",    img = "upgrade_upg_cooking_spit" },
			{ label = "Crafting", Type = "crafting", desc = "Crafting Items",    img = "weapon_melee_hammer" },
			{ label = "Drinks", Type = "Drinks", desc = "Drinks",    img = "beer" },
			{ label = "Pets", Type = "Pets", desc = "Pet Items",    img = "DogFood" },
			{ label = "AnimalsandPelts",    Type = "AnimalsandPelts",    desc = "Nice Pelts And Stuff", img = "wolf_pelt" },
            { label = "Legendary",   Type = "Legendary",   desc = "Legendary Items",   img = "provision_role_naturalist_carcass_ram_legendary_02" },
			{ label = "Seeds", Type = "Seeds", desc = "Seeds",    img = "Wheat_Seed" },
			{ label = "daweed", Type = "daweed", desc = "daweed Stuff",    img = "joint" },
			{ label = "Preciousitems", Type = "Preciousitems", desc = "Buy Preciousitems",    img = "jewel_ruby1" },
			{ label = "Valuables",   Type = "Valuables",   desc = "Valuable Items",   img = "jewel_ruby2" },
			{ label = "Fishing", Type = "Fishing", desc = "Fishing Stuff",    img = "spinner_bait" },
			{ label = "Coins", Type = "Coins", desc = "Coins",    img = "rescoin" },
			{ label = "Caboom", Type = "Caboom", desc = "Caboom",    img = "dynamite" },
			{ label = "Furniture", Type = "Furniture", desc = "Furniture",    img = "table" },
			{ label = "Meat", Type = "Meat", desc = "Meat",    img = "meat" },
			{ label = "Documents", Type = "Documents", desc = "Documents",    img = "paper" },
			{ label = "Misc", Type = "Misc", desc = "Misc",    img = "lockpick" },
			{ label = "Materials", Type = "Materials", desc = "Materials",    img = "clay" },
			{ label = "Plants", Type = "Plants", desc = "Plants",    img = "Black_Berry" },
			{ label = "Fertilizer", Type = "Fertilizer", desc = "Fertilizer",    img = "fertilizer" },
			{ label = "Liquor", Type = "Liquor", desc = "Liquor",    img = "whisky" },
			{ label = "Orchids", Type = "Orchids", desc = "Orchids",    img = "orchid_mf (2) " },
			{ label = "Sweets", Type = "Sweets", desc = "Sweets",    img = "consumable_chocolatecake " },
			{ label = "Maptools", Type = "Maptools", desc = "Items for Map",    img = "compass " },
        },
        -- * store type allow which type of store to show in the store
        -- * buy and sell USE ENGLISH ONLY
        storeType = {
            { label = "Buy", Type = "buy", desc = "Buy",   img = "Buy" },
			{ label = "Sell", Type = "sell", desc = "Sell", img = "Sell" }
        },
        StoreHoursAllowed = false,
        RandomPrices = true,
        StoreOpen = 7,
        StoreClose = 21,
        DynamicStore = true,

    },
    BlackwaterFishing = {
        useRandomLocation = true, -- if true it will pick a random location from the list bellow, good thing for a store that can move and not always in the same place and npc
        possibleLocations = {
            OpenMenu = {
                vector3(-756.069, -1360.76, 43.724), -- valentine
                -- add more it will pick a random location from the list
            },
            Npcs = {
                vector4(-756.069, -1360.76, 43.724, -90.80), --valentine
                -- add more it will pick a random location from the list
            }

        },
        Blip = {
            Allowed = true,
            Name = "Blackwater Fishing Store",
            sprite = 3442726182,
            Pos = vector3(-756.069, -1360.76, 43.724),
        },
        Npc = {
            Pos = vector4(-756.069, -1360.76, 43.724, -90.80),
            distanceRemoveNpc = 20.0,
            Allowed = true,
            Model = "U_M_M_NbxGeneralStoreOwner_01",
        },

        blipAllowed = true,
        BlipName = "Fishing store",
        storeName = "Bait Shop",
        PromptName = "fishing store",
        distanceOpenStore = 2.5,
        AllowedJobs = {}, -- jobs allowed
        JobGrade = 0,
        -- * store categories allow which category to show in the store
        category = {
            { label = "Fish",    Type = "Fish",    desc = "Buy Fish", img = "A_C_FISHRAINBOWTROUT_01_LG" },
            { label = "Bait",   Type = "Bait",   desc = "Buy Bait",   img = "fishbait" },
            { label = "Meds", Type = "Meds", desc = "Meds",    img = "bandage" },
        },
        -- * store type allow which type of store to show in the store
        -- * buy and sell USE ENGLISH ONLY
        storeType = {
            { label = "Buy", Type = "buy", desc = "Buy",   img = "Buy" },
			{ label = "Sell", Type = "sell", desc = "Sell", img = "Sell" }
        },
        StoreHoursAllowed = false,
        RandomPrices = true,
        StoreOpen = 7,
        StoreClose = 21,
        DynamicStore = true,
    },
	SaintDenisTrapper = {
        useRandomLocation = true, -- if true it will pick a random location from the list bellow, good thing for a store that can move and not always in the same place and npc
        possibleLocations = {
            OpenMenu = {
                vector3(2832.62, -1223.6, 47.61), -- valentine
                -- add more it will pick a random location from the list
            },
            Npcs = {
                vector4(2832.62, -1223.6, 47.61, 183.79), --valentine
                -- add more it will pick a random location from the list
            }

        },
        Blip = {
            Allowed = true,
            Name = "Animal Trapper Store",
            sprite = -1406874050,
            Pos = vector3(2832.62, -1223.6, 47.61),
        },
        Npc = {
            Pos = vector4(2832.62, -1223.6, 47.61, 183.79),
            distanceRemoveNpc = 20.0,
            Allowed = true,
            Model = "u_m_m_sdtrapper_01",
        },

        blipAllowed = true,
        BlipName = "Trapper",
        storeName = "Animal Trapper Store",
        PromptName = "Animal Trapper Store",
        distanceOpenStore = 2.5,
        AllowedJobs = {}, -- jobs allowed
        JobGrade = 0,
        -- * store categories allow which category to show in the store
        category = {
            { label = "AnimalsandPelts",    Type = "AnimalsandPelts",    desc = "Nice Pelts And Stuff", img = "wolf_pelt" },
            { label = "Legendary",   Type = "Legendary",   desc = "Legendary Items",   img = "provision_role_naturalist_carcass_ram_legendary_02" },
            { label = "Meds", Type = "Meds", desc = "Meds",    img = "bandage" },
			{ label = "Maptools", Type = "Maptools", desc = "Items for Map",    img = "compass " },
        },
        -- * store type allow which type of store to show in the store
        -- * buy and sell USE ENGLISH ONLY
        storeType = {
            { label = "Buy", Type = "buy", desc = "Buy",   img = "Buy" },
			{ label = "Sell", Type = "sell", desc = "Sell", img = "Sell" }
        },
        StoreHoursAllowed = false,
        RandomPrices = true,
        StoreOpen = 7,
        StoreClose = 21,
        DynamicStore = true,
    },
	ElysianPoolTrapper = {
        useRandomLocation = true, -- if true it will pick a random location from the list bellow, good thing for a store that can move and not always in the same place and npc
        possibleLocations = {
            OpenMenu = {
                vector3(2075.1, 1000.12, 112.5), -- valentine
                -- add more it will pick a random location from the list
            },
            Npcs = {
                vector4(2075.1, 1000.12, 112.5, 283.1), --valentine
                -- add more it will pick a random location from the list
            }

        },
        Blip = {
            Allowed = true,
            Name = "Animal Trapper",
            sprite = -1406874050,
            Pos = vector3(2075.1, 1000.12, 112.5),
        },
        Npc = {
            Pos = vector4(2075.1, 1000.12, 112.5, 283.1),
            distanceRemoveNpc = 20.0,
            Allowed = true,
            Model = "u_m_m_sdtrapper_01",
        },

        blipAllowed = true,
        BlipName = "Animal Trapper",
        storeName = "Animal Trapper",
        PromptName = "Animal Trapper",
        distanceOpenStore = 2.5,
        AllowedJobs = {}, -- jobs allowed
        JobGrade = 0,
        -- * store categories allow which category to show in the store
        category = {
            { label = "AnimalsandPelts",    Type = "AnimalsandPelts",    desc = "Nice Pelts And Stuff", img = "wolf_pelt" },
            { label = "Legendary",   Type = "Legendary",   desc = "Legendary Items",   img = "provision_role_naturalist_carcass_ram_legendary_02" },
            { label = "Meds", Type = "Meds", desc = "Meds",    img = "bandage" },
			{ label = "Maptools", Type = "Maptools", desc = "Items for Map",    img = "compass " },
        },
        -- * store type allow which type of store to show in the store
        -- * buy and sell USE ENGLISH ONLY
        storeType = {
            { label = "Buy", Type = "buy", desc = "Buy",   img = "Buy" },
			{ label = "Sell", Type = "sell", desc = "Sell", img = "Sell" }
        },
        StoreHoursAllowed = false,
        RandomPrices = true,
        StoreOpen = 7,
        StoreClose = 21,
        DynamicStore = true,
    },
	NearStrawberryTrapper = {
        useRandomLocation = true, -- if true it will pick a random location from the list bellow, good thing for a store that can move and not always in the same place and npc
        possibleLocations = {
            OpenMenu = {
                vector3(-2843.97, 136.79, 184.71), -- valentine
                -- add more it will pick a random location from the list
            },
            Npcs = {
                vector4(-2843.97, 136.79, 184.71, 297.3), --valentine
                -- add more it will pick a random location from the list
            }

        },
        Blip = {
            Allowed = true,
            Name = "Animal Trapper",
            sprite = -1406874050,
            Pos = vector3(-2843.97, 136.79, 184.71),
        },
        Npc = {
            Pos = vector4(-2843.97, 136.79, 184.71, 297.3),
            distanceRemoveNpc = 20.0,
            Allowed = true,
            Model = "u_m_m_sdtrapper_01",
        },

        blipAllowed = true,
        BlipName = "Animal Trapper",
        storeName = "Animal Trapper",
        PromptName = "Animal Trapper",
        distanceOpenStore = 2.5,
        AllowedJobs = {}, -- jobs allowed
        JobGrade = 0,
        -- * store categories allow which category to show in the store
        category = {
            { label = "AnimalsandPelts",    Type = "AnimalsandPelts",    desc = "Nice Pelts And Stuff", img = "wolf_pelt" },
            { label = "Legendary",   Type = "Legendary",   desc = "Legendary Items",   img = "provision_role_naturalist_carcass_ram_legendary_02" },
            { label = "Meds", Type = "Meds", desc = "Meds",    img = "bandage" },
			{ label = "Maptools", Type = "Maptools", desc = "Items for Map",    img = "compass " },
        },
        -- * store type allow which type of store to show in the store
        -- * buy and sell USE ENGLISH ONLY
        storeType = {
            { label = "Buy", Type = "buy", desc = "Buy",   img = "Buy" },
			{ label = "Sell", Type = "sell", desc = "Sell", img = "Sell" }
        },
        StoreHoursAllowed = false,
        RandomPrices = true,
        StoreOpen = 7,
        StoreClose = 21,
        DynamicStore = true,
    },
	NearRiggsStationTrapper = {
        useRandomLocation = true, -- if true it will pick a random location from the list bellow, good thing for a store that can move and not always in the same place and npc
        possibleLocations = {
            OpenMenu = {
                vector3(-1007.85, -541.51, 99.06), -- valentine
                -- add more it will pick a random location from the list
            },
            Npcs = {
                vector4(-1007.85, -541.51, 99.06, 288.19), --valentine
                -- add more it will pick a random location from the list
            }

        },
        Blip = {
            Allowed = true,
            Name = "Animal Trapper Store",
            sprite = -1406874050,
            Pos = vector3(-1007.85, -541.51, 99.06),
        },
        Npc = {
            Pos = vector4(-1007.85, -541.51, 99.06, 288.19),
            distanceRemoveNpc = 20.0,
            Allowed = true,
            Model = "u_m_m_sdtrapper_01",
        },

        blipAllowed = true,
        BlipName = "Animal Trapper",
        storeName = "Animal Trapper",
        PromptName = "Animal Trapper",
        distanceOpenStore = 2.5,
        AllowedJobs = {}, -- jobs allowed
        JobGrade = 0,
        -- * store categories allow which category to show in the store
        category = {
            { label = "AnimalsandPelts",    Type = "AnimalsandPelts",    desc = "Nice Pelts And Stuff", img = "wolf_pelt" },
            { label = "Legendary",   Type = "Legendary",   desc = "Legendary Items",   img = "provision_role_naturalist_carcass_ram_legendary_02" },
            { label = "Meds", Type = "Meds", desc = "Meds",    img = "bandage" },
			{ label = "Maptools", Type = "Maptools", desc = "Items for Map",    img = "compass " },
        },
        -- * store type allow which type of store to show in the store
        -- * buy and sell USE ENGLISH ONLY
        storeType = {
            { label = "Buy", Type = "buy", desc = "Buy",   img = "Buy" },
			{ label = "Sell", Type = "sell", desc = "Sell", img = "Sell" }
        },
        StoreHoursAllowed = false,
        RandomPrices = true,
        StoreOpen = 7,
        StoreClose = 21,
        DynamicStore = true,
    },
	TallTreesTrapper = {
        useRandomLocation = true, -- if true it will pick a random location from the list bellow, good thing for a store that can move and not always in the same place and npc
        possibleLocations = {
            OpenMenu = {
                vector3(-2251.59, -1915.18, 116.97), -- valentine
                -- add more it will pick a random location from the list
            },
            Npcs = {
                vector4(-2251.59, -1915.18, 116.97, 198.68), --valentine
                -- add more it will pick a random location from the list
            }

        },
        Blip = {
            Allowed = true,
            Name = "Animal Trapper Store",
            sprite = -1406874050,
            Pos = vector3(-2251.59, -1915.18, 116.97),
        },
        Npc = {
            Pos = vector4(-2251.59, -1915.18, 116.97, 198.68),
            distanceRemoveNpc = 20.0,
            Allowed = true,
            Model = "u_m_m_sdtrapper_01",
        },

        blipAllowed = true,
        BlipName = "Animal Trapper",
        storeName = "Animal Trapper",
        PromptName = "Animal Trapper",
        distanceOpenStore = 2.5,
        AllowedJobs = {}, -- jobs allowed
        JobGrade = 0,
        -- * store categories allow which category to show in the store
        category = {
            { label = "AnimalsandPelts",    Type = "AnimalsandPelts",    desc = "Nice Pelts And Stuff", img = "wolf_pelt" },
            { label = "Legendary",   Type = "Legendary",   desc = "Legendary Items",   img = "provision_role_naturalist_carcass_ram_legendary_02" },
            { label = "Meds", Type = "Meds", desc = "Meds",    img = "bandage" },
			{ label = "Maptools", Type = "Maptools", desc = "Items for Map",    img = "compass " },
        },
        -- * store type allow which type of store to show in the store
        -- * buy and sell USE ENGLISH ONLY
        storeType = {
            { label = "Buy", Type = "buy", desc = "Buy",   img = "Buy" },
			{ label = "Sell", Type = "sell", desc = "Sell", img = "Sell" }
        },
        StoreHoursAllowed = false,
        RandomPrices = true,
        StoreOpen = 7,
        StoreClose = 21,
        DynamicStore = true,
    },
	RhodesFence = {
        useRandomLocation = true, -- if true it will pick a random location from the list bellow, good thing for a store that can move and not always in the same place and npc
        possibleLocations = {
            OpenMenu = {
                vector3(1320.55, -1142.38, 82.35), -- valentine
                -- add more it will pick a random location from the list
            },
            Npcs = {
                vector4(1320.55, -1142.38, 82.35, 245.3), --valentine
                -- add more it will pick a random location from the list
            }

        },
        Blip = {
            Allowed = true,
            Name = "Fence Store",
            sprite = -1406874050,
            Pos = vector3(1320.55, -1142.38, 82.35),
        },
        Npc = {
            Pos = vector4(1320.55, -1142.38, 82.35, 245.3),
            distanceRemoveNpc = 20.0,
            Allowed = true,
            Model = "MP_U_M_M_TVLFENCE_01",
        },

        blipAllowed = true,
        BlipName = "Fence Store",
        storeName = "Fence Store",
        PromptName = "Fence Store",
        distanceOpenStore = 2.5,
        AllowedJobs = {}, -- jobs allowed
        JobGrade = 0,
        -- * store categories allow which category to show in the store
        category = {
            { label = "Moonshine",    Type = "Moonshine",    desc = "Nice Moonshine", img = "folder_moonshine_recipes" },
            { label = "Valuables",   Type = "Valuables",   desc = "Valuable Items",   img = "jewel_ruby1" },
            { label = "Meds", Type = "Meds", desc = "Meds",    img = "bandage" },
        },
        -- * store type allow which type of store to show in the store
        -- * buy and sell USE ENGLISH ONLY
        storeType = {
            { label = "Buy", Type = "buy", desc = "Buy",   img = "Buy" },
			{ label = "Sell", Type = "sell", desc = "Sell", img = "Sell" }
        },
        StoreHoursAllowed = false,
        RandomPrices = true,
        StoreOpen = 7,
        StoreClose = 21,
        DynamicStore = true,
    },
	EmeraldRanchFence = {
        useRandomLocation = true, -- if true it will pick a random location from the list bellow, good thing for a store that can move and not always in the same place and npc
        possibleLocations = {
            OpenMenu = {
                vector3(1416.91, 273.7, 89.48), -- valentine
                -- add more it will pick a random location from the list
            },
            Npcs = {
                vector4(1416.91, 273.7, 89.48, 213.81), --valentine
                -- add more it will pick a random location from the list
            }

        },
        Blip = {
            Allowed = true,
            Name = "Fence Store",
            sprite = 531267562,
            Pos = vector3(1416.91, 273.7, 89.48),
        },
        Npc = {
            Pos = vector4(1416.91, 273.7, 89.48, 213.81),
            distanceRemoveNpc = 20.0,
            Allowed = true,
            Model = "MP_U_M_M_TVLFENCE_01",
        },

        blipAllowed = true,
        BlipName = "Fence Store",
        storeName = "Fence Store",
        PromptName = "Fence Store",
        distanceOpenStore = 2.5,
        AllowedJobs = {}, -- jobs allowed
        JobGrade = 0,
        -- * store categories allow which category to show in the store
        category = {
            { label = "Moonshine",    Type = "Moonshine",    desc = "Nice Moonshine", img = "folder_moonshine_recipes" },
            { label = "Valuables",   Type = "Valuables",   desc = "Valuable Items",   img = "jewel_ruby1" },
            { label = "Meds", Type = "Meds", desc = "Meds",    img = "bandage" },
        },
        -- * store type allow which type of store to show in the store
        -- * buy and sell USE ENGLISH ONLY
        storeType = {
            { label = "Buy", Type = "buy", desc = "Buy",   img = "Buy" },
			{ label = "Sell", Type = "sell", desc = "Sell", img = "Sell" }
        },
        StoreHoursAllowed = false,
        RandomPrices = true,
        StoreOpen = 7,
        StoreClose = 21,
        DynamicStore = true,
    },
	SaintDenisFence = {
        useRandomLocation = true, -- if true it will pick a random location from the list bellow, good thing for a store that can move and not always in the same place and npc
        possibleLocations = {
            OpenMenu = {
                vector3(2859.57, -1202.21, 49.54), -- valentine
                -- add more it will pick a random location from the list
            },
            Npcs = {
                vector4(2859.57, -1202.21, 49.54, 17.12), --valentine
                -- add more it will pick a random location from the list
            }

        },
        Blip = {
            Allowed = true,
            Name = "Fence Store",
            sprite = 531267562,
            Pos = vector3(2859.57, -1202.21, 49.54),
        },
        Npc = {
            Pos = vector4(2859.57, -1202.21, 49.54, 17.12),
            distanceRemoveNpc = 20.0,
            Allowed = true,
            Model = "MP_U_M_M_TVLFENCE_01",
        },

        blipAllowed = true,
        BlipName = "Fence Store",
        storeName = "Fence Store",
        PromptName = "Fence Store",
        distanceOpenStore = 2.5,
        AllowedJobs = {}, -- jobs allowed
        JobGrade = 0,
        -- * store categories allow which category to show in the store
        category = {
            { label = "Moonshine",    Type = "Moonshine",    desc = "Nice Moonshine", img = "folder_moonshine_recipes" },
            { label = "Valuables",   Type = "Valuables",   desc = "Valuable Items",   img = "jewel_ruby1" },
            { label = "Meds", Type = "Meds", desc = "Meds",    img = "bandage" },
        },
        -- * store type allow which type of store to show in the store
        -- * buy and sell USE ENGLISH ONLY
        storeType = {
            { label = "Buy", Type = "buy", desc = "Buy",   img = "Buy" },
			{ label = "Sell", Type = "sell", desc = "Sell", img = "Sell" }
        },
        StoreHoursAllowed = false,
        RandomPrices = true,
        StoreOpen = 7,
        StoreClose = 21,
        DynamicStore = true,
    },
	ThievesLandingFence = {
        useRandomLocation = true, -- if true it will pick a random location from the list bellow, good thing for a store that can move and not always in the same place and npc
        possibleLocations = {
            OpenMenu = {
                vector3(-1401.73, -2317.46, 43.57), -- valentine
                -- add more it will pick a random location from the list
            },
            Npcs = {
                vector4(-1401.73, -2317.46, 43.57, 92.7), --valentine
                -- add more it will pick a random location from the list
            }

        },
        Blip = {
            Allowed = true,
            Name = "Fence Store",
            sprite = 531267562,
            Pos = vector3(-1401.73, -2317.46, 43.57),
        },
        Npc = {
            Pos = vector4(-1401.73, -2317.46, 43.57, 92.7),
            distanceRemoveNpc = 20.0,
            Allowed = true,
            Model = "MP_U_M_M_TVLFENCE_01",
        },

        blipAllowed = true,
        BlipName = "Fence Store",
        storeName = "Fence Store",
        PromptName = "Fence Store",
        distanceOpenStore = 2.5,
        AllowedJobs = {}, -- jobs allowed
        JobGrade = 0,
        -- * store categories allow which category to show in the store
        category = {
            { label = "Moonshine",    Type = "Moonshine",    desc = "Nice Moonshine", img = "folder_moonshine_recipes" },
            { label = "Valuables",   Type = "Valuables",   desc = "Valuable Items",   img = "jewel_ruby1" },
            { label = "Meds", Type = "Meds", desc = "Meds",    img = "bandage" },
        },
        -- * store type allow which type of store to show in the store
        -- * buy and sell USE ENGLISH ONLY
        storeType = {
            { label = "Buy", Type = "buy", desc = "Buy",   img = "Buy" },
			{ label = "Sell", Type = "sell", desc = "Sell", img = "Sell" }
        },
        StoreHoursAllowed = false,
        RandomPrices = true,
        StoreOpen = 7,
        StoreClose = 21,
        DynamicStore = true,
    },
	LagrasFishing = {
        useRandomLocation = true, -- if true it will pick a random location from the list bellow, good thing for a store that can move and not always in the same place and npc
        possibleLocations = {
            OpenMenu = {
                vector3(2161.96, -619.9, 42.83), -- valentine
                -- add more it will pick a random location from the list
            },
            Npcs = {
                vector4(2161.96, -619.9, 42.83, 47.52), --valentine
                -- add more it will pick a random location from the list
            }

        },
        Blip = {
            Allowed = true,
            Name = "Fishing store",
            sprite = 3442726182,
            Pos = vector3(2161.96, -619.9, 42.83),
        },
        Npc = {
            Pos = vector4(2161.96, -619.9, 42.83, 47.52),
            distanceRemoveNpc = 20.0,
            Allowed = true,
            Model = "re_prisonwagon_females_01",
        },

        blipAllowed = true,
        BlipName = "Fishing store",
        storeName = "Fishing store",
        PromptName = "Fishing store",
        distanceOpenStore = 2.5,
        AllowedJobs = {}, -- jobs allowed
        JobGrade = 0,
        -- * store categories allow which category to show in the store
        category = {
            { label = "Fish",    Type = "Fish",    desc = "Buy Fish", img = "A_C_FISHRAINBOWTROUT_01_LG" },
            { label = "Bait",   Type = "Bait",   desc = "Buy Bait",   img = "fishbait" },
            { label = "Meds", Type = "Meds", desc = "Meds",    img = "bandage" },
        },
        -- * store type allow which type of store to show in the store
        -- * buy and sell USE ENGLISH ONLY
        storeType = {
            { label = "Buy", Type = "buy", desc = "Buy",   img = "Buy" },
			{ label = "Sell", Type = "sell", desc = "Sell", img = "Sell" }
        },
        StoreHoursAllowed = false,
        RandomPrices = true,
        StoreOpen = 7,
        StoreClose = 21,
        DynamicStore = true,
    },
    Wapiti = {
        useRandomLocation = true, -- if true it will pick a random location from the list bellow, good thing for a store that can move and not always in the same place and npc
        possibleLocations = {
            OpenMenu = {
                vector3(449.7435, 2216.437, 245.30), -- valentine
                -- add more it will pick a random location from the list
            },
            Npcs = {
                vector4(449.7435, 2216.437, 245.30, -73.78), --valentine
                -- add more it will pick a random location from the list
            }
        },
        Blip = {
            Allowed = true,
            Name = "Wapiti Store",
            sprite = 1475879922,
            Pos = vector3(449.7435, 2216.437, 245.30),
        },
        Npc = {
            Pos = vector4(449.7435, 2216.437, 245.30, -73.78),
            distanceRemoveNpc = 20.0,
            Allowed = true,
            Model = "CS_EagleFlies",
        },
        storeName = "Wapiti Shop",
        PromptName = "Native store",
        distanceOpenStore = 2.5,
        AllowedJobs = {}, -- jobs allowed
        JobGrade = 0,
        -- * store categories allow which category to show in the store
        category = {
            { label = "Fish",    Type = "Fish",    desc = "Buy Fish", img = "A_C_FISHRAINBOWTROUT_01_LG" },
            { label = "Bait",   Type = "Bait",   desc = "Buy Bait",   img = "fishbait" },
            { label = "Meds", Type = "Meds", desc = "Meds",    img = "bandage" },
        },
        -- * store type allow which type of store to show in the store
        -- * buy and sell USE ENGLISH ONLY
        storeType = {
            { label = "Buy", Type = "buy", desc = "Buy",   img = "Buy" },
			{ label = "Sell", Type = "sell", desc = "Sell", img = "Sell" }
        },
        StoreHoursAllowed = false,
        RandomPrices = true,
        StoreOpen = 7,
        StoreClose = 21,
        DynamicStore = true,
    }
}

local VorpCore = {}
local VorpInv

local inventory = {}

if Config.vorp then
    TriggerEvent("getCore",function(core)
        VorpCore = core
    end)

    VorpInv = exports.vorp_inventory:vorp_inventoryApi()

    VorpInv.RegisterUsableItem("consumable_haycube", function(data)
        VorpInv.subItem(data.source, "consumable_haycube", 1)
        TriggerClientEvent("syn:haycube", data.source)
    end)
	VorpInv.RegisterUsableItem("horsemeal", function(data)
        VorpInv.subItem(data.source, "horsemeal", 1)
        TriggerClientEvent("syn:horsemeal", data.source)
    end)
    VorpInv.RegisterUsableItem("Wild_Carrot", function(data)
        VorpInv.subItem(data.source, "Wild_Carrot", 1)
        TriggerClientEvent("syn:wildcarrot", data.source)
    end)
	VorpInv.RegisterUsableItem("carrots", function(data)
        VorpInv.subItem(data.source, "carrots", 1)
        TriggerClientEvent("syn:carrot", data.source)
    end)
	VorpInv.RegisterUsableItem("sugarcube", function(data)
        VorpInv.subItem(data.source, "sugarcube", 1)
        TriggerClientEvent("syn:sugarcube", data.source)
    end)
	VorpInv.RegisterUsableItem("apple", function(data)
        VorpInv.subItem(data.source, "apple", 1)
        TriggerClientEvent("syn:apple", data.source)
    end)
	VorpInv.RegisterUsableItem("consumable_peach", function(data)
        VorpInv.subItem(data.source, "consumable_peach", 1)
        TriggerClientEvent("syn:consumable_peach", data.source)
    end)
    VorpInv.RegisterUsableItem("horsebrush", function(data)
        TriggerClientEvent("syn:brush", data.source)
    end)
    VorpInv.RegisterUsableItem("stim", function(data)
        VorpInv.subItem(data.source, "stim", 1)
        TriggerClientEvent("syn:horsestimulant", data.source)
    end)

elseif Config.redem then
    TriggerEvent("redemrp_inventory:getData",function(call)
        inventory = call
    end)

    RegisterServerEvent("RegisterUsableItem:haycube")
    AddEventHandler("RegisterUsableItem:haycube", function(source)
        local _source = source

        local ItemData = inventory.getItem(_source, "haycube")
        ItemData.RemoveItem(1)

        TriggerClientEvent("redem_roleplay:ShowSimpleRightText", _source, "You feed your horse a Hay Cube", 5000)
        TriggerClientEvent("syn:haycube", _source)

    end)
	
	RegisterServerEvent("RegisterUsableItem:horsemeal")
    AddEventHandler("RegisterUsableItem:horsemeal", function(source)
        local _source = source

        local ItemData = inventory.getItem(_source, "horsemeal")
        ItemData.RemoveItem(1)

        TriggerClientEvent("redem_roleplay:ShowSimpleRightText", _source, "You feed your horse a Hay Cube", 5000)
        TriggerClientEvent("syn:horsemeal", _source)

    end)


    RegisterServerEvent("RegisterUsableItem:wildcarrot")
    AddEventHandler("RegisterUsableItem:wildcarrot", function(source)
        local _source = source

        local ItemData = inventory.getItem(_source, "Wild_Carrot")
        ItemData.RemoveItem(1)

        TriggerClientEvent("redem_roleplay:ShowSimpleRightText", _source, "You feed your horse a Wild Carrot", 5000)
        TriggerClientEvent("syn:wildcarrot", _source)

    end)
	
	RegisterServerEvent("RegisterUsableItem:carrot")
    AddEventHandler("RegisterUsableItem:carrot", function(source)
        local _source = source

        local ItemData = inventory.getItem(_source, "carrots")
        ItemData.RemoveItem(1)

        TriggerClientEvent("redem_roleplay:ShowSimpleRightText", _source, "You feed your horse a Carrot", 5000)
        TriggerClientEvent("syn:carrot", _source)

    end)
	
	RegisterServerEvent("RegisterUsableItem:sugarcube")
    AddEventHandler("RegisterUsableItem:sugarcube", function(source)
        local _source = source

        local ItemData = inventory.getItem(_source, "sugarcube")
        ItemData.RemoveItem(1)

        TriggerClientEvent("syn:sugarcube", _source)

    end)
	
	RegisterServerEvent("RegisterUsableItem:apple")
    AddEventHandler("RegisterUsableItem:apple", function(source)
        local _source = source

        local ItemData = inventory.getItem(_source, "apple")
        ItemData.RemoveItem(1)

        TriggerClientEvent("syn:apple", _source)

    end)
	
	RegisterServerEvent("RegisterUsableItem:consumable_peach")
    AddEventHandler("RegisterUsableItem:consumable_peach", function(source)
        local _source = source

        local ItemData = inventory.getItem(_source, "consumable_peach")
        ItemData.RemoveItem(1)

        TriggerClientEvent("syn:consumable_peach", _source)

    end)

    RegisterServerEvent("RegisterUsableItem:horsebrush")
    AddEventHandler("RegisterUsableItem:horsebrush", function(source)
        local _source = source

        TriggerClientEvent("syn:brush", _source)

    end)

    
    RegisterServerEvent("RegisterUsableItem:stim")
    AddEventHandler("RegisterUsableItem:stim", function(source)
        local _source = source

        local ItemData = inventory.getItem(_source, "stim")
        ItemData.RemoveItem(1)
        TriggerClientEvent("syn:horsestimulant", _source)

    end)
    
end


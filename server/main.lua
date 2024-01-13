local webhook = ""

RegisterNetEvent("mtc-polaroid:server:getimage", function(url, name)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src) 
    if not xPlayer.removeInventoryItem('polaroid_paper', 1) then
        lib.notify(src,{
            title = 'Polaroid',
            description = "You dont have any polaroid paper",
            type = 'error'
        })
        return false
    end
    local date = os.date("%d-%m-%Y")

    exports.ox_inventory:AddItem(src, 'polaroid', 1, {
        name = name,
        url = url,
        date = date,
    })
end)

ESX.RegisterServerCallback('mtc-polaroid:server:webhook', function(src, cb, args)
    if webhook == "" then
        print("ERROR - PLEASE SETUP WEBHOOK")
    else
        cb(webhook)
    end
end)


ESX.RegisterUsableItem('polaroid_camera', function(source, item)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src) 
    if xPlayer.getInventoryItem(item) then
        TriggerClientEvent("mtc-polaroid:client:camera", src)
    end
end)

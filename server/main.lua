local webhook = "https://discord.com/api/webhooks/1022085112923430962/1vtvvyE8_WQFcaR2bvYayk7B2fH526yGbGNB3zTb-BjG83swD02-rHlUiCxVatEFy_Uo"

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
    cb(webhook)

end)


ESX.RegisterUsableItem('polaroid_camera', function(source, item)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src) 
    if xPlayer.getInventoryItem(item) then
        TriggerClientEvent("mtc-polaroid:client:camera", src)
    end
end)

ESX.RegisterUsableItem('polaroid', function(source, item)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src) 
    local items = exports.ox_inventory:Search(src, 'slots', item, metadata)
 
    local url = items[1].metadata.url
    local name =  items[1].metadata.name
    local date = items[1].metadata.date


    TriggerClientEvent("mtc-polaroid:client:showImage", src, url, name, date)
end)

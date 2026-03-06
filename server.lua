local QBCore = exports['qb-core']:GetCoreObject()

-- Make item usable
QBCore.Functions.CreateUseableItem(Config.Item, function(source)
    TriggerClientEvent("beezy-boombox:client:use", source)
end)

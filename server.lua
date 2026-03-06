local QBCore = exports['qb-core']:GetCoreObject()
local currentBoombox = nil

-- Use item: place boombox in front of player
RegisterNetEvent("beezy-boombox:client:use", function()
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local forward = GetEntityForwardVector(ped)
    local drop = coords + (forward * 1.0)

    local model = GetHashKey(Config.Model)
    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(10)
    end

    local obj = CreateObject(model, drop.x, drop.y, drop.z, true, true, false)
    PlaceObjectOnGroundProperly(obj)
    SetEntityHeading(obj, GetEntityHeading(ped))
    SetModelAsNoLongerNeeded(model)

    currentBoombox = obj

    exports['qb-target']:AddTargetEntity(obj, {
        options = {
            {
                icon = "fa-solid fa-music",
                label = "Open Boombox",
                action = function()
                    SetNuiFocus(true, true)
                    SendNUIMessage({ action = "open" })
                end
            },
            {
                icon = "fa-solid fa-box",
                label = "Pick Up",
                action = function()
                    if DoesEntityExist(obj) then
                        DeleteEntity(obj)
                    end
                    currentBoombox = nil
                end
            }
        },
        distance = 2.0
    })
end)

-- NUI callbacks
RegisterNUICallback("close", function(_, cb)
    SetNuiFocus(false, false)
    cb("ok")
end)

RegisterNUICallback("play", function(_, cb)
    cb("ok")
end)

RegisterNUICallback("stop", function(_, cb)
    cb("ok")
end)

RegisterNUICallback("volume", function(_, cb)
    cb("ok")
end)
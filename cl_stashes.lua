local QBCore = exports['qb-core']:GetCoreObject()

Citizen.CreateThread(function()
    for stashId, stashData in pairs(Config.Stashes) do
        exports['qb-target']:AddBoxZone(stashId, stashData.coords, stashData.width or 1.5, stashData.length or 1.5, {
            name = stashId,
            heading = stashData.heading or 0,
            debugPoly = Config.Debug or false,
            minZ = stashData.minZ or (stashData.coords.z - 0.5),
            maxZ = stashData.maxZ or (stashData.coords.z + 1.0),
        }, {
            options = {
                {
                    type = "client",
                    event = "Loe-jobstash:client:openStash",
                    icon = "fas fa-box",
                    label = "Open Stash",
                    stashId = stashId
                }
            },
            distance = 2.0
        })
    end
end)

RegisterNetEvent('Loe-jobstash:client:openStash', function(data)
    local stashId = data.stashId
    local stashData = Config.Stashes[stashId]
    
    if not stashData then return end  -- Safety check

    local PlayerJob = QBCore.Functions.GetPlayerData().job.name
    local canOpen = false

    if Config.PoliceOpen and PlayerJob == "police" then
        canOpen = true
    end

    if stashData.jobrequired and PlayerJob == stashData.job then
        canOpen = true
    end

    if canOpen then
        TriggerServerEvent("inventory:server:OpenInventory", "stash", stashData.stashName, {
            maxweight = stashData.stashSize,
            slots = stashData.stashSlots or 20
        })
        TriggerEvent("inventory:client:SetCurrentStash", stashData.stashName)
    else
        QBCore.Functions.Notify('You dont have the job for this!', 'error')
    end
end)

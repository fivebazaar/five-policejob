local QBCore = exports['qb-core']:GetCoreObject()
local QBFramework = {}

function QBFramework.HasJob(jobName)
    local PlayerData = QBCore.Functions.GetPlayerData()
    if PlayerData and PlayerData.job and PlayerData.job.name then
        return PlayerData.job.name == jobName
    end
    return false
end






return QBFramework
local ESXFramework = {}

function ESXFramework.HasJob(jobName)
    local PlayerData = ESX.GetPlayerData()
    if PlayerData and PlayerData.job and PlayerData.job.name then
        return PlayerData.job.name == jobName
    end
    return false
end







return ESXFramework
local QBXFramework = {}

function QBXFramework.HasJob(jobName)
    local PlayerData = exports.qbx_core:GetPlayerData()
    if PlayerData and PlayerData.job and PlayerData.job.name then
        return PlayerData.job.name == jobName
    end
    return false
end







return QBXFramework
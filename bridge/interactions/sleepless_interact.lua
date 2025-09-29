local Framework = require 'bridge.framework'
local sleepless_interact = {}

function sleepless_interact.addCoords(data)
    local options = {}

    if type(data.options) == "table" then
        for _, opt in ipairs(data.options) do
            table.insert(options, {
                name = opt.name or data.name,
                label = opt.label,
                icon = opt.icon,
                distance = opt.distance or 2.5,
                canInteract = function(entity, distance, coords, name)
                    local jobCheck = Framework.HasJob(data.jobName)
                    local customCheck = opt.canInteract and opt.canInteract(entity, distance, coords, name) or true
                    return jobCheck and customCheck
                end,
                onSelect = opt.onSelect
            })
        end
    end

    local id = exports.sleepless_interact:addCoords(data.coords, options)
    return id
end

function sleepless_interact.removeCoords(id)
    exports.sleepless_interact:removeCoords(id)
end

return sleepless_interact
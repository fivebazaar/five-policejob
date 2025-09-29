local ox_target = {}

function ox_target.addCoords(data)
    local options = {}
    local id

    if type(data.options) == "table" then
        for _, opt in ipairs(data.options) do
            table.insert(options, {
                label = opt.label,
                name = opt.name or data.name,
                icon = opt.icon,
                distance = opt.distance or 2.5,
                groups = data.jobName,
                items = opt.items,
                canInteract = opt.canInteract,
                onSelect = opt.onSelect
            })
        end
    end

    id = exports.ox_target:addSphereZone({
        coords = data.coords,
        name = data.name,
        radius = data.radius or 1.5,
        drawSprite = true,
        options = options
    })
    return id

end

function ox_target.removeCoords(id)
    exports.ox_target:removeZone(id)
end

return ox_target
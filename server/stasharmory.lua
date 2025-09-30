local Inventory = require 'bridge.inventory'
local Config = require 'config'

CreateThread(function()
    for k, v in pairs(Config.Departments) do
        if v.armory and v.armory.items and v.armory.coords then
            Inventory.CreateShop(k, {
                label = v.armory.label,
                groups = {[v.jobName] = 0},
                inventory = v.armory.items,
                locations = {
                    v.armory.coords
                }
            })
        end
        if v.stash then
            local stash = {
                id = 'jobstash_'..v.jobName,
                label = v.stash.label,
                slots = v.stash.slots,
                weight = v.stash.weight,
                groups = {[v.jobName] = 0},
                coords = v.stash.coords
            }
            Inventory.CreateStash(stash.id, stash.label, stash.slots, stash.weight, true, stash.groups, stash.coords)
        end
    end
end)
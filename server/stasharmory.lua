local Inventory = require 'bridge.inventory'
local Config = require 'config'
local Framework = require 'bridge.framework'

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
        Inventory.CreateStash('jobstash_'..v.jobName, v.stash.label, v.stash.slots, v.stash.weight, true, {[v.jobName] = 0}, v.stash.coords )
    end
end
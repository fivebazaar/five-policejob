local Interactions
local Config = require 'config'
local selectedInteraction = Config.Interactions.interactions
if selectedInteraction == 'ox_target' then
    Interactions = require 'bridge.interactions.ox_target'
elseif selectedInteraction == 'qb-target' then
    Interactions = require 'bridge.interactions.qb_target'
elseif selectedInteraction == 'sleepless_interact' then
    Interactions = require 'bridge.interactions.sleepless_interact'
else
    lib.print.error('No valid interaction module selected in config')
end
local Inventory = require 'bridge.inventory'



CreateThread(function()
    for k, v in pairs(Config.Departments) do
        Interactions.addCoords({
            coords = v.armory.coords,
            job = v.jobName,
            radius = 3.0,
            options = {
                {
                    label = v.armory.label,
                    icon = 'fas fa-box-open',
                    onSelect = function()
                        Inventory.OpenInventory('shop', {type = k, id = 1})
                    end,
                }
            }
        })
        Interactions.addCoords({
            coords = v.stash.coords,
            job = v.jobName,
            radius = 3.0,
            options = {
                {
                    label = v.stash.label,
                    icon = 'fas fa-box-open',
                    onSelect = function()
                        Inventory.OpenInventory('stash', 'jobstash_'..v.jobName)
                    end,
                }
            }
        })
    end




end)
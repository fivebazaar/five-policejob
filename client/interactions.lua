local Interactions


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



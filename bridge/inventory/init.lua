local Inventory = {}

-- Hangi inventory yüklü
local detected = nil
if GetResourceState('qb-inventory') == 'started' then
    detected = 'qb'
elseif GetResourceState('ox_inventory') == 'started' then
    detected = 'ox'
end

if not detected then
    error('No supported inventory detected')
end

-- Client veya server dosyasını require et
local path
if IsDuplicityVersion() then
    path = ('bridge.inventory.%s.server'):format(detected)
else
    path = ('bridge.inventory.%s.client'):format(detected)
end

Inventory = require(path)

return Inventory

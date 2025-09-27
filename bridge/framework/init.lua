local Framework = {}

-- Hangi framework yüklü
local detected = nil
if GetResourceState('qbx_core') == 'started' then
    detected = 'qbx'
elseif GetResourceState('qb-core') == 'started' then
    detected = 'qb'
elseif GetResourceState('es_extended') == 'started' then
    detected = 'esx'
end

if not detected then
    error('No supported framework detected')
end

-- Client veya server dosyasını require et
local path
if IsDuplicityVersion() then
    path = ('bridge.framework.%s.server'):format(detected)
else
    path = ('bridge.framework.%s.client'):format(detected)
end

Framework = require(path)

return Framework

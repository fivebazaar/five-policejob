local OxInventory = {}


function OxInventory.CreateShop(id, data)
    if not id or not data then lib.print.error("Invalid shop data") return end
    exports.ox_inventory:RegisterShop(id, data)
end

function OxInventory.CreateStash(data)
    if not data then lib.print.error("Invalid stash data") return end
    exports.ox_inventory:RegisterStash(data)
end



return OxInventory

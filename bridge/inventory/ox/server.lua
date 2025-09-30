local OxInventory = {}


function OxInventory.CreateShop(id, data)
    if not id or not data then lib.print.error("Invalid shop data") return end
    exports.ox_inventory:RegisterShop(id, data)
end

function OxInventory.CreateStash(id, label, slots, weight, owner, groups, coords)
    if not id or not label or not slots or not weight or not owner or not groups or not coords then
        lib.print.error("Invalid stash data")
        return
    end
    exports.ox_inventory:RegisterStash(id, label, slots, weight, owner, groups, coords)
end



return OxInventory

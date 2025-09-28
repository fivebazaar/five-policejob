local QbInventory = {}


function QbInventory.CreateShop(id, data)
    if not id or not data then lib.print.error("Invalid shop data") return end

    exports['qb-inventory']:CreateShop({
        name = id,
        label = data.label or "Shop",
        slots = #data.inventory or 30,
        coords = data.locations.coords,
        items = data.inventory or {}
    })

end

function QbInventory.CreateStash(data) -- TODO: ox_inventory`nin ownershipine karşılık gelecek şekilde düzenle
    if not data then lib.print.error("Invalid stash data") return end

    exports['qb-inventory']:CreateInventory(data.id,{
        label = data.label or "Stash",
        maxweight = data.weight or 1000000,
        slots = data.slots or 30,
    })
end



return QbInventory



return {
    Interactions = {
        interactions = 'ox_target', -- 'ox_target', 'qb-target', 'sleepless_interact'
        stasharmory = 'sleepless_interact', -- 'ox_target', 'qb-target', 'sleepless_interact'
    },

    Departments = {
        police = {
            label = 'Police Department',
            blip = {
                id = 60,
                color = 38,
                scale = 0.7,
            },
            jobName = 'police',
            armory = {
                label = 'Police Armory',
                coords = vector3(451.2, -980.1, 30.6),
                items = {
                    { name = 'weapon_pistol', amount = 1, info = {}, type = 'weapon', slot = 1 },
                    { name = 'handcuffs', amount = 5, info = {}, type = 'item', slot = 2 },
                    { name = 'radio', amount = 1, info = {}, type = 'item', slot = 3 },
                    { name = 'bodycam', amount = 1, info = {}, type = 'item', slot = 4 },
                    { name = 'firstaid', amount = 5, info = {}, type = 'item', slot = 5 },
                    { name = 'bandage', amount = 10, info = {}, type = 'item', slot = 6 },
                    { name = 'flashlight', amount = 5, info = {}, type = 'item', slot = 7 },
                    { name = 'weapon_stungun', amount = 1, info = {}, type = 'weapon', slot = 8 },
                    { name = 'weapon_nightstick', amount = 1, info = {}, type = 'weapon', slot = 9 },
                    { name = 'weapon_carbinerifle', amount = 1, info = {}, type = 'weapon', slot = 10 },
                }
            },
            stash = {
                label = 'Police Stash',
                coords = vector3(461.4, -997.5, 30.6),
                slots = 50,
                weight = 1000000,
            }
        },
        lasd = {
            label = 'L.A.S.D',
            blip = {
                id = 60,
                color = 38,
                scale = 0.7,
            },
            jobName = 'lasd',
            armory = {
                label = 'L.A.S.D Armory',
                coords = vector3(-447.5, 6012.1, 31.7),
                items = {
                    { name = 'weapon_pistol', amount = 1, info = {}, type = 'weapon', slot = 1 },
                    { name = 'handcuffs', amount = 5, info = {}, type = 'item', slot = 2 },
                    { name = 'radio', amount = 1, info = {}, type = 'item', slot = 3 },
                    { name = 'bodycam', amount = 1, info = {}, type = 'item', slot = 4 },
                    { name = 'firstaid', amount = 5, info = {}, type = 'item', slot = 5 },
                    { name = 'bandage', amount = 10, info = {}, type = 'item', slot = 6 },
                    { name = 'flashlight', amount = 5, info = {}, type = 'item', slot = 7 },
                    { name = 'weapon_stungun', amount = 1, info = {}, type = 'weapon', slot = 8 },
                    { name = 'weapon_nightstick', amount = 1, info = {}, type = 'weapon', slot = 9 },
                    { name = 'weapon_carbinerifle', amount = 1, info = {}, type = 'weapon', slot = 10 },
                }
            },
            stash = {
                label = 'L.A.S.D Stash',
                coords = vector3(-448.2, 6010.5, 31.7),
                slots = 50,
                weight = 1000000,
            }
        }
    }
}
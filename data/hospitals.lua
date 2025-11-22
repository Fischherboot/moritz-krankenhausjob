-- Hospital definitions for the moritz‑krankenhausjob resource.
-- This file is based off of the original ambulance job configuration but has
-- been modified for a Klinikum/hospital context.  Storage stashes and pharmacy
-- shops have been removed to reflect that hospital staff do not share a
-- warehouse or run a public pharmacy via this resource.

return {
    ["pillbox"] = {
        paramedic = {
            model = "s_m_m_scientist_01",
            pos   = vector4(312.0927, -596.1016, 42.2918, 338.7213),
        },
        bossmenu = {
            pos       = vector3(284.84, -615.6, 44.24),
            min_grade = 2
        },
        zone = {
            pos  = vec3(299.0, -585.28, 43.28),
            size = vec3(200.0, 200.0, 200.0),
        },
        blip = {
            enable = true,
            name   = 'Pillbox Hospital',
            type   = 61,
            scale  = 1.0,
            color  = 2,
            pos    = vector3(308.96, -591.52, 43.28),
        },
        -- Respawn beds.  Players will be respawned at one of these points after
        -- waiting Config.respawnTime minutes.
        respawn = {
            {
                bedPoint   = vector4(349.76, -583.44, 43.0, 150.04),
                spawnPoint = vector4(348.84, -583.36, 42.32, 68.24)
            },
        },
        -- Stashes have been removed for the hospital job.  Leave this table empty so
        -- the stashes client script doesn't create any stash points.
        stash = {},
        -- Pharmacy shops have also been removed.  Hospital staff should obtain
        -- their supplies through other means (e.g. your economy or inventory scripts).
        pharmacy = {},
        garage = {
            ['ems_garage_1'] = {
                pedPos       = vector4(291.2237, -614.9087, 42.4234, 332.9413),
                model        = 'mp_m_weapexp_01',
                spawn        = vector4(294.28, -608.32, 43.32, 69.6),
                deposit      = vector3(294.28, -608.32, 43.32),
                driverSpawnCoords = vector3(297.56, -600.52, 43.32),
                vehicles = {
                    {
                        label = 'Ambulance',
                        spawn_code = 'ambulance',
                        min_grade  = 3,
                        modifications = {} -- e.g. {color1 = {255, 12, 25}}
                    },
                }
            }
        },
        clothes = {
            enable = true,
            pos    = vector4(300.7454, -597.4542, 42.2918, 298.0781),
            model  = 'a_f_m_bevhills_01',
            male = {
                [1] = {
                    ["Officier"] = {
                        ['mask_1']    = 0,
                        ['mask_2']    = 0,
                        ['arms']      = 0,
                        ['tshirt_1']  = 15,
                        ['tshirt_2']  = 0,
                        ['torso_1']   = 86,
                        ['torso_2']   = 0,
                        ['bproof_1']  = 0,
                        ['bproof_2']  = 0,
                        ['decals_1']  = 0,
                        ['decals_2']  = 0,
                        ['chain_1']   = 0,
                        ['chain_2']   = 0,
                        ['pants_1']   = 10,
                        ['pants_2']   = 2,
                        ['shoes_1']   = 56,
                        ['shoes_2']   = 0,
                        ['helmet_1']  = 34,
                        ['helmet_2']  = 0,
                        ['glasses_1'] = 34,
                        ['glasses_2'] = 1,
                    },
                    ["Sargent"] = {
                        ['mask_1']    = 0,
                        ['mask_2']    = 0,
                        ['arms']      = 0,
                        ['tshirt_1']  = 15,
                        ['tshirt_2']  = 0,
                        ['torso_1']   = 21,
                        ['torso_2']   = 0,
                        ['bproof_1']  = 0,
                        ['bproof_2']  = 0,
                        ['decals_1']  = 0,
                        ['decals_2']  = 0,
                        ['chain_1']   = 0,
                        ['chain_2']   = 0,
                        ['pants_1']   = 10,
                        ['pants_2']   = 2,
                        ['shoes_1']   = 56,
                        ['shoes_2']   = 0,
                        ['helmet_1']  = 34,
                        ['helmet_2']  = 0,
                        ['glasses_1'] = 34,
                        ['glasses_2'] = 1,
                    },
                },
            },
        },
    }
}
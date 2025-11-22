local Config = {}

-- Debug flag
Config.debug = false

-- Use ox_inventory if it is started on the server
Config.useOxInventory = GetResourceState('ox_inventory'):find('start')

-- Which clothing script to use. Acceptable values:
-- 'illenium-appearance', 'fivem-appearance', 'core' or false to disable.
Config.clothingScript = 'disable'

-- Jobs that are allowed to use the medical features of this script.
-- When converting this resource for use in a hospital (Klinikum) rather than the EMS
-- service, set this to the job name for your hospital staff.
Config.emsJobs = { "krankenhaus" }

-- Time, in minutes, a player must wait before respawning. Set to 0 to disable.
Config.respawnTime = 0

-- Minutes a player must wait before sending another distress call.
Config.waitTimeForNewCall = 5

-- Administration commands
Config.reviveCommand     = "kra-revive"
Config.reviveAreaCommand = "kra-revivearea"
Config.healCommand       = "kra-heal"
Config.healAreaCommand   = "kra-healarea"
Config.reviveAllCommand  = "kra-reviveall"

-- Which admin group can use the above commands
Config.adminGroup = "group.admin"

-- Props and items used by medics
Config.medicBagProp = "xm_prop_x17_bag_med_01a"
Config.medicBagItem = "medicalbag"
Config.tabletItem   = "emstablet"

-- Disable the help command for hospitals.
-- Previously this resource used "/911" to contact medics.  For a hospital
-- implementation there should be no emergency dispatcher, so set this to false.
Config.helpCommand = false

-- Whether to remove items when a player respawns
Config.removeItemsOnRespawn = true
-- Items that are kept on respawn when Config.removeItemsOnRespawn is true
Config.keepItemsOnRespawn = { "money", "WEAPON_PISTOL" }

-- Rewards and costs
Config.baseInjuryReward          = 150
Config.reviveReward              = 700
Config.paramedicTreatmentPrice   = 4000

-- Set to true if medics should always be able to revive even if there are
-- other medics online.
Config.shouldRevive = false
Config.allowAlways  = true

-- How many stretchers should an ambulance have
Config.ambulanceStretchers = 2

-- How much durability to consume when using an item
Config.consumeItemPerUse = 10

-- Time (in minutes) a player must wait after dying before using the NPC revive command
Config.timeToWaitForCommand = 2

-- Command used to call an NPC medic when there are no medics online.
-- For a hospital based job this has been renamed from "ambulance" to "krankenhaus".
Config.npcReviveCommand = "krankenhaus"

-- If false the vehicle will despawn immediately when deposited rather than using a ped
Config.usePedToDepositVehicle = false

-- Toggle extra screen effects such as camera shake and black & white screen
Config.extraEffects = true

-- Vehicles that have access to the props (cones and so on).  These are left unchanged
-- since they refer to the in‑game vehicle models.  Hospital staff can still use the
-- standard ambulance models unless further customised.
Config.emsVehicles = {
    ambulance  = true,
    ambulance2 = true,
}

-- Animations used during death and revival
Config.animations = {
    ["death_car"] = {
        dict = "veh@low@front_ps@idle_duck",
        clip = "sit"
    },
    ["death_normal"] = {
        dict = "dead",
        clip = "dead_a"
    },
    ["get_up"] = {
        dict = "get_up@directional@movement@from_knees@action",
        clip = "getup_r_0"
    }
}

-- Distress call integration.  For the hospital job we intentionally do not
-- implement this function.  When a player invokes the distress call on the
-- death screen, no alert will be dispatched to other players.
function Config.sendDistressCall(msg)
    -- intentionally left blank
end

-- Optional integration points for your own vehicle key system
function Config.giveVehicleKeys(vehicle, plate)
    -- example usage:
    -- exports['youscript']:giveKey(vehicle, plate)
end

function Config.removeVehicleKeys(vehicle, plate)
    -- example usage:
    -- exports['youscript']:removeKey(vehicle, plate)
end

return Config
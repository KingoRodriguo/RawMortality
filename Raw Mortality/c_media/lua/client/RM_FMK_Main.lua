-- RM_FMK_Main.lua
require "RM_FMK_Items"
require "RM_FMK_Traits"
require "RM_FMK_ContextMenu"

local function getRandomElement(list)
    if not list or #list == 0 then
        print("Error: list is nil or empty in getRandomElement")
        return "None"
    end
    local index = ZombRand(#list) + 1
    return list[index]
end

local function assignAllergiesAndIntolerances(player)
    if not player then
        print("Error: player is nil")
        return
    end

    local modData = getPlayer():getModData()

    if getPlayer():HasTrait("Allergic") and not modData.PlayerAllergies then
        modData.PlayerAllergies = getRandomElement(RMFood_Allergies)
        getPlayer():Say("Allergie assignée: " .. modData.PlayerAllergies)
    end

    if getPlayer():HasTrait("Intolerant") and not modData.PlayerIntolerances then
        modData.PlayerIntolerances = getRandomElement(RMFood_Intolerances)
        getPlayer():Say("Intolérance assignée: " .. modData.PlayerIntolerances)
    end
end

Events.OnNewGame.Add(function()
    local player = getPlayer()
    assignAllergiesAndIntolerances(player)
end)

Events.OnCreatePlayer.Add(function(playerIndex, player)
    assignAllergiesAndIntolerances(player)
end)

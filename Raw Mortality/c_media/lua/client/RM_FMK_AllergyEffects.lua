-- RM_FMK_AllergyEffects.lua

local AllergySymptoms = {
    {name = "Pain", minLevel = 0.1, maxLevel = 1, minDuration = 0.5, maxDuration = 2},
    {name = "Sickness", minLevel = 0.1, maxLevel = 0.5, duration = 2.0},
    {name = "Fatigue", minLevel = 0.1, maxLevel = 0.5, duration = 2.0},
}

-- Applique les effets négatifs d'allergie
function applyNegativeAllergyEffects(player, item)
    local modData = getPlayer():getModData()
    local allergy = modData.PlayerAllergies
    
    -- Vérifie si l'item contient un allergène auquel le joueur est allergique
    for _, allergen in ipairs(RMFood_Items[item:getType()].Allergens) do
        if allergen == allergy then
            applySymptom(player, AllergySymptoms)
            return true -- Retourne true si l'effet d'allergie a été appliqué
        end
    end
    
    return false -- Retourne false si aucun effet d'allergie n'a été appliqué
end

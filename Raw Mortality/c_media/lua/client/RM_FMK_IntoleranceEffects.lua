-- RM_FMK_IntoleranceEffects.lua

local IntoleranceSymptoms = {
    {name = "Pain", minLevel = 0.1, maxLevel = 0.6, minDurationduration = 1, maxDuration = 3},
    {name = "Sickness", minLevel = 0.1, maxLevel = 0.6,  minDurationduration = 1, maxDuration = 3},
    {name = "Fatigue", minLevel = 0.1, maxLevel = 0.7,  minDurationduration = 1, maxDuration = 3},
}

-- Applique les effets négatifs d'intolérance
function applyNegativeIntoleranceEffects(player, item)
    local modData = getPlayer():getModData()
    local intolerance = modData.PlayerIntolerances
    
    -- Vérifie si l'item contient un ingrédient auquel le joueur est intolérant
    for _, ingredient in ipairs(RMFood_Items[item:getType()].Ingredients) do
        if ingredient == intolerance then
            applySymptom(player, IntoleranceSymptoms)
            return true -- Retourne true si l'effet d'intolérance a été appliqué
        end
    end
    
    return false -- Retourne false si aucun effet d'intolérance n'a été appliqué
end

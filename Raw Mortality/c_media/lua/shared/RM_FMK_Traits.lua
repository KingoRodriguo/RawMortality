-- RMFood_Traits.lua

-- Définition des traits "Allergic" et "Intolerant"
function initRMFoodTraits()
    TraitFactory.addTrait("Allergic", "Allergic", -2, "You are allergic to certain foods.", false)
    TraitFactory.addTrait("Intolerant", "Intolerant", -2, "You are intolerant to certain foods.", false)
end

Events.OnGameBoot.Add(initRMFoodTraits)

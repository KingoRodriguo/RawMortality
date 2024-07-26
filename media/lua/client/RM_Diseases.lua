require "TimedActions/ISEatFoodAction"
require "RM_Food"

RM_Diseases = {
    Allergie = {    --Disease parameter setup
        name = "Allergie",
        isFatal = true, --Can player die from this disease
        isPermanent = true, --Can this disease be cured
        isSymptomCurable = true, --Can drugs cure symptom of the disease
        isActive = false, --Does the symptoms should be applied
        currentProgression = 0, --Current progression of the disease in the body
        severity = 0.5, --Progression Multiplier (should be between 0 and 1)

        maxAllergens = 3,
        Allergens = {}, --Set by applyPlayerAllergens()
    },

    Intolerance = {
        name = "Intolerance",
        isFatal = false,
        isPermanent = true,
        isSymptomCurable = true,
        isActive = false,
        currentProgression = 0,
        severity = 0.2,

        maxIntolerances = 3,
        Intolerances = {}, --Set by applyPlayerIntolerances()
    },

    --Diabete

}

function GetDisease(player, diseaseID)
    local modData = player:getModData()

    if not modData.diseases then
        modData.diseases = {}
    end

    if not modData.diseases[diseaseID] then
        modData.diseases[diseaseID] = RM_Diseases[diseaseID]
    end

    return modData.diseases[diseaseID]
end

function CureDisease(player, diseaseID)
    local modData = player:getModData()

    if tostring(diseaseID) == "all" then
        print("Removing all diseases")
        for _, ID in pairs(modData.diseases) do
            local _name = ID.name
            modData.diseases[_name] = nil
            print("name: ".._name)
        end
        return
    end

    if modData.diseases and modData.diseases[diseaseID] then
        modData.diseases[diseaseID] = nil
        print("Disease cured: " .. diseaseID)
    else
        print("Disease not found: " .. diseaseID)
    end
end

function CheckDisease(player)
    if not player then
        print("player nil")
        return
    end

    local modData = player:getModData()

    if not modData.diseases then
        player:Say("No diseases contracted.")
        return false
    end

    player:Say("List of contracted diseases:")
    for diseaseID, disease in pairs(modData.diseases) do
        player:Say(diseaseID)
    end

    return true
end

function ApplyAllergySymptoms(player)
    if player:getModData().diseases["Allergie"].isActive then
        local randomFatigue = ZombRandFloat(0.1, 0.5)
        player:getStats():setFatigue(math.min(player:getStats():getFatigue() + randomFatigue, 1))

        local randomPain = ZombRandFloat(50, 80)
        local bodyPart = player:getBodyDamage():getBodyPart(BodyPartType.FromString("Torso_Lower"))
        bodyPart:setAdditionalPain(randomPain)

        local randomSickness = ZombRandFloat(0.1, 0.5)
        --player:getStats():setSickness(math.min(player:getStats():getSickness() + randomSickness, 1))

        local _currentFatigue = player:getStats():getFatigue()
        local _currentPain = player:getStats():getPain()
        local _currentSickness = player:getStats():getSickness()

        local progress = (_currentFatigue + _currentPain + _currentSickness) / 3
        player:getModData().diseases["Allergie"].currentProgression = progress
        player:Say("Allergie progression: " .. progress)
    end
end

function ApplyIntoleranceSymptoms(player)
    if player:getModData().diseases["Intolerance"].isActive then
        local randomFatigue = ZombRandFloat(0.1, 0.5)
        player:getStats():setFatigue(math.min(player:getStats():getFatigue() + randomFatigue, 1))

        local randomPain = ZombRandFloat(50, 80)
        local bodyPart = player:getBodyDamage():getBodyPart(BodyPartType.FromString("Torso_Lower"))
        bodyPart:setAdditionalPain(randomPain)

        local randomSickness = ZombRandFloat(0.1, 0.5)
        --player:getStats():setSickness(math.min(player:getStats():getSickness() + randomSickness, 1))

        local _currentFatigue = player:getStats():getFatigue()
        local _currentPain = player:getStats():getPain()
        local _currentSickness = player:getStats():getSickness()

        local progress = (_currentFatigue + _currentPain + _currentSickness) / 3
        player:getModData().diseases["Intolerance"].currentProgression = progress
        player:Say("Intolerance progression: " .. progress)
    end
end

function ApplyPlayerIntolerances(player, number)
    local modData = player:getModData()

    if not modData.diseases or not modData.diseases["Intolerance"] then
        return
    end

    local IntolerancesList = {}
    for foodID, foodData in pairs(RM_Food) do
        if foodData.Ingredients then
            for _, ingredient in pairs(foodData.Ingredients) do
                if ingredient ~= "None" and not IntolerancesList[ingredient] then
                    IntolerancesList[ingredient] = true
                end
            end
        end
    end

    local uniqueIntolerances = {}
    for ingredient, _ in pairs(IntolerancesList) do
        table.insert(uniqueIntolerances, ingredient)
    end

    local x = ZombRand(1, number)
    x = math.min(x, #uniqueIntolerances)

    if not modData.diseases["Intolerance"].Intolerances then
        modData.diseases["Intolerance"].Intolerances = {}
    end

    local playerIntolerances = modData.diseases["Intolerance"].Intolerances
    while #playerIntolerances < x do
        local randomIndex = ZombRand(#uniqueIntolerances) + 1
        local intolerance = table.remove(uniqueIntolerances, randomIndex)
        table.insert(playerIntolerances, intolerance)
    end
end

function ApplyPlayerAllergens(player, number)
    local modData = player:getModData()

    if not modData.diseases or not modData.diseases["Allergie"] then
        return
    end

    local allergensList = {}
    for foodID, foodData in pairs(RM_Food) do
        if foodData.Allergens then
            for _, allergen in pairs(foodData.Allergens) do
                if allergen ~= "None" and not allergensList[allergen] then
                    allergensList[allergen] = true
                end
            end
        end
    end

    local uniqueAllergens = {}
    for allergen, _ in pairs(allergensList) do
        table.insert(uniqueAllergens, allergen)
    end

    local x = ZombRand(1, number)
    x = math.min(x, #uniqueAllergens)

    if not modData.diseases["Allergie"].Allergens then
        modData.diseases["Allergie"].Allergens = {}
    end

    local playerAllergens = modData.diseases["Allergie"].Allergens
    while #playerAllergens < x do
        local randomIndex = ZombRand(#uniqueAllergens) + 1
        local allergen = table.remove(uniqueAllergens, randomIndex)
        table.insert(playerAllergens, allergen)
    end
end

function RemovePlayerAllergens(player)
    local modData = player:getModData()

    if modData.diseases and modData.diseases["Allergie"] and modData.diseases["Allergie"].Allergens then
        modData.diseases["Allergie"].Allergens = {}
    end
end

function RemovePlayerIntolerances(player)
    local modData = player:getModData()

    if modData.diseases and modData.diseases["Intolerance"] and modData.diseases["Intolerance"].Intolerances then
        modData.diseases["Intolerance"].Intolerances = {}
    end
end

function GetPlayerAllergens(_player)
    local modData = getPlayer():getModData()

    if modData.diseases and modData.diseases["Allergie"] and modData.diseases["Allergie"].Allergens then
        local allergens = modData.diseases["Allergie"].Allergens
        getPlayer():Say("Allergens: " .. table.concat(allergens, ", "))
        return allergens
    else
        getPlayer():Say("Allergens: None")
        return {"None"}
    end
end

function ApplyDiseaseSymptoms()
    local player = getPlayer()
    if not player then
        return
    end

    if player:getModData().diseases["Allergie"].isActive then
        ApplyAllergySymptoms(player)
    end

    if player:getModData().diseases["Intolerance"].isActive then
        ApplyIntoleranceSymptoms(player)
    end
end

function GetPlayerIntolerances(_player)
    local modData = getPlayer():getModData()

    if modData.diseases and modData.diseases["Intolerance"] and modData.diseases["Intolerance"].Intolerances then
        local Intolerances = modData.diseases["Intolerance"].Intolerances
        return Intolerances
    else
        getPlayer():Say("Intolerances: None")
        return {"None"}
    end
end

function CheckAllergens(_item, _allergens)
    local count = 0
    for _, allergen in pairs(_allergens) do
        for _, ingredient in pairs(_item) do
            if allergen == ingredient then
                count = count + 1
            end
        end
    end
    return count
end

function CheckIntolerances(_item, _intolerances)
    local count = 0
    for _, intolerance in pairs(_intolerances) do
        for _, ingredient in pairs(_item) do
            if intolerance == ingredient then
                count = count + 1
            end
        end
    end
    return count
end

local originalPerform = ISEatFoodAction.perform

function ISEatFoodAction:perform()
    originalPerform(self)

    -- Additional logic after the original perform
    local _player = getPlayer()
    local _item = {self.item:getType()}

    --check if a disease needs to be applied set active to true
end

Events.EveryTenMinutes.Add(ApplyDiseaseSymptoms)
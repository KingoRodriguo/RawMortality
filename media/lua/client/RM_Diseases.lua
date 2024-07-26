

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

    -- Check for player.diseases
    if not modData.diseases then
        
        modData.diseases = {}
    end

    -- Add RM_Disease[diseaseID] to player.diseases if it doesn't exist
    if not modData.diseases[diseaseID] then
        modData.diseases[diseaseID] = RM_Diseases[diseaseID]
        
    else
        
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

    -- Check for player.diseases
    if not modData.diseases then
        
        player:Say("No diseases contracted.")
        return false
    end

    -- Print list of all contracted diseases
    player:Say("List of contracted diseases:")
    for diseaseID, disease in pairs(modData.diseases) do
        player:Say(diseaseID)
    end

    return true
end

function ApplyAllergySymptoms(player)
    if player:getModData().diseases["Allergie"].isActive then 
        
        

        -- Apply random fatigue based on severity
        local randomFatigue = ZombRandFloat(0.1, 0.5)  -- Random value between 0.1 and 0.5 scaled by severity
        player:getStats():setFatigue(math.min(player:getStats():getFatigue() + randomFatigue, 1))
        

        -- Apply random pain based on severity
        local randomPain = ZombRandFloat(50, 80)  -- Random value between 0.1 and 0.5 scaled by severity
        local bodyPart = player:getBodyDamage():getBodyPart(BodyPartType.FromString("Torso_Lower"))
            bodyPart:setAdditionalPain(randomPain)
        

        -- Apply random sickness based on severity
        local randomSickness = ZombRandFloat(0.1, 0.5) -- Random value between 0.1 and 0.5 scaled by severity
        --player:getStats():setSickness(math.min(player:getStats():getSickness() + randomSickness, 1))
        

        local _currentFatigue = player:getStats():getFatigue()
        local _currentPain = player:getStats():getPain()
        local _currentSickness = player:getStats():getSickness()

        local progress = (_currentFatigue + _currentPain + _currentSickness)/3
        player:getModData().diseases["Allergie"].currentProgression = progress
        player:Say("Allergie progression: " ..progress)
    end
end

function ApplyDiseaseSymptoms()
    local player = getPlayer()

    if player:getModData().diseases then 
        --applyAllergySymptoms(player)
    end
end


function ApplyPlayerIntolerances(player, number)

    local modData = player:getModData()

    -- Check if player.diseases contains "Intolerance"
    if not modData.diseases or not modData.diseases["Intolerance"] then
        return
    end

    -- Get list of all unique ingredients in RM_Food
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

    -- Choose a random number x between 1 and number, or 1 if number is < 1 or not a number
    local x = ZombRand(1,number)
    x = math.min(x, #uniqueIntolerances)

    -- Add x intolerances to player.getModData().diseases["Intolerance"].Intolerances from uniqueIntolerances
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

    -- Check if player.diseases contains "Allergie"
    if not modData.diseases or not modData.diseases["Allergie"] then
        return
    end

    -- Get list of all unique allergens in RM_Food
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

    -- Choose a random number x between 1 and number, or 1 if number is < 1 or not a number
    local x = ZombRand(1,number)
    x = math.min(x, #uniqueAllergens)

    -- Add x allergens to player.getModData().diseases["Allergie"].Allergens from uniqueAllergens
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

    -- Check if player.diseases contains "Allergie"
    if modData.diseases and modData.diseases["Allergie"] and modData.diseases["Allergie"].Allergens then
        -- Remove all allergens
        modData.diseases["Allergie"].Allergens = {}
    end
end

function RemovePlayerIntolerances(player)
    local modData = player:getModData()

    -- Check if player.diseases contains "Intolerance"
    if modData.diseases and modData.diseases["Intolerance"] and modData.diseases["Intolerance"].Intolerances then
        -- Remove all intolerances
        modData.diseases["Intolerance"].Intolerances = {}
    else
    end
end

function GetPlayerAllergens(_player)
    local modData = getPlayer():getModData()

    -- Get Allergens from player.getModData().diseases["Allergie"].Allergens
    if modData.diseases and modData.diseases["Allergie"] and modData.diseases["Allergie"].Allergens then
        local allergens = modData.diseases["Allergie"].Allergens
        getPlayer():Say("Allergens: " ..table.concat(allergens, ", "))
        return allergens
    else
        getPlayer():Say("Allergens: None")
        return {"None"}
    end
end

function GetPlayerIntolerances(_player)
    local modData = getPlayer():getModData()

    -- Get Allergens from player.getModData().diseases["Allergie"].Allergens
    if modData.diseases and modData.diseases["Intolerance"] and modData.diseases["Intolerance"].Intolerances then
        local Intolerances = modData.diseases["Intolerance"].Intolerances
        return Intolerances
    else
        getPlayer():Say("Intolerances: None")
        return {"None"}
    end
end

local originalPerform = ISEatFoodAction.perform

function ISEatFoodAction:perform()
    -- Your additional logic here
    print("Running ISEatFoodAction") 
    if not self.character or not self.item then
        print("ERROR")
        return
    end
    
    -- Call the original perform function
    originalPerform(self)
    
    -- Additional logic after the original perform
    local _player = getPlayer()
    local _item = {self.item:getType()}

    if CheckAllergens(_item, GetPlayerAllergens(_player)) > 0 then
        _player:getModData().diseases["Allergie"].isActive = true
        _player:Say("Allergie active")
    end
end

Events.EveryTenMinutes.Add(ApplyDiseaseSymptoms)
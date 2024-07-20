local _fileName = "RM_Diseases.lua"

require "TimedActions/ISEatFoodAction"

RM_Diseases = {
    Allergie = {    --Disease parameter setup
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

function getDisease(player, diseaseID)
    local _funcName = string.format("getDisease(%s, %s)", tostring(player), tostring(diseaseID))
    RMlog(_fileName, _funcName, "Entered function")

    local modData = player:getModData()

    -- Check for player.diseases
    if not modData.diseases then
        RMlog(_fileName, _funcName, "player.diseases does not exist, creating it")
        modData.diseases = {}
    end

    -- Add RM_Disease[diseaseID] to player.diseases if it doesn't exist
    if not modData.diseases[diseaseID] then
        modData.diseases[diseaseID] = RM_Diseases[diseaseID]
        RMlog(_fileName, _funcName, "Added disease: " .. tostring(diseaseID))
    else
        RMlog(_fileName, _funcName, "Disease already exists: " .. tostring(diseaseID))
    end

    return modData.diseases[diseaseID]
end


function cureDisease(player, diseaseID)
    local _funcName = string.format("cureDisease(%s, %s)", tostring(player), tostring(diseaseID))
    RMlog(_fileName, _funcName, "Entered function")

    local modData = player:getModData()

    -- Check if player.diseases contains diseaseID
    if modData.diseases and modData.diseases[diseaseID] then
        modData.diseases[diseaseID] = nil
        RMlog(_fileName, _funcName, "Cured disease: " .. tostring(diseaseID))
        print("Disease cured: " .. diseaseID)
    else
        RMlog(_fileName, _funcName, "Disease not found: " .. tostring(diseaseID))
        print("Disease not found: " .. diseaseID)
    end
end


function checkDisease(player)
    local _funcName = "checkDisease(" .. tostring(player) .. ")"
    RMlog(_fileName, _funcName, "Entered function")

    local modData = player:getModData()

    -- Check for player.diseases
    if not modData.diseases then
        RMlog(_fileName, _funcName, "No diseases found")
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

function applyAllergySymptoms(player)
    if player:getModData().diseases["Allergie"].isActive then 
        local _funcName = string.format("applyAllergySymptoms(%s)", tostring(player))
        RMlog(_fileName, _funcName, "Entered function")

        -- Apply random fatigue based on severity
        local randomFatigue = ZombRandFloat(0.1, 0.5)  -- Random value between 0.1 and 0.5 scaled by severity
        player:getStats():setFatigue(math.min(player:getStats():getFatigue() + randomFatigue, 1))
        RMlog(_fileName, _funcName, "Applied fatigue: " .. tostring(randomFatigue))

        -- Apply random pain based on severity
        local randomPain = ZombRandFloat(50, 80)  -- Random value between 0.1 and 0.5 scaled by severity
        local bodyPart = player:getBodyDamage():getBodyPart(BodyPartType.FromString("Torso_Lower"))
            bodyPart:setAdditionalPain(randomPain)
        RMlog(_fileName, _funcName, "Applied pain: " .. tostring(randomPain))

        -- Apply random sickness based on severity
        local randomSickness = ZombRandFloat(0.1, 0.5) -- Random value between 0.1 and 0.5 scaled by severity
        --player:getStats():setSickness(math.min(player:getStats():getSickness() + randomSickness, 1))
        RMlog(_fileName, _funcName, "Applied sickness: " .. tostring(randomSickness))

        local _currentFatigue = player:getStats():getFatigue()
        local _currentPain = player:getStats():getPain()
        local _currentSickness = player:getStats():getSickness()

        local progress = (_currentFatigue + _currentPain + _currentSickness)/3
        player:getModData().diseases["Allergie"].currentProgression = progress
        player:Say("Allergie progression: " ..progress)
    end
end

function applyDiseaseSymptoms()
    local player = getPlayer()

    if player:getModData().diseases["Allergie"].isActive then 
        applyAllergySymptoms(player)
    end
end

local originalPerform = ISEatFoodAction.perform

function ISEatFoodAction:perform()   
    print("Running ISEatFoodAction") 
    if not self.character or not self.item then
        print("ERROR")
        return
    end
    
    originalPerform(self)
    
    local _player = getPlayer()
    local _item = {self.item:getType()}

    if checkAllergens(_item, getPlayerAllergens(_player)) > 0 then
        _player:getModData().diseases["Allergie"].isActive = true
        _player:Say("Allergie active")
    end
end


Events.EveryOneMinute.Add(applyDiseaseSymptoms)
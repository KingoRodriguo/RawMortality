-- Fonction utilitaire pour vérifier si un élément se trouve dans une liste
function RMF_Contains(element, list)
    for _, value in ipairs(list) do
        if value == element then
            return true
        end
    end
    return false
end

-- Fonction utilitaire pour appliquer des symptômes au joueur
function applySymptom(player, effectName, symptoms)
    local modData = getPlayer():getModData()
    modData[effectName .. "Start"] = getGameTime():getWorldAgeHours()
    getPlayer():Say(modData[effectName .. "Start"])
    
    for _, symptom in ipairs(symptoms) do
        local duration = symptom.duration or ZombRandFloat(symptom.minDuration or 1, symptom.maxDuration or 1)
        modData[effectName .. "_" .. symptom.name .. "_Duration"] = duration
    end

    modData[effectName .. "End"] = modData[effectName .. "Start"] + math.max(unpack(modData, effectName .. "_", "_Duration"))
    modData[effectName .. "Applied"] = false

    print("[RMF_Utils] Applying symptom:", effectName, "Start:", modData[effectName .. "Start"], "End:", modData[effectName .. "End"])

    -- Ajout de l'événement pour mettre à jour l'effet
    Events.EveryOneMinute.Add(function()
        updateSymptomEffect(player, effectName, symptoms)
    end, "Update" .. effectName)
end

-- Fonction séparée pour mettre à jour un effet sur le joueur
function updateSymptomEffect(player, effectName, symptoms)
    if not player or not effectName then
        print("[RMF_Utils] Invalid parameters for updateSymptomEffect:", player, effectName)
        return
    end

    local modData = getPlayer():getModData()
    if not modData[effectName .. "Start"] or not modData[effectName .. "End"] then
        print("[RMF_Utils] Missing or invalid modData for effect:", effectName)
        return
    end

    local currentTime = getGameTime():getWorldAgeHours()
    if not currentTime then
        print("[RMF_Utils] Invalid current time")
        return
    end

    local healthReduction = 0
    local duration = 0
    local symptomCount = 0
    local progressTable = {}

    -- Calculer la progression pour chaque symptôme
    for _, symptom in ipairs(symptoms) do
        local symptomName = symptom.name
        local symptomDuration = modData[effectName .. "_" .. symptomName .. "_Duration"]
        local progress = math.min((currentTime - modData[effectName .. "Start"]) / symptomDuration, 1)
        progressTable[symptomName] = progress

        -- Calculer les niveaux actuels des symptômes
        local maxLevel = symptom.maxLevel or 1
        local currentLevel = getPlayer():getStats()["get" .. symptomName](getPlayer():getStats()) or 0
        local targetLevel = progress * maxLevel

        if currentLevel < targetLevel then
            getPlayer():getStats()["set" .. symptomName](getPlayer():getStats(), math.min(targetLevel, maxLevel))
            print(string.format("[RMF_Utils] %s set to: %f", symptomName, targetLevel))
        end

        if progress >= 0.8 then
            symptomCount = symptomCount + 1
        end
    end

    -- Appliquer la réduction de santé après 80% de progression de n'importe quel symptôme
    if symptomCount > 0 then
        local healthTimerStart = getGameTime():getWorldAgeHours()
        local healthTimer = math.max(2 - 0.5 * (symptomCount - 1), 1) -- en heures
        local remainingTime = (healthTimerStart + remainingTime) - getGameTime():getWorldAgeHours()
        local healthPerMinute = getPlayer():getBodyDamage():getHealth() / (remainingTime * 60)

        getPlayer():getBodyDamage():ReduceGeneralHealth(healthPerMinute)
        print(string.format("[RMF_Utils] Health Reduction Increment: %f", healthPerMinute))
    end

    if modData[effectName .. "End"] and currentTime > modData[effectName .. "End"] then
        Events.EveryOneMinute.RemoveByName("Update" .. effectName)
        print("[RMF_Utils] Effect ended or not found:", effectName)
    else
        print("[RMF_Utils] Valid modData for effect:", effectName)
    end
    
end

-- Arrêter les minuteries si le joueur meurt
local function onPlayerDeath(player)
    local modData = getPlayer():getModData()
    if modData then
        for effectName, _ in pairs(modData) do
            if string.match(effectName, "Effect") then
                Events.EveryOneMinute.RemoveByName("Update" .. effectName)
                print("[RMF_Utils] Removed timer for effect:", effectName, "due to player death.")
            end
        end
    end
end

Events.OnPlayerDeath.Add(onPlayerDeath)

local function onGameStart()
    -- Vérifier que ISEatFoodAction est disponible
    if not ISEatFoodAction then
        print("[RMF_Utils] Error: ISEatFoodAction is nil. Ensure the module is loaded correctly.")
        return
    end

    -- Sauvegarde la méthode perform originale
    local originalPerform = ISEatFoodAction.perform

    -- Vérifier que la méthode perform existe
    if not originalPerform then
        print("[RMF_Utils] Error: ISEatFoodAction.perform is nil.")
        return
    end

    print("[RMF_Utils] Successfully saved original ISEatFoodAction.perform")

    -- Redéfinit la méthode perform pour inclure l'application des effets négatifs
    function ISEatFoodAction:perform()
        print("[RMF_Utils] Overriding ISEatFoodAction:perform")
        
        if not self.character or not self.item then
            print("[RMF_Utils] Invalid character or item in perform")
            return
        end
        
        originalPerform(self)
        
        -- Applique les effets d'allergie
        local allergyApplied = applyNegativeAllergyEffects(self.character, self.item)
        print("[RMF_Utils] Allergy applied:", allergyApplied)
        
        -- Si aucune allergie n'a été appliquée, applique les effets d'intolérance
        if not allergyApplied then
            applyNegativeIntoleranceEffects(self.character, self.item)
            print("[RMF_Utils] Intolerance effects applied")
        end
    end
end

-- Ajouter un gestionnaire pour l'événement OnGameStart
Events.OnGameStart.Add(onGameStart)

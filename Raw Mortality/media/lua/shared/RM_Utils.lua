-- Easy logging for Raw_Mortality
local _modName = "Raw_Mortality"
local _fileName = "RM_Utils.lua"

require "RM_Food"

function RMlog(_file, _func, _text)
    print(string.format("[%s][%s][%s] --> %s", _modName or "mod?", _file or "file?", _func or "func?", _text or "text?"))
end

function logAndReturn(_fileName, _funcName, message, returnValue)
    RMlog(_fileName, _funcName, message)
    return returnValue
end

function getIngredients(foodID)
    local _funcName = "getIngredients(" .. tostring(foodID) .. ")"
    RMlog(_fileName, _funcName, "Entered function")

        ingredients = {"Unknown"}
    -- Check if RM_Food[foodID] exists
    if RM_Food[foodID] then
        -- Check if RM_Food[foodID].Ingredients exists
        if RM_Food[foodID].Ingredients then
            RMlog(_fileName, _funcName, "Ingredients found for foodID: " .. tostring(foodID))
            ingredients = RM_Food[foodID].Ingredients
        end
    else
        RMlog(_fileName, _funcName, "Ingredients not found for foodID: " .. tostring(foodID))
    end

    return ingredients
end

function setIngredients(foodID, items)
    local _funcName = string.format("setIngredients(%s, %s)", tostring(foodID), tostring(items))
    RMlog(_fileName, _funcName, "Entered function with foodID: " .. tostring(foodID) .. " and items: " .. tostring(items))
    RM_Food[foodID].Ingredients = items
    return logAndReturn(_fileName, _funcName, "Set ingredients: " .. tostring(items), RM_Food[foodID].Ingredients)
end

function addIngredients(foodID, items)
    local _funcName = string.format("addIngredients(%s, %s)", tostring(foodID), tostring(items))
    RMlog(_fileName, _funcName, "Entered function with foodID: " .. tostring(foodID) .. " and items: " .. tostring(items))
    table.insert(RM_Food[foodID].Ingredients, items)
    return logAndReturn(_fileName, _funcName, "Added items: " .. tostring(items), RM_Food[foodID].Ingredients)
end

function removeIngredients(foodID, items)
    local _funcName = string.format("removeIngredients(%s, %s)", tostring(foodID), tostring(items))
    RMlog(_fileName, _funcName, "Entered function with foodID: " .. tostring(foodID) .. " and items: " .. tostring(items))
    RM_Food[foodID].Ingredients[items] = nil
    return logAndReturn(_fileName, _funcName, "Removed items: " .. tostring(items), RM_Food[foodID].Ingredients)
end

function getAllergens(foodID)
    local _funcName = "getAllergens(" .. tostring(foodID) .. ")"
    RMlog(_fileName, _funcName, "Entered function")

    allergens = {"Unknown"}
    -- Check if RM_Food[foodID] exists
    if RM_Food[foodID] then
        -- Check if RM_Food[foodID].Allergens exists
        if RM_Food[foodID].Allergens then
            RMlog(_fileName, _funcName, "Allergens found for foodID: " .. tostring(foodID))
            allergens = RM_Food[foodID].Allergens
        end
    else
        RMlog(_fileName, _funcName, "Allergens not found for foodID: " .. tostring(foodID))
    end

    return allergens
end

function setAllergens(foodID, items)
    local _funcName = string.format("setAllergens(%s, %s)", tostring(foodID), tostring(items))
    RMlog(_fileName, _funcName, "Entered function with foodID: " .. tostring(foodID) .. " and items: " .. tostring(items))
    RM_Food[foodID].Allergens = items
    return logAndReturn(_fileName, _funcName, "Set allergens: " .. tostring(items), RM_Food[foodID].Allergens)
end

function addAllergens(foodID, items)
    local _funcName = string.format("addAllergens(%s, %s)", tostring(foodID), tostring(items))
    RMlog(_fileName, _funcName, "Entered function with foodID: " .. tostring(foodID) .. " and items: " .. tostring(items))
    table.insert(RM_Food[foodID].Allergens, items)
    return logAndReturn(_fileName, _funcName, "Added items: " .. tostring(items), RM_Food[foodID].Allergens)
end

function removeAllergens(foodID, items)
    local _funcName = string.format("removeAllergens(%s, %s)", tostring(foodID), tostring(items))
    RMlog(_fileName, _funcName, "Entered function with foodID: " .. tostring(foodID) .. " and items: " .. tostring(items))
    RM_Food[foodID].Allergens[items] = nil
    return logAndReturn(_fileName, _funcName, "Removed items: " .. tostring(items), RM_Food[foodID].Allergens)
end

function addItems_RMFood(foodItems, override)
    override = override or false
    local _funcName = string.format("addItems_RMFood(%s, %s)", tostring(foodItems), tostring(override))
    RMlog(_fileName, _funcName, "Entered function with foodItems: " .. tostring(foodItems) .. " and override: " .. tostring(override))
    for _, foodID in pairs(foodItems) do
        if not RM_Food[foodID] then
            RM_Food[foodID] = {Ingredients = {}, Allergens = {}}
            RMlog(_fileName, _funcName, "Added foodID: " .. tostring(foodID))
        elseif override then
            RM_Food[foodID] = {Ingredients = {}, Allergens = {}}
            RMlog(_fileName, _funcName, "Overridden foodID: " .. tostring(foodID))
        end
    end
    return foodItems
end

function removeItems_RMFood(foodItems)
    local _funcName = string.format("removeItems_RMFood(%s)", tostring(foodItems))
    RMlog(_fileName, _funcName, "Entered function with foodItems: " .. tostring(foodItems))
    for _, foodID in pairs(foodItems) do
        if RM_Food[foodID] then
            RM_Food[foodID] = nil
            RMlog(_fileName, _funcName, "Removed foodID: " .. tostring(foodID))
        end
    end
    return foodItems
end

function checkIngredients(foodIDs, ingredients)
    local _funcName = string.format("checkIngredients(%s, %s)", tostring(foodIDs), tostring(ingredients))
    RMlog(_fileName, _funcName, "Entered function with foodIDs: " .. tostring(foodIDs) .. " and ingredients: " .. tostring(ingredients))
    
    local content = 0

    for _, foodID in pairs(foodIDs) do
        if RM_Food[foodID] and RM_Food[foodID].Ingredients then
            for _, _ingredient in pairs(RM_Food[foodID].Ingredients) do
                for _, ingredient in pairs(ingredients) do
                    if _ingredient == ingredient then
                        content = content + 1
                    end
                end
            end
        else
            RMlog(_fileName, _funcName, "No ingredients found for foodID: " .. tostring(foodID))
        end
    end

    return logAndReturn(_fileName, _funcName, "Ingredient check result: " .. tostring(content), content)
end


function checkAllergens(foodIDs, allergens)
    local _funcName = string.format("checkAllergens(%s, %s)", tostring(foodIDs), tostring(allergens))
    RMlog(_fileName, _funcName, "Entered function with foodIDs: " .. tostring(foodIDs) .. " and allergens: " .. tostring(allergens))
    
    local content = 0

    for _, foodID in pairs(foodIDs) do
        if RM_Food[foodID] and RM_Food[foodID].Allergens then
            for _, _allergen in pairs(RM_Food[foodID].Allergens) do
                for _, allergen in pairs(allergens) do
                    if _allergen == allergen then
                        content = content + 1
                    end
                end
            end
        else
            RMlog(_fileName, _funcName, "No allergens found for foodID: " .. tostring(foodID))
        end
    end

    return logAndReturn(_fileName, _funcName, "Allergen check result: " .. tostring(content), content)
end


function applyPlayerIntolerances(player, number)
    local _funcName = string.format("applyPlayerIntolerances(%s, %s)", tostring(player), tostring(number))
    RMlog(_fileName, _funcName, "Entered function")

    local modData = player:getModData()

    -- Check if player.diseases contains "Intolerance"
    if not modData.diseases or not modData.diseases["Intolerance"] then
        RMlog(_fileName, _funcName, "Player does not have 'Intolerance' disease")
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

    RMlog(_fileName, _funcName, "Applied " .. tostring(x) .. " Intolerances to player with 'Intolerance' disease")
    for _, intolerance in pairs(playerIntolerances) do
        RMlog(_fileName, _funcName, "Intolerance: " .. tostring(intolerance))
    end
end

function applyPlayerAllergens(player, number)
    local _funcName = string.format("applyAllergens(%s, %s)", tostring(player), tostring(number))
    RMlog(_fileName, _funcName, "Entered function")

    local modData = player:getModData()

    -- Check if player.diseases contains "Allergie"
    if not modData.diseases or not modData.diseases["Allergie"] then
        RMlog(_fileName, _funcName, "Player does not have 'Allergie' disease")
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

    RMlog(_fileName, _funcName, "Applied " .. tostring(x) .. " allergens to player with 'Allergie' disease")
    for _, allergen in pairs(playerAllergens) do
        RMlog(_fileName, _funcName, "Allergen: " .. tostring(allergen))
    end
end

function removePlayerAllergens(player)
    local _funcName = string.format("removePlayerAllergens(%s)", tostring(player))
    RMlog(_fileName, _funcName, "Entered function")

    local modData = player:getModData()

    -- Check if player.diseases contains "Allergie"
    if modData.diseases and modData.diseases["Allergie"] and modData.diseases["Allergie"].Allergens then
        -- Remove all allergens
        modData.diseases["Allergie"].Allergens = {}
        RMlog(_fileName, _funcName, "Removed all allergens from player with 'Allergie' disease")
    else
        RMlog(_fileName, _funcName, "No allergens found to remove for player")
    end
end

function removePlayerIntolerances(player)
    local _funcName = string.format("removePlayerIntolerances(%s)", tostring(player))
    RMlog(_fileName, _funcName, "Entered function")

    local modData = player:getModData()

    -- Check if player.diseases contains "Intolerance"
    if modData.diseases and modData.diseases["Intolerance"] and modData.diseases["Intolerance"].Intolerances then
        -- Remove all intolerances
        modData.diseases["Intolerance"].Intolerances = {}
        RMlog(_fileName, _funcName, "Removed all intolerances from player with 'Intolerance' disease")
    else
        RMlog(_fileName, _funcName, "No intolerances found to remove for player")
    end
end

function getPlayerAllergens(_player)
    local _funcName = string.format("getPlayerAllergens(%s)", tostring(_player))
    RMlog(_fileName, _funcName, "Entered function")
    local modData = getPlayer():getModData()

    -- Get Allergens from player.getModData().diseases["Allergie"].Allergens
    if modData.diseases and modData.diseases["Allergie"] and modData.diseases["Allergie"].Allergens then
        local allergens = modData.diseases["Allergie"].Allergens
        RMlog(_fileName, _funcName, "Retrieved player allergens")
        return allergens
    else
        RMlog(_fileName, _funcName, "No allergens found for player")
        getPlayer():Say("Allergens: None")
        return {"None"}
    end
end

function getPlayerIntolerances(_player)
    local _funcName = string.format("getPlayerIntolerances(%s)", tostring(_player))
    RMlog(_fileName, _funcName, "Entered function")
    local modData = getPlayer():getModData()

    -- Get Allergens from player.getModData().diseases["Allergie"].Allergens
    if modData.diseases and modData.diseases["Intolerance"] and modData.diseases["Intolerance"].Intolerances then
        local Intolerances = modData.diseases["Intolerance"].Intolerances
        RMlog(_fileName, _funcName, "Retrieved player allergens")
        return Intolerances
    else
        RMlog(_fileName, _funcName, "No Intolerances found for player")
        getPlayer():Say("Intolerances: None")
        return {"None"}
    end
end


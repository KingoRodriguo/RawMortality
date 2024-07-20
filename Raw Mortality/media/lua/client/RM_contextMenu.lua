require "RM_Food"
require "RM_Utils"

local _fileName = "RM_contextMenu.lua"

local function showFoodInfoContextOption(item, player)
    local _funcName = string.format("showFoodInfoContextOption(%s, %s)", tostring(item), tostring(player))
    RMlog(_fileName, _funcName, "Entered function")

    if not item or not player then
        RMlog(_fileName, _funcName, "Invalid parameters: item or player is nil")
        return
    end

    local itemName = item:getType()

    if not itemName then
        RMlog(_fileName, _funcName, "Item name is nil")
        return
    end

    local foodIngredients = getIngredients(itemName)
    if not foodIngredients then
        foodIngredients = {"Unknown"}
    end
    foodIngredientsList = table.concat(foodIngredients, ", ")

    local foodAllergens = getAllergens(itemName)
    if not foodAllergens then
        foodAllergens = {"Unknown"}
    end
    foodAllergensList = table.concat(foodAllergens, ", ")

    local playerAllergensList = getPlayerAllergens(getPlayer()) or {"None"}
    local playerIntolerantsList = getPlayerIntolerances(getPlayer()) or {"None"}

    local _infoFoodName = string.format("Food: %s", item:getDisplayName())
    local _infoIngredients = string.format("\nIngredients: %s",foodIngredientsList)
    local _infoAllergens = string.format("\nAllergens: %s",foodAllergensList)

    local _infoPlayerIntolerance = string.format("\n\nPlayer Intolerance: %s",table.concat(playerIntolerantsList, ", "))
    local _infoIntoleranceCount = string.format("\nIntolorance match: %s",checkIngredients({item:getType()},playerIntolerantsList))

    local _infoPlayerAllergens = string.format("\n\nPlayer Allergens: %s",table.concat(playerAllergensList, ", "))
    local _infoAllergensCount = string.format("\nAllergens match: %s",checkAllergens({item:getType()},playerAllergensList))
    
    local infoText = _infoFoodName.. "" .._infoIngredients.. "" .._infoAllergens.. "" .._infoPlayerAllergens.. "" .._infoAllergensCount.. "" .._infoPlayerIntolerance.. "" .._infoIntoleranceCount

    local window = ISCollapsableWindow:new(100, 100, 300, 200)
    window.title = "Food Informations"
    window:setResizable(false)
    window:addToUIManager()

    local richText = ISRichTextPanel:new(0, 16, window.width, window.height - 16)
    richText:initialise()
    richText:instantiate()
    richText:setText(infoText)
    richText:paginate()
    window:addChild(richText)

    RMlog(_fileName, _funcName, "Displayed information")
end

local function createContextMenu(player, context, items)
    local _funcName = string.format("createContextMenu(%s, %s, %s)", tostring(player), tostring(context), tostring(items))
    RMlog(_fileName, _funcName, "Entered function")

    if not player or not context or not items then
        RMlog(_fileName, _funcName, "Invalid parameters: player, context, or items is nil")
        return
    end

    for _, item in pairs(items) do
        -- Vérifiez le type d'élément ici
        local actualItem = item
        if not instanceof(item, "InventoryItem") then
            actualItem = item.items[1]
        end

        if actualItem and actualItem:getCategory() == "Food" then
            context:addOption("Show Food Info", actualItem, showFoodInfoContextOption, player)
            RMlog(_fileName, _funcName, "Added context menu option for item: " .. tostring(actualItem))
        else
            RMlog(_fileName, _funcName, "Item or RM_Food entry is nil for item: " .. tostring(actualItem))
        end
    end
end

Events.OnFillInventoryObjectContextMenu.Add(createContextMenu)

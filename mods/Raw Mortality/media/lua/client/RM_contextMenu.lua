require "RM_debugUtils"

require "RM_Food"
require "RM_Utils"
require "RM_UI"


local function showFoodInfoContextOption(item, player)
    
    if not item or not player then
        return
    end

    local itemName = item:getType()

    if not itemName then
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

    local _infoFoodName = string.format("Food: %s\n\n", item:getDisplayName())

    local _infoIngredients = ""
    local _infoAllergens = ""

    if isFoodPackaged(item) or _isDebugMode then
        getPlayer():Say(tostring(isFoodPackaged(item)))
        _infoIngredients = string.format("Ingredients: %s\n",foodIngredientsList)
        _infoAllergens = string.format("Allergens: %s\n\n",foodAllergensList)
    end

    local _infoPlayerIntolerance = string.format("Player Intolerance: %s\n",table.concat(playerIntolerantsList, ", "))
    local _infoIntoleranceCount = string.format("Intolorance match: %s\n\n",checkIngredients({item:getType()},playerIntolerantsList))

    local _infoPlayerAllergens = string.format("Player Allergens: %s\n",table.concat(playerAllergensList, ", "))
    local _infoAllergensCount = string.format("Allergens match: %s\n\n",checkAllergens({item:getType()},playerAllergensList))
    
    local _debugText = ""
    if _isDebugMode then
        _debugText = _infoPlayerAllergens.. "" .._infoAllergensCount.. "" .._infoPlayerIntolerance.. "" .._infoIntoleranceCount
    end

    local infoText = _infoFoodName.. "" .._infoIngredients.. "" .._infoAllergens.. "" .._debugText

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

    
end

local function createFoodInfoContextMenu(player, context, items)

    if not player or not context or not items or not _isDebugMode then
        
        return
    end

    for _, item in pairs(items) do
        local actualItem = item
        if not instanceof(item, "InventoryItem") then
            actualItem = item.items[1]
        end

        if actualItem and actualItem:getCategory() == "Food" then
            context:addOption("Debug Food Info", actualItem,function() openFoodLabel(actualItem) end, player) 
            context.iconTexture = getTexture("media/textures/_IsoObjInspect.png")
        else
            
        end
    end
end

Events.OnFillInventoryObjectContextMenu.Add(createFoodInfoContextMenu)
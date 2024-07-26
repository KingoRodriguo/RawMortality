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

    local foodIngredients = GetIngredients(itemName)
    if not foodIngredients then
        foodIngredients = {"Unknown"}
    end
    local foodIngredientsList = table.concat(foodIngredients, ", ")

    local foodAllergens = GetAllergens(itemName)
    if not foodAllergens then
        foodAllergens = {"Unknown"}
    end
    local foodAllergensList = table.concat(foodAllergens, ", ")

    local playerAllergensList = GetPlayerAllergens(getPlayer()) or {"None"}
    local playerIntolerantsList = GetPlayerIntolerances(getPlayer()) or {"None"}

    local _infoFoodName = string.format("Food: %s\n\n", item:getDisplayName())

    local _infoIngredients = ""
    local _infoAllergens = ""

    if IsFoodPackaged(item) or DebugMode then
        getPlayer():Say(tostring(IsFoodPackaged(item)))
        _infoIngredients = string.format("Ingredients: %s\n",foodIngredientsList)
        _infoAllergens = string.format("Allergens: %s\n\n",foodAllergensList)
    end

    local _infoPlayerIntolerance = string.format("Player Intolerance: %s\n",table.concat(playerIntolerantsList, ", "))
    local _infoIntoleranceCount = string.format("Intolorance match: %s\n\n",CheckIngredients({item:getType()},playerIntolerantsList))

    local _infoPlayerAllergens = string.format("Player Allergens: %s\n",table.concat(playerAllergensList, ", "))
    local _infoAllergensCount = string.format("Allergens match: %s\n\n",CheckAllergens({item:getType()},playerAllergensList))
    
    local _debugText = ""
    if DebugMode then
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

    if not player or not context or not items or not DebugMode then
        
        return
    end

    for _, item in pairs(items) do
        local actualItem = item
        if not instanceof(item, "InventoryItem") then
            actualItem = item.items[1]
        end

        if actualItem and actualItem:getCategory() == "Food" then
            --if isFoodPackaged(actualItem) then
                context:addOption("See Food Label", actualItem,function() OpenFoodLabel(actualItem) end, player) 
                context.iconTexture = getTexture("media/textures/_IsoObjInspect.png")
            --end
        else
            
        end
    end
end

Events.OnFillInventoryObjectContextMenu.Add(createFoodInfoContextMenu)
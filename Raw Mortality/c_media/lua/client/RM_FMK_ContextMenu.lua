-- RM_FMK_ContextMenu.lua
require "ISUI/ISContextMenu"
require "ISUI/ISModalDialog"
require "ISUI/ISButton"
require "RMF_Utils"
require "RM_FMK_Items"

local function showFoodInfo(item, player)
    if not item then
        getPlayer():Say("Erreur: l'élément est nul")
        return
    end
    if not player then
        print("Error: player is nil")
        return
    end

    local itemName = item:getType()
    if not itemName then
        getPlayer():Say("Erreur: le nom de l'élément est nul")
        return
    end

    local data = RMFood_Items[itemName]
    if not data then
        getPlayer():Say("Aucune information disponible pour l'élément: " .. itemName)
        return
    end

    local ingredients = table.concat(data.Ingredients, ", ") or "Unknown"
    local allergens = table.concat(data.Allergens, ", ") or "Unknown"
    local infoText = "Ingredients: " .. ingredients .. "\nAllergens: " .. allergens

    local modData = getPlayer():getModData()
    local PlayerAllergies = modData.PlayerAllergies or "None"
    local PlayerIntolerances = modData.PlayerIntolerances or "None"

    if PlayerAllergies ~= "None" then
        infoText = infoText .. "\n\nPlayer Allergies: " .. PlayerAllergies
    end

    if PlayerIntolerances ~= "None" then
        infoText = infoText .. "\n\nPlayer Intolerances: " .. PlayerIntolerances
    end

    getPlayer():Say("Affichage des informations sur l'aliment: " .. itemName)

    local modal = ISModalDialog:new(0, 0, 230, 120, infoText, false, nil, nil, 0, player)
    if not modal then
        getPlayer():Say("Erreur: la création de la boîte de dialogue a échoué")
        return
    end
    modal:initialise()
    modal:addToUIManager()

    -- Fonction pour simuler une allergie
    local function simulateAllergicReaction()
        print("[RM_FMK] Simulating allergy for " .. item:getName())
        getPlayer():Say("Simulating allergy for " .. item:getName())
        applySymptom(player, "AllergyEffect", 0.5, 2.0, 10, 20, 30, 40)
    end

    -- Fonction pour simuler une intolérance
    local function simulateIntoleranceReaction()
        print("[RM_FMK] Simulating intolerance for " .. item:getName())
        getPlayer():Say("Simulating intolerance for " .. item:getName())
        applySymptom(player, "IntoleranceEffect", 0.5, 2.0, 5, 10, 15, 20)
    end

    -- Ajouter les boutons pour simuler les réactions
    local buttonWidth = 150
    local buttonHeight = 25
    local buttonY = modal:getHeight() + 10

    local allergicButton = ISButton:new((modal:getWidth() - buttonWidth) / 2, buttonY, buttonWidth, buttonHeight, "Simuler Allergie", nil, simulateAllergicReaction)
    allergicButton:initialise()
    modal:addChild(allergicButton) -- Ajouté comme enfant du modal

    local intoleranceButton = ISButton:new((modal:getWidth() - buttonWidth) / 2, buttonY + buttonHeight + 10, buttonWidth, buttonHeight, "Simuler Intolérance", nil, simulateIntoleranceReaction)
    intoleranceButton:initialise()
    modal:addChild(intoleranceButton) -- Ajouté comme enfant du modal

    -- Ajuster la taille du modal pour inclure les boutons
    modal:setHeight(modal:getHeight() + buttonHeight * 2 + 30)
end

local function onFillInventoryObjectContextMenu(player, context, items)
    for _, item in ipairs(items) do
        -- Vérifiez le type d'élément ici
        local actualItem = item
        if not instanceof(item, "InventoryItem") then
            actualItem = item.items[1]
        end

        if actualItem and actualItem:getCategory() == "Food" then
            print("[RM_FMK] Adding Show Food Info option for " .. actualItem:getName())
            context:addOption("Show Food Info", actualItem, showFoodInfo, player)
        end
    end
end

Events.OnFillInventoryObjectContextMenu.Add(onFillInventoryObjectContextMenu)

require "RawMortality/media/lua/shared/list/FoodList"

local dvNotice = "* The % Daily Value (DV) tells you how much a nutrient in a serving of food contributes to a daily diet. 2,000 calories a day is used for general nutrition advice."

-- weight in kilogram
local g = 10^(-3) -- gram
local mg = 10^(-6) -- milligram
local mcg = 10^(-9) -- microgram

local foodList = RM_FoodList

-- Exemple d'utilisation
local placeHolderItem = {
    DisplayName = "Canned Bolognese",
    Weight = 0.8,
    Calorie = 0,
    Nutrients = {
        Macro = {
            AddedSugars = 0 * g,
            Carb = 0 * g,
        },
        Minerals = {
            Calcium = 0 * mg,
            Iron = 0 * mg,
        },
        Vitamins = {
            VitA = 0 * mcg,
            VitB1 = 0.0 * mg,
        },
    },
    Ingredients = {
        {name = "Tomatoes", qty = 200 * g},
    },
    Allergens = {
        "Tomatoes",
        "Meat",
        "Gluten",
        "Roots",
    },
}


local dailyValue = {
    Macro = {
        AddedSugars = {
            displayName = getText("UI_FoodLabel_DV_AddedSugars"),
            dv = 50 * g,
        },
        DietaryFiber = {
            displayName = getText("UI_FoodLabel_DV_DietaryFiber"),
            dv = 28 * g,
        },
        Fat = {
            displayName = getText("UI_FoodLabel_DV_Fat"),
            dv = 78 * g,
        },
        SaturatedFat = {
            displayName = getText("UI_FoodLabel_DV_SaturatedFat"),
            dv = 20 * g,
        },
        Carb = {
            displayName = getText("UI_FoodLabel_DV_Carb"),
            dv = 275 * g,
        },
        Protein = {
            displayName = getText("UI_FoodLabel_DV_Protein"),
            dv = 50 * g,
        },
        Cholesterol = {
            displayName = getText("UI_FoodLabel_DV_Cholesterol"),
            dv = 300 * mg,
        },
    },
    Minerals = {
        Calcium = {
            displayName = getText("UI_FoodLabel_DV_Calcium"),
            dv = 1300 * mg,
        },
        Chloride = {
            displayName = getText("UI_FoodLabel_DV_Chloride"),
            dv = 2300 * mg,
        },
        Copper = {
            displayName = getText("UI_FoodLabel_DV_Copper"),
            dv = 0.9 * mg,
        },
        Iodine = {
            displayName = getText("UI_FoodLabel_DV_Iodine"),
            dv = 150 * mcg,
        },
        Iron = {
            displayName = getText("UI_FoodLabel_DV_Iron"),
            dv = 18 * mg,
        },
        Magnesium = {
            displayName = getText("UI_FoodLabel_DV_Magnesium"),
            dv = 420 * mg,
        },
        Manganese = {
            displayName = getText("UI_FoodLabel_DV_Manganese"),
            dv = 2.3 * mg,
        },
        Molybdenum = {
            displayName = getText("UI_FoodLabel_DV_Molybdenum"),
            dv = 45 * mcg,
        },
        Phosphorus = {
            displayName = getText("UI_FoodLabel_DV_Phosphorus"),
            dv = 1250 * mg,
        },
        Potassium = {
            displayName = getText("UI_FoodLabel_DV_Potassium"),
            dv = 4700 * mg,
        },
        Selenium = {
            displayName = getText("UI_FoodLabel_DV_Selenium"),
            dv = 55 * mcg,
        },
        Sodium = {
            displayName = getText("UI_FoodLabel_DV_Sodium"),
            dv = 2300 * mg,
        },
        Zinc = {
            displayName = getText("UI_FoodLabel_DV_Zinc"),
            dv = 11 * mg,
        },
        Chromium = {
            displayName = getText("UI_FoodLabel_DV_Chromium"),
            dv = 35 * mcg,
        },
        Choline = {
            displayName = getText("UI_FoodLabel_DV_Choline"),
            dv = 550 * mg,
        },
    },
    Vitamins = {
        VitB7 = {
            displayName = getText("UI_FoodLabel_DV_VitB7"),
            dv = 30 * mcg,
        },
        VitB9 = {
            displayName = getText("UI_FoodLabel_DV_VitB9"),
            dv = 400 * mcg,
        },
        VitB3 = {
            displayName = getText("UI_FoodLabel_DV_VitB3"),
            dv = 16 * mg,
        },
        VitB5 = {
            displayName = getText("UI_FoodLabel_DV_VitB5"),
            dv = 5 * mg,
        },
        VitB2 = {
            displayName = getText("UI_FoodLabel_DV_VitB2"),
            dv = 1.3 * mg,
        },
        VitB1 = {
            displayName = getText("UI_FoodLabel_DV_VitB1"),
            dv = 1.2 * mg,
        },
        VitA = {
            displayName = getText("UI_FoodLabel_DV_VitA"),
            dv = 900 * mcg,
        },
        VitB6 = {
            displayName = getText("UI_FoodLabel_DV_VitB6"),
            dv = 1.7 * mg,
        },
        VitB12 = {
            displayName = getText("UI_FoodLabel_DV_VitB12"),
            dv = 2.4 * mcg,
        },
        VitC = {
            displayName = getText("UI_FoodLabel_DV_VitC"),
            dv = 90 * mg,
        },
        VitD = {
            displayName = getText("UI_FoodLabel_DV_VitD"),
            dv = 20 * mcg,
        },
        VitE = {
            displayName = getText("UI_FoodLabel_DV_VitE"),
            dv = 15 * mg,
        },
        VitK = {
            displayName = getText("UI_FoodLabel_DV_VitK"),
            dv = 120 * mcg,
        },
    },
}

function ISSimpleUI:setBorderNamedElements(v)
    for index, value in pairs(self.namedElements) do
        value:setBorder(v)
    end
end

local function roundToPercent(value)
    return math.floor((value * 1000) + 0.5) / 10
end

local function getSmallestUnit(weight)
    local modifiedWeight
    local unit
    if weight >= 1 then
        modifiedWeight = weight
        unit = "kg"
    elseif weight >= 10^(-3) then
        modifiedWeight = weight * 10^3
        unit = "g"
    elseif weight >= 10^(-6) then
        modifiedWeight = weight * 10^6
        unit = "mg"
    else
        modifiedWeight = weight * 10^9
        unit = "mcg"
    end
    modifiedWeight = math.floor((modifiedWeight*10)+0.5)/10
    return modifiedWeight, unit
end

local function FoodLabelUI(item)
    local food = RM_FoodList[item:getFullType()]
    local totalWeight = item:getWeight()
    local calories = item:getCalories() or math.floor(food.Calories*totalWeight)
    local UI = NewUI()
    local columnWidth = UI.pxlW/2

    UI:setDefaultLineHeightPixel(UI:getDefaultLineHeightPixel() * 1.2)
    local _lineHeight = UI:getDefaultLineHeightPixel()
    
    UI:setLineHeightPixel(_lineHeight * 2)
    UI:addText("", food.DisplayName, "Large", "Center")
    UI:nextLine()
    UI:setLineHeightPixel(_lineHeight * 2)
    UI:addText("", getText("UI_FoodLabel_NutritionFacts"), "Title", "Center")
    UI:nextLine()
    -- Divider
    UI:setLineHeightPixel(_lineHeight * 2)
    UI:addText("", getText("UI_FoodLabel_Calories"), "Title", "Left")
    UI:addText("", tostring(calories) .. " ", "Title", "Right")
    UI:nextLine()
    -- Divider
    UI:addEmpty("")
    UI:addText("", "% DV*    ", "Medium", "Right")
    UI:nextLine()
    -- Divider
    if  food.Nutrients then 
        for category, nutrients in pairs(food.Nutrients) do
            UI:setLineHeightPixel(_lineHeight * 1.2)
            UI:addText("", tostring(category), "Large", "Center")
            UI:nextLine()
            for nutrient, value in pairs(nutrients) do
                local dvInfo = dailyValue[category][nutrient]
                local percentDV = roundToPercent(value*totalWeight / dvInfo.dv)
                if value ~= 0 then
                    UI:addText("", "        " .. dvInfo.displayName, "Medium", "Left")
                    
                    local ajustedValue, unit = getSmallestUnit(value*totalWeight)
                    local s1 = string.format("%s %s", ajustedValue, unit)
                    local s2 = tostring(percentDV) .. " %"

                    UI:addText("", s1.."    ", "Medium", "Right")
                    UI:addText("", s2.."    ", "Medium", "Right")

                    UI:setColumnWidthPixel(1, columnWidth)
                    UI:setColumnWidthPixel(2, columnWidth/2)
                    UI:setColumnWidthPixel(3, columnWidth/2)

                    UI:nextLine()
                end
            end
        end
    end
    UI:setBorderToAllElements(true)
    UI:setBorderNamedElements(false)

    UI:addEmpty()
    UI:nextLine()

    local ingredients = ""
    for _, ingredient in ipairs(food.Ingredients) do
        if #ingredients ~= 0 then
            ingredients = ingredients .. ", "
        end
        local roundedValue = roundToPercent(ingredient.qty*totalWeight/totalWeight)
        local percent =  ""
        if roundedValue < 1 then
            percent = "(<1 %)"
        else
            percent = "("..roundedValue.." %)"
        end
        ingredients = ingredients .. "" .. ingredient.name .. " " ..percent
    end
    local s = "<LEFT><SIZE:medium>Ingredients: " .. ingredients

    UI:addEmpty()
    UI:addRichText("", s)
    UI:addEmpty()

    UI:setColumnWidthPixel(1, 20)
    UI:setColumnWidthPixel(2, UI.pxlW - 40)
    UI:setColumnWidthPixel(3, 20)

    UI:nextLine()
    UI:addEmpty()
    UI:nextLine()
    UI:addText("", getText("UI_FoodLabel_Advice"), "Title", "Center")

    UI:saveLayout()
end

-- Appel de la fonction
function OpenFoodLabel(food)
    FoodLabelUI(food)
end
local dvNotice = "* The % Daily Value (DV) tells you how much a nutrient in a serving of food contributes to a daily diet. 2,000 calories a day is used for general nutrition advice."

-- weight in kilogram
local g = 10^(-3) -- gram
local mg = 10^(-6) -- milligram
local mcg = 10^(-9) -- microgram

-- Exemple d'utilisation
local item = {
    DisplayName = "Canned Bolognese",
    Weight = 0.8,
    Calorie = 640,
    Nutrients = {
        Macro = {
            AddedSugars = 5 * g,
            Carb = 70 * g,
            DietaryFiber = 8 * g,
            Fat = 20 * g,
            Protein = 30 * g,
            SaturatedFat = 6 * g,
        },
        Minerals = {
            Calcium = 160 * mg,
            Iron = 5 * mg,
            Magnesium = 50 * mg,
            Phosphorus = 300 * mg,
            Potassium = 700 * mg,
            Sodium = 1200 * mg,
            Zinc = 4 * mg,
        },
        Vitamins = {
            VitA = 400 * mcg,
            VitB1 = 0.5 * mg,
            VitB2 = 0.4 * mg,
            VitB3 = 10 * mg,
            VitB6 = 0.8 * mg,
            VitB9 = 50 * mcg,
            VitB12 = 1.5 * mcg,
            VitC = 30 * mg,
            VitD = 1 * mcg,
            VitE = 2 * mg,
            VitK = 25 * mcg,
        },
    },
    Ingredients = {
        "Tomatoes",
        "Beef",
        "Onion",
        "Cornstarch",
        "Salt",
        "Wheat Flour",
        "Carrots",
        "Paprika",
        "Spaghetti",
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
            displayName = "Added Sugars",
            dv = 50 * g,
        },
        DietaryFiber = {
            displayName = "Dietary Fiber",
            dv = 28 * g,
        },
        Fat = {
            displayName = "Fat",
            dv = 78 * g,
        },
        SaturatedFat = {
            displayName = "Saturated Fat",
            dv = 20 * g,
        },
        Carb = {
            displayName = "Carbohydrate",
            dv = 275 * g,
        },
        Protein = {
            displayName = "Protein",
            dv = 50 * g,
        },
        Cholesterol = {
            displayName = "Cholesterol",
            dv = 300 * mg,
        },
    },
    Minerals = {
        Calcium = {
            displayName = "Calcium",
            dv = 1300 * mg,
        },
        Chloride = {
            displayName = "Chloride",
            dv = 2300 * mg,
        },
        Copper = {
            displayName = "Copper",
            dv = 0.9 * mg,
        },
        Iodine = {
            displayName = "Iodine",
            dv = 150 * mcg,
        },
        Iron = {
            displayName = "Iron",
            dv = 18 * mg,
        },
        Magnesium = {
            displayName = "Magnesium",
            dv = 420 * mg,
        },
        Manganese = {
            displayName = "Manganese",
            dv = 2.3 * mg,
        },
        Molybdenum = {
            displayName = "Molybdenum",
            dv = 45 * mcg,
        },
        Phosphorus = {
            displayName = "Phosphorus",
            dv = 1250 * mg,
        },
        Potassium = {
            displayName = "Potassium",
            dv = 4700 * mg,
        },
        Selenium = {
            displayName = "Selenium",
            dv = 55 * mcg,
        },
        Sodium = {
            displayName = "Sodium",
            dv = 2300 * mg,
        },
        Zinc = {
            displayName = "Zinc",
            dv = 11 * mg,
        },
        Chromium = {
            displayName = "Chromium",
            dv = 35 * mcg,
        },
        Choline = {
            displayName = "Choline",
            dv = 550 * mg,
        },
    },
    Vitamins = {
        VitB7 = {
            displayName = "Vitamin B7",
            dv = 30 * mcg,
        },
        VitB9 = {
            displayName = "Vitamin B9",
            dv = 400 * mcg,
        },
        VitB3 = {
            displayName = "Vitamin B3",
            dv = 16 * mg,
        },
        VitB5 = {
            displayName = "Vitamin B5",
            dv = 5 * mg,
        },
        VitB2 = {
            displayName = "Vitamin B2",
            dv = 1.3 * mg,
        },
        VitB1 = {
            displayName = "Vitamin B1",
            dv = 1.2 * mg,
        },
        VitA = {
            displayName = "Vitamin A",
            dv = 900 * mcg,
        },
        VitB6 = {
            displayName = "Vitamin B6",
            dv = 1.7 * mg,
        },
        VitB12 = {
            displayName = "Vitamin B12",
            dv = 2.4 * mcg,
        },
        VitC = {
            displayName = "Vitamin C",
            dv = 90 * mg,
        },
        VitD = {
            displayName = "Vitamin D",
            dv = 20 * mcg,
        },
        VitE = {
            displayName = "Vitamin E",
            dv = 15 * mg,
        },
        VitK = {
            displayName = "Vitamin K",
            dv = 120 * mcg,
        },
    },
}

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

function ISSimpleUI:setBorderNamedElements(v)
    for index, value in pairs(self.namedElements) do
        value:setBorder(v)
    end
end

local function FoodLabelUI(food)
    local UI = NewUI()
    local columnWidth = UI.pxlW/2

    UI:setDefaultLineHeightPixel(UI:getDefaultLineHeightPixel() * 1.2)
    _lineHeight = UI:getDefaultLineHeightPixel()
    
    UI:setLineHeightPixel(_lineHeight * 2)
    UI:addText("", food.DisplayName, "Large", "Center")
    UI:nextLine()
    UI:setLineHeightPixel(_lineHeight * 2)
    UI:addText("", "Nutrition Facts", "Title", "Center")
    UI:nextLine()
    -- Divider
    UI:setLineHeightPixel(_lineHeight * 2)
    UI:addText("", " Calories", "Title", "Left")
    UI:addText("", tostring(food.Calorie) .. " ", "Title", "Right")
    UI:nextLine()
    -- Divider
    UI:addEmpty("")
    UI:addText("", "% DV*    ", "Medium", "Right")
    UI:nextLine()
    -- Divider
    if not food.Nutrients then 
        food = item
    end

    for category, nutrients in pairs(food.Nutrients) do
        UI:setLineHeightPixel(_lineHeight * 1.2)
        UI:addText("", tostring(category), "Large", "Center")
        UI:nextLine()

        for nutrient, value in pairs(nutrients) do
            local dvInfo = dailyValue[category][nutrient]
            local percentDV = roundToPercent(value / dvInfo.dv)

            UI:addText("", "        " .. dvInfo.displayName, "Medium", "Left")
            
            local ajustedValue, unit = getSmallestUnit(value)
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

    UI:setBorderToAllElements(true)
    UI:setBorderNamedElements(false)

    UI:addEmpty()
    UI:nextLine()
    UI:addEmpty()
    UI:addRichText("", dvNotice, "Medium")
    UI:addEmpty()

    UI:setColumnWidthPixel(1, (UI.pxlW/10))
    UI:setColumnWidthPixel(2, ((UI.pxlW/10*8)))
    UI:setColumnWidthPixel(3, (UI.pxlW/10))

    UI:saveLayout()
end

-- Appel de la fonction
function openFoodLabel(food)
    FoodLabelUI(food or item)
end

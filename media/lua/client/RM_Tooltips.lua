require "RM_Food"
require "RM_Utils"
--[[ Scrapped for new UI
local oldRender = ISToolTipInv.render -- method caching

function ISToolTipInv:render() -- render() override
    local oldSetHeight = self.setHeight
    local oldDrawRectBorder = self.drawRectBorder

    if self.item and instanceof(self.item, "Food") and isFoodPackaged(self.item) then
        local item_full_type = self.item:getFullType()
        local ingredientList = RM_Food[self.item:getType()].Ingredients or {"nul", "nul"}
        local allergenList = RM_Food[self.item:getType()].Allergens or {"none"}

        -- Cut text to tooltip width
        local function wrapText(text, maxWidth, font)
            local lines = {}
            local currentLine = ""
            local words = string.gmatch(text, "([^,]+),?")

            for word in words do
                local testLine = currentLine == "" and word or currentLine .. ", " .. word
                if getTextManager():MeasureStringX(font, testLine) > maxWidth then
                    table.insert(lines, currentLine)
                    currentLine = word
                else
                    currentLine = testLine
                end
            end
            if currentLine ~= "" then
                table.insert(lines, currentLine)
            end
            return table.concat(lines, "\n")
        end

        -- setHeight() override
        self.setHeight = function(self, num, ...)
            num = num + 80 -- Augment the height value of the tooltip
            return oldSetHeight(self, num, ...)
        end

        -- drawRectBorder() override
        self.drawRectBorder = function(self, ...)
            local font = UIFont[getCore():getOptionTooltipFont()]
            local current_height = self.tooltip:getHeight() -- Avoid too much distance from the other item's details
            local current_width = self.tooltip:getWidth()

            -- Draw Ingredients
            self.tooltip:DrawText(font, "Ingredients:\n", 5, current_height, 1, 1, 0.8, 1)
            local wrappedIngredients = wrapText(table.concat(ingredientList, ", "), current_width - 10, font)
            self.tooltip:DrawText(font, wrappedIngredients, 5, current_height + 12, 1, 1, 1, 1)

            -- Draw Allergens
            current_height = current_height + 12 + getTextManager():MeasureStringY(font, wrappedIngredients)
            self.tooltip:DrawText(font, "Allergens:\n", 5, current_height, 1, 1, 0.8, 1)
            local wrappedAllergens = wrapText(table.concat(allergenList, ", "), current_width - 10, font)
            self.tooltip:DrawText(font, wrappedAllergens, 5, current_height + 12, 1, 1, 1, 1)

            -- Restore the original drawRectBorder method immediately after drawing custom content
            self.drawRectBorder = oldDrawRectBorder
            return oldDrawRectBorder(self, ...)
        end
    end

    -- Call the original render() method
    oldRender(self)
    self.setHeight = oldSetHeight
    self.drawRectBorder = oldDrawRectBorder
end
]]--

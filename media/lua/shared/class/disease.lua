-- Define the Disease class
Disease = {}

local diseasesList = {
    Allergie = {    --Disease parameter setup
        name = "Allergie",
        isPermanent = false, --Can this disease be cured
        isSymptomCurable = true, --Can drugs cure symptom of the disease
        isActive = false, --Does the symptoms should be applied

        triggers = {}, --Set what will trigger the disease
    },

    Intolerance = {
        name = "Intolerance",
        isPermanent = true,
        isSymptomCurable = true,
        isActive = false,

        triggers = {},
    },
}


-- Constructor
function Disease:new(diseaseID)
    local obj = {
        --Define the disease parameters
        name = diseasesList[diseaseID].name,
        isPermanent = diseasesList[diseaseID].isPermanent,
        isSymptomCurable = diseasesList[diseaseID].isSymptomCurable,
        isActive = diseasesList[diseaseID].isActive,
        triggers = diseasesList[diseaseID].triggers,        
    }
    setmetatable(obj, self)
    self.__index = self
    return obj
end

function Disease:setTriggers(list)
    --if list is empty, set triggers to nil
    --if list is a string, set triggers to a table containing the string
    --if list is a table, set triggers to the table
    
    if list == nil then
        self.triggers = nil
    elseif type(list) == "string" then
        self.triggers = {list}
    elseif type(list) == "table" then
        self.triggers = list
    end
end
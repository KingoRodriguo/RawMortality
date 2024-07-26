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

-- Creates a new instance of the Disease class
-- diseaseID: string, the ID of the disease
-- returns: table, the new Disease object
function Disease:new(diseaseID)
    -- Create a new object with disease parameters
    local obj = {
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

-- Sets the triggers for the disease
-- list: string or table, the triggers to set
function Disease:setTriggers(list)
    -- If the list is empty, set triggers to nil
    -- If the list is a string, set triggers to a table containing the string
    -- If the list is a table, set triggers to the table

    if list == nil then
        self.triggers = nil
    elseif type(list) == "string" then
        self.triggers = {list}
    elseif type(list) == "table" then
        self.triggers = list
    end
end

-- Gets a list of all disease IDs
-- returns: table, a list of all disease IDs
function Disease:getAllID()
    if diseasesList == nil then
        return {}
    end
    local list = {}
    for k, v in pairs(diseasesList) do
        table.insert(list, k)
    end
    return list
end

-- Gets the diseasesList table
-- returns: table, the diseasesList table
function Disease:getDiseasesList()
    -- If the list is empty, return an empty table
    if diseasesList == nil then
        return {}
    end
    return diseasesList
end

-- Sets the diseasesList table
-- list: table, the new diseasesList
-- overwrite: boolean, whether to overwrite existing diseases or not
-- returns: table, the updated diseasesList
function Disease:setDiseasesList(list, overwrite)
    if overwrite == nil then
        overwrite = false
    end
    for k, v in pairs(list) do
        if diseasesList[k] ~= nil then
            if overwrite then
                diseasesList[k] = v
            end
        else
            diseasesList[k] = v
        end
    end
    return diseasesList
end

-- Adds a new disease to the diseasesList
-- diseaseID: string, the ID of the new disease
-- disease: table, the parameters of the new disease
-- checks if the disease already exists in the diseasesList
-- returns: table or false, the updated diseasesList on success, false otherwise and logs the error
function Disease:addDisease(diseaseID, disease)
    if diseasesList[diseaseID] ~= nil then
        Log(string.format("Disease %s already exists", diseaseID))
        return false
    end
    diseasesList[diseaseID] = disease
    return diseasesList
end
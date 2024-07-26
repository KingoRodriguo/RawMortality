-- Define the Disease class
Disease = {}

--[[ Define the RM_Diseases table

!!!MOCKUP!!!
local diseasesList = {
    Allergie = {    --Disease parameter setup
        name = "Allergie",
        isPermanent = false, --Can this disease be cured
        isSymptomCurable = true, --Can drugs cure symptom of the disease
        isActive = false, --Does the symptoms should be applied

        Allergens = {}, --Set by applyPlayerAllergens()
    },

    Intolerance = {
        name = "Intolerance",
        isPermanent = true,
        isSymptomCurable = true,
        isActive = false,

        Intolerances = {}, --Set by applyPlayerIntolerances()
    },
} --]]


-- Constructor
function Disease:new(diseaseID)
    local obj = {
        --Define the disease parameters
    }
    setmetatable(obj, self)
    self.__index = self
    return obj
end
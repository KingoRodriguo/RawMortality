-- Define the Disease class
Disease = {}

--[[ Define the RM_Diseases table

!!!MOCKUP!!!
local diseasesList = {
    Allergie = {    --Disease parameter setup
        name = "Allergie",
        isFatal = true, --Can player die from this disease
        isPermanent = true, --Can this disease be cured
        isSymptomCurable = true, --Can drugs cure symptom of the disease
        isActive = false, --Does the symptoms should be applied
        currentProgression = 0, --Current progression of the disease in the body
        severity = 0.5, --Progression Multiplier (should be between 0 and 1)

        maxAllergens = 3,
        Allergens = {}, --Set by applyPlayerAllergens()
    },

    Intolerance = {
        name = "Intolerance",
        isFatal = false,
        isPermanent = true,
        isSymptomCurable = true,
        isActive = false,
        currentProgression = 0,
        severity = 0.2,

        maxIntolerances = 3,
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
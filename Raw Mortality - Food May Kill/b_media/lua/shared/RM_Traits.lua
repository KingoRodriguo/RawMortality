--Traits definition for RM mod

--Traits List
local RM_Traits = {    

    --TraitID = {
    --    active = true,              --> type(boolean)   |   [optional]  |   Default:false 
    --    type = "Disease",           --> type(string)    |   [optional]  |   Default:"TraitID"
    --    name = "Trait",             --> type(string)    |   [optional]  |   Default:"TraitID"
    --    cost = -2,                  --> type(int)       |   [optional]  |   Default:0
    --    desc = "This is a trait",   --> type(string)    |   [optional]  |   Default:""
    --    profession = false,         --> type(boolean)   |   [optional]  |   Default:false
    --    removeInMP = false,         --> type(boolean)   |   [optional]  |   Default:false
    --},

    default = {
        active = false,
        cost = 0,
        desc = "",
        profession = false,
        removeInMP = false,
    },
    
    --Allergic trait definition
    RM_Allergic = {
        active = true,
        type = "Disease",
        name = "Allergic",
        cost = -4,
        desc = "You are allergic to some food",
        profession = false,
        removeInMP = false,
    },

    --Intolerant trait definition
    RM_Intolerant = {
        active = true,
        type = "Disease",
        name = "Intolerant",
        cost = -2,
        desc = "You are intolerant to some food",
        profession = false,
        removeInMP = false,
    }
}

--Trait initialiaztion
function initRMTraits() 
    --Check for RM_Traits
    if not RM_Traits then
        print("RM_Traits.lua | initRMTraits() | failed to validate RM_Traits existence")
        return false
    end

    --Validatation for RM_Traits[] type
    if typeCheck(RM_Traits) ~= "table" then 
        print("RM_Traits.lua | initRMTraits() | failed to validate RM_Traits[] type | Expected type : table | RM_Traits type was " ..tostring( typeCheck(RM_Traits))
        return false
    end

    --check for RM_Traits[defautl]
    if not RM_Traits[default] then
        print("RM_Trait.lua | initRMTraits() | failed to validate RM_Traits[default] and was aborted")
        return false
    end

    local defaultTrait_active = false
    local defaultTrait_cost = 0
    local defaultTrait_desc = ""
    local defaultTrait_profession = false
    local defaulttrait_removeInMP = false

    --For each trait in RM_Traits
    for _, traitID in ipairs(RM_Traits) do
        if traitID ~= "default" then
            if RM_Traits[traitID].active then
                local defaultTrait_type = string(traitID)
                local defaultTrait_name = string(traitID)
                
                --check for parameter
                local _type = RM_Traits[traitID].type or defaultTrait_type
                local _name = RM_Traits[traitID].name or defaultTrait_name
                local _cost = RM_Traits[traitID].cost or defaultTrait_cost
                local _desc = RM_Traits[TraitID].desc or defaultTrait_desc
                local _profession = RM_Traits[traitID] or defaultTrait_profession
                local _removeInMP = RM_Traits[traitID] or defaulttrait_removeInMP
                
                --Add trait with TraitFactory
                TraitFactory.addTrait(_type, _name, _cost, _desc, _profession, _removeInMP)
                print("RM_Traits.lua | initRMTraits() | sucessfuly initialized the trait " ..tostring(traitID)
            end
        end
    end
end

--Function to get RM_Traits[traitID].parameter
--Return false on error else return RM_Traits[traitID].parameter
function getRMTraitParameter(traitID, parameter)
    --Check for RM_Traits
    if not RM_Traits then 
        print("RM_Traits.lua | getRMTraitParameter(" ..tostring(traitID).. ", " ..tostring(parameter).. ") | failed to validate RM_Traits existence")
        return false
    end

    --Validatation for RM_Traits type
    if typeCheck(RM_Traits) ~= "table" then 
        print("RM_Traits.lua | getRMTraitParameter(" ..tostring(traitID).. ", " ..tostring(parameter).. ") | failed to validate RM_Traits[] type | Expected type : table | RM_Traits type was " ..tostring( typeCheck(RM_Traits))
        return false
    end

    --Validatation for RM_Traits[traitID]
    if not RM_Traits[traitID] then
        print("RM_Traits.lua | getRMTraitParameter(" ..tostring(traitID).. ", " ..tostring(parameter).. ") | failed to validate RM_Traits[" ..tostring(traitID).. "]")
        return false
    end

    --Validatation for RM_Traits[traitID].parameter
    if not RM_Traits[traitID].parameter then
        print("RM_Traits.lua | getRMTraitParameter(" ..tostring(traitID).. ", " ..tostring(parameter).. ") | failed to validate RM_Traits[" ..tostring(traitID).. "]." ..tostring(parameter)
        return false
    end

    return RM_Traits[traitID].parameter
end

--Function to set RM_Traits[traitID].parameter
--Return false on error else return true
function setRMTraitParameter(traitID, parameter, value)
    --Check for RM_Traits
    if not RM_Traits then 
        print("RM_Traits.lua | setRMTraitParameter(" ..tostring(traitID).. ", " ..tostring(parameter).. ") | failed to validate RM_Traits existence")
        return false
    end

    --Validatation for RM_Traits type
    if typeCheck(RM_Traits) ~= "table" then 
        print("RM_Traits.lua | setRMTraitParameter(" ..tostring(traitID).. ", " ..tostring(parameter).. ") | failed to validate RM_Traits[] type | Expected type : table | RM_Traits type was " ..tostring( typeCheck(RM_Traits))
        return false
    end

    --Validatation for RM_Traits[traitID]
    if not RM_Traits[traitID] then
        print("RM_Traits.lua | setRMTraitParameter(" ..tostring(traitID).. ", " ..tostring(parameter).. ") | failed to validate RM_Traits[" ..tostring(traitID).. "]")
        return false
    end

    RM_Traits[traitID].parameter = value

    if getRMTraitParameter(traitID, parameter) ~= value then
        print("RM_Traits.lua | setRMTraitParameter(" ..tostring(traitID).. ", " ..tostring(parameter).. ") | failed to set RM_Traits[" ..tostring(traitID).. "]." ..tostring(parameter).. " to value = "..value)
        return false
    end

    return true
end

--Function to define RM_Traits[traitID] with traitDefinition
--Return false on error else return true
function setRMTraitDefinition(traitID, traitDefinition)
    --Check if traitDefinition is a table
    if typeCheck(traitDefinition) ~= "table" then 
        print("RM_Traits.lua | setRMTraitDefinition(" ..tostring(traitID).. ", " ..tostring(traidDefinition).. " | failed to validate traitDefinition type ase table")
        return false
    end

    --Check for RM_Traits
    if not RM_Traits then 
        print("RM_Traits.lua | setRMTraitDefinition(" ..tostring(traitID).. ", " ..tostring(traidDefinition).. " | failed to validate RM_Traits existence")
        return false
    end

    --Check for RM_Traits type
    if typeCheck(RM_Traits) ~= "table" then 
        print("RM_Traits.lua | setRMTraitDefinition(" ..tostring(traitID).. ", " ..tostring(traidDefinition).. " | failed to validate RM_Traits type | Expected type : table | RM_Traits type was " ..tostring( typeCheck(RM_Traits))
        return false
    end

    --Check for RM_Traits[traitID]
    if not RM_Traits[traitID] then
        table.insert(RM_Traits, traitID)

        if not RM_Traits[traitID] then
            print("RM_Traits.lua | setRMTraitDefinition(" ..tostring(traitID).. ", " ..tostring(traidDefinition).. " | failed to create RM_Traits[" ..tostring(traitID).. "]")
        end
    end

    RM_Traits[traitID] = traitDefinition

    --Check if RM_Traits[traitID] was set correctly
    if RM_Traits[traitID] ~= traitDefinition then
        print("RM_Traits.lua | setRMTraitParameter(" ..tostring(traitID).. ", " ..tostring(traidDefinition).. " | failed to set RM_Traits[" ..tostring(traitID).. "] to value = traitDefinition")
    end

    return true
end

--Function to remove RM_Traits[traitID]
--return false on error else return true
function removeRMTraitDefinition(traitID)
    --Check for RM_Traits
    if not RM_Traits then 
        print("RM_Traits.lua | removeRMTraitDefinition(" ..tostring(traitID).. ") | failed to validate RM_Traits existence")
        return false
    end

    --Check for RM_Traits type
    if typeCheck(RM_Traits) ~= "table" then 
        print("RM_Traits.lua | removeRMTraitDefinition(" ..tostring(traitID).. ") | failed to validate RM_Traits type | Expected type : table | RM_Traits type was " ..tostring( typeCheck(RM_Traits))
        return false
    end

    --Check for RM_Traits[traitID]
    if RM_Traits[traitID] then
        RM_Traits[traitID] = nil

        if RM_Traits[traitID] then
            print("RM_Traits.lua | removeRMTraitParameter(" ..tostring(traitID).. ") | failed to remove RM_Traits[" ..tostring(traitID).. "] from RM_Traits")
            return false
        end
    end

    return true
end

--check for lua type of things (return number for int and float)
--return false on error else return type(thing)
function typeCheck(thing)
    if not thing then
        print("RM_Traits.lua | typeCheck(" ..tostring(thing).. ") | failed to validate " ..tostring(tostring(thing))
        return false
    end

    return type(thing)
end

--Trait initialization on game boot
Events.OnGameBoot.Add(initRMTraits)
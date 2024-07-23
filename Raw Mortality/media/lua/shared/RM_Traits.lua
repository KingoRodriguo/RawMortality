--Traits definition for RM mod


require "RM_Utils"
require "RM_Diseases"

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

    Default = {
        active = false,
        cost = 0,
        desc = "",
        profession = false,
        removeInMP = false,
    },
    
    --Allergic trait definition
    RM_Allergic = {
        active = true,
        type = "RM_Allergic",
        name = "Allergic",
        cost = -4,
        desc = "You are allergic to some food",
        profession = false,
        removeInMP = false,
        Disease = "Allergie",
    },

    --Intolerant trait definition
    RM_Intolerant = {
        active = true,
        type = "RM_Intolerant",
        name = "Intolerant",
        cost = -2,
        desc = "You are intolerant to some food",
        profession = false,
        removeInMP = false,
        Disease = "Intolerance",
    }
}

--Trait initialiaztion
function initRMTraits()
    

    if not RM_Traits or type(RM_Traits) ~= "table" then
        
        return
    end

    for traitID, traitData in pairs(RM_Traits) do
        if traitID ~= "Default" then
            if traitData.active then
                local _type = traitData.type or traitID
                local _name = traitData.name or traitID
                local _cost = traitData.cost or 0
                local _desc = traitData.desc or ""
                local _profession = traitData.profession or false
                local _removeInMP = traitData.removeInMP or false

                if not _type or not _name then
                    
                    return
                end

                TraitFactory.addTrait(_type, _name, _cost, _desc, _profession, _removeInMP)
                
            else
                
            end
        else
            
        end
    end

    
end


--Function to get RM_Traits[traitID].parameter
--Return false on error else return RM_Traits[traitID].parameter
function getRMTraitParameter(traitID, parameter)
    

    return RM_Traits[traitID].parameter or false
end

--Function to set RM_Traits[traitID].parameter
--Return false on error else return RM_Traits[traitID].parameter
function setRMTraitParameter(traitID, parameter, value)
    

    RM_Traits[traitID].parameter = value or RM_Traits["Default"].parameter

    return RM_Traits[traitID].parameter or false
end

--Function to define RM_Traits[traitID] with traitDefinition
--Return false on error else return RM_Traits[traitID]
function setRMTraitDefinition(traitID, traitDefinition)
    
    
    RM_Traits[traitID] = traitDefinition
    return RM_Traits[traitID] or false
end

--Function to remove RM_Traits[traitID]
--return false on error else return true
function removeRMTraitDefinition(traitID)
    
    
    if RM_Traits[traitID] then
        RM_Traits[traitID] = nil

        if RM_Traits[traitID] then
            
            return false
        end
    end

    return true
end

--Trait initialization on game boot
Events.OnGameBoot.Add(initRMTraits)

function checkTraitDiseases(player)
    
    

    local staticTraits = player:getCharacterTraits()

    for i = 0, staticTraits:size() - 1 do
        local trait = staticTraits:get(i)
        if RM_Traits[trait] and RM_Traits[trait].Disease then
            local diseaseID = RM_Traits[trait].Disease
            if RM_Diseases[diseaseID] then
                
                getDisease(player, diseaseID)
            else
                
            end
        else
            
        end
    end
end

-- Hook into the player creation event
local function onPlayerCreate(playerIndex, player)
    
    
    checkTraitDiseases(player)
end

Events.OnCreatePlayer.Add(onPlayerCreate)



require "RM_debugUtils"
require "RM_Diseases"
require "RM_UI"

local _defaultTexture = "media/textures/_IsoObjInspect.png"

--////////////////////////////////////////////////////////////////////
--Context menu definition
--////////////////////////////////////////////////////////////////////

DebugMenu = {
    _Main = { 
        DisplayName = "Raw Mortality",
        func = function() return nil end,
        texture = _defaultTexture,
        subs = {
            _Option1 = {
                DisplayName = "Diseases",
                func = function() return nil end,
                texture = _defaultTexture,
    
                subs = {

                    _option1 = {
                        DisplayName = "General",
                        func = function() return nil end,

                        subs = {
                            _option1 = {
                                DisplayName = "Check player diseases",
                                func = function() CheckDisease(getPlayer()) end,
                            },
                            _option2 = {
                                DisplayName = "Remove player diseases",
                                func = function() CureDisease(getPlayer(), "all") end,
                            },
                            _option3 = {
                                DisplayName = "add player diseases",
                                func = nil,
            
                                subs = {
                                    _option1 = {
                                        DisplayName = "Allergie",
                                        func = function () GetDisease(getPlayer(), "Allergie") end,
                                    },
                                    _option2 = {
                                        DisplayName = "Intolerance",
                                        func = function () GetDisease(getPlayer(), "Intolerance") end,
                                    },
                                },
                            },
                        }
                    },
                    
                },
            },
            _Option2 = {
                DisplayName = "Food",
                func = function() return nil end,
                texture = _defaultTexture,
    
                subs = {},
            },
            _Option3 = {
                DisplayName = "Traits",
                func = function() return nil end,
                texture = _defaultTexture,
    
                subs = {},                    
            },
            _Option4 = {
                DisplayName = "Food",
                func = function() return nil end,
                texture = _defaultTexture,
    
                subs = {},                    
            },

            _Option5 = {
                DisplayName = "Debug",
                func = function() return nil end,
                texture = _defaultTexture,
    
                subs = {},                    
            },

            _Option6 = {
                DisplayName = "UI",
                func = function() return nil end,
                texture = _defaultTexture,
    
                subs = {
                    _Option1 = {
                        DisplayName = "Open Food UI",
                        func = function() OpenFoodLabel() end,
                        texture = _defaultTexture,
            
                        subs = {},                    
                    },
                },                    
            },
        },

    },
}
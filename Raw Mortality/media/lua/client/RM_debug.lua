require "RM_debugUtils"
require "RM_Diseases"

_defaultTexture = "media/textures/_IsoObjInspect.png"

--////////////////////////////////////////////////////////////////////
--Context menu definition
--////////////////////////////////////////////////////////////////////

debugMenu = {
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
                                func = function() checkDisease(getPlayer()) end,
                            },
                            _option2 = {
                                DisplayName = "Remove player diseases",
                                func = function() cureDisease(getPlayer(), "all") end,
                            },
                            _option3 = {
                                DisplayName = "add player diseases",
                                func = nil,
            
                                subs = {
                                    _option1 = {
                                        DisplayName = "Allergie",
                                        func = function () getDisease(getPlayer(), "Allergie") end,
                                    },
                                    _option2 = {
                                        DisplayName = "Intolerance",
                                        func = function () getDisease(getPlayer(), "Intolerance") end,
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
            
        },

    },
}
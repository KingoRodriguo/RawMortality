--debug utils in debugMode only

--////////////////////////////////////////////////////////////////////
--file required
--////////////////////////////////////////////////////////////////////

require "RM_Diseases"
require "RM_debug"

--////////////////////////////////////////////////////////////////////
-- global debug variable
--////////////////////////////////////////////////////////////////////

DebugMode = true

--////////////////////////////////////////////////////////////////////
-- debug Menu functions definition
--////////////////////////////////////////////////////////////////////



--////////////////////////////////////////////////////////////////////
-- debug Menu Setup
--////////////////////////////////////////////////////////////////////

local function addSubMenus(context, parentMenu, subs, worldObjects, player)
    if not DebugMode then  return end
    for _, sub in pairs(subs) do
        local _subMenu = context:addOption(sub.DisplayName or "Error", worldObjects, function() sub.func() end )
        if sub.texture then
            _subMenu.iconTexture = getTexture(sub.texture)
        end
        if sub.subs then
            local _newContext = ISContextMenu:getNew(context)
            addSubMenus(_newContext, _subMenu, sub.subs, worldObjects, player)
            context:addSubMenu(_subMenu, _newContext)
        end
    end
end

local function RMDebugContext(player, context, worldObjects, test)
    if not DebugMode then return end
    for _, option in pairs(DebugMenu) do
        local _mainMenu = context:addOptionOnTop(option.DisplayName or "Error", worldObjects, function() option.func() end)
        if option.texture then
            _mainMenu.iconTexture = getTexture(option.texture)
        end
        if option.subs then
            local _newContext = ISContextMenu:getNew(context)
            addSubMenus(_newContext, _mainMenu, option.subs, worldObjects, player)
            context:addSubMenu(_mainMenu, _newContext)
        end
    end
end

Events.OnFillWorldObjectContextMenu.Add(RMDebugContext)
--all utils functions

local version = "0.1.0"

--easy logging function
function Log(text)
    print("RawMortality: "..text)
end

--return mod version
function GetModVersion()
    return version
end

--function that check if a version is greater or equal than the mod version
function CheckVersion(version)
    local modVersion = GetModVersion()
    local modVersionTable = {}
    local versionTable = {}
    for i in string.gmatch(modVersion, "%d+") do
        table.insert(modVersionTable, i)
    end
    for i in string.gmatch(version, "%d+") do
        table.insert(versionTable, i)
    end
    for i=1, #modVersionTable do
        if tonumber(modVersionTable[i]) > tonumber(versionTable[i]) then
            return true
        elseif tonumber(modVersionTable[i]) < tonumber(versionTable[i]) then
            return false
        end
    end
    return true
end
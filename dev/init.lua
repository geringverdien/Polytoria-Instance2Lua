local header = require("./header.lua")
CONFIG = require("./lib/Config.module.lua")


local APIDump = require("./lib/APIDump.module.lua")
local ResolveType = require("./lib/TypeResolver.module.lua")
local GetProperties = require("./lib/GetProperties.module.lua")

local existingInstances = {}

local function randomString(length)
    local charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    local result = ""
    for _ = 1, length do
        local randomIndex = math.random(1, #charset)
        result = result .. charset:sub(randomIndex, randomIndex)
    end
    return result
end

local function generateUniqueName(baseName)
    local uniqueName = string.gsub(baseName, " ", "_")
    while existingInstances[uniqueName] ~= nil do
        uniqueName = baseName .. "_" .. randomString(3)
    end
    existingInstances[uniqueName] = true
    return uniqueName
end

local function getRootParent(instance)
    local result = ""
    local current = instance
    while current.Parent do
        current = current.Parent
        if current == game then return "game" .. result end
        result = "[\"" .. current.Name .. "\"]".. result
    end

    return result
end

local function addProperties(APIPropertyList, instanceProxy, customName, APIEntry, code)
	if #APIEntry.Inherits > 0 then
		for _, AncestorClass in pairs(APIEntry.Inherits) do
			local ancestorAPIEntry = APIDump[AncestorClass]
			assert(ancestorAPIEntry, "No API entry found for ancestor type: " .. AncestorClass)
			local ancestorProperties = ancestorAPIEntry.Properties
			local ancestorProxy = GetProperties[AncestorClass](instanceProxy)
			code = code .. addProperties(ancestorProperties, ancestorProxy, customName, ancestorAPIEntry, code)
		end
	end
	for propName, propType in pairs(APIPropertyList) do
        local propValue = instanceProxy[propName]
        print("Serializing property:", propName, "of type:", propType, "with value:", propValue)
        local resolvedValue = ResolveType(propValue, propType)
        code = code .. string.format("%s.%s = %s;", customName, propName, resolvedValue) .. (CONFIG.Minify and "" or "\n")
    end

    return code
end

local function serializeInstance(instance, instanceType, customName, parentName)
    print("Serializing instance:", instance.Name, "of type:", instanceType)
    local code = ""
	local APIEntry = APIDump[instanceType]
	assert(APIEntry, "No API entry found for instance type: " .. instanceType)
    local properties = APIEntry.Properties
    local instanceProxy = GetProperties[instanceType](instance)

	code = code .. addProperties(properties, instanceProxy, customName, APIEntry, code)
    code = code .. string.format("%s.Parent = %s;", customName, parentName) .. (CONFIG.Minify and "" or "\n")
    return code
end

local function serializeHierarchy(instance, instanceType, customName, parentName)
    local code = ""
    local declaration = CONFIG.LocalVars and "local " or ""

	code = code .. string.format("%s%s = Instance.New(\"%s\");", declaration, customName, instanceType) .. (CONFIG.Minify and "" or "\n")
    code = code .. serializeInstance(instance, instanceType, customName, parentName)

    for _, child in pairs(instance:GetChildren()) do
		local uniqueChildName = (CONFIG.Minify and "_" .. randomString(3) or generateUniqueName(child.Name))
        local childType = child.ClassName
        code = code .. serializeHierarchy(child, childType, uniqueChildName, customName)
        
    end


    return code
end

local function generateOutputGUI(code)
	local GUI = Instance.New("GUI")
	---@diagnostic disable-next-line: cast-type-mismatch
	---@cast GUI Instance
	local TextInput = Instance.New("UITextInput")
	TextInput.IsMultiline = true
	TextInput.Text = "-- Instance2Lua (github.com/geringverdien/Polytoria-Instance2Lua) --\n" .. code
	TextInput.PositionRelative = Vector2.New(2, 2)
	TextInput.Parent = GUI

	local Label = Instance.New("UILabel")
	Label.PositionOffset = Vector2.New(0, -150)
	Label.AutoSize = true
	Label.SizeRelative = Vector2.New(1, 1)
	Label.Parent = GUI
	GUI.Parent = game["PlayerGUI"]

	for i = CONFIG.WarningTime, 1, -1 do
		Label.Text = "WARNING: Focusing output in " .. i .. " seconds! Dont press any buttons until then."
		wait(1)
	end

	Label.Text = "Press Ctrl+X to copy output and close this popup"

	TextInput:Focus()

	TextInput.Changed:Connect(function()
		GUI:Destroy()
	end)
end

local function main()
	local target = CONFIG.Target
	assert(target, "No target instance specified in CONFIG.Target")	
    local targetType = target.ClassName

    local code = serializeHierarchy(target, targetType, (CONFIG.Minify and "_" .. randomString(3) or target.Name), getRootParent(target))
    print(code)
	generateOutputGUI(code)
end

main()
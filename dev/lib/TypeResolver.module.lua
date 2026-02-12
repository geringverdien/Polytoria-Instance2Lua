local resolverFuncs = {}

local function ResolveType(obj, objType)
    local resolveFunc = resolverFuncs[objType] or function(...) return "nil" end
    return resolveFunc(obj)
end


local function EnumHelper(enumType, enumValue)
    return enumType .. "." .. tostring(enumValue)
end

resolverFuncs = {
    -- lua types
	["string"] = function(obj)
        local s = tostring(obj)
        s = s:gsub("\\", "\\\\"):gsub("\r\n", "\n"):gsub("\n", "\\n")
        return string.format("%q", s) 
    end,
    ["boolean"] = function(obj) return tostring(obj) end,
    ["number"] = function(obj) return tostring(obj) end,
    ["nil"] = function(obj) return "nil" end,
    
    -- custom types
    ["Color"] = function(obj) return string.gsub(tostring(obj), "RGBA", "Color.New") end,
    ["ColorRange"] = function(obj) return "ColorRange.New(" .. ResolveType(obj.min, "Color") .. ", " .. ResolveType(obj.max, "Color") .. ")" end,
    ["NumberRange"] = function(obj) return "NumberRange.New(" .. ResolveType(obj.min, "number") .. ", " .. ResolveType(obj.max, "number") .. ")" end,
    ["Vector2"] = function(obj) return string.format("Vector2.New(%g, %g)", obj.x, obj.y) end,
    ["Vector3"] = function(obj) return string.format("Vector3.New(%g, %g, %g)", obj.x, obj.y, obj.z) end,
	["Vector4"] = function(obj) return string.format("Vector4.New(%g, %g, %g, %g)", obj.x, obj.y, obj.z, obj.w) end,
    ["Quaternion"] = function(obj) return string.format("Quaternion.New(%g, %g, %g, %g)", obj.x, obj.y, obj.z, obj.w) end,

    -- enums
    ["AmbientSource"] = function(enumValue) return EnumHelper("AmbientSource", enumValue) end,
    ["CameraMode"] = function(enumValue) return EnumHelper("CameraMode", enumValue) end,
    ["CollisionType"] = function(enumValue) return EnumHelper("CollisionType", enumValue) end,
    ["ForceMode"] = function(enumValue) return EnumHelper("ForceMode", enumValue) end,
    ["HorizontalAlignment"] = function(enumValue) return EnumHelper("HorizontalAlignment", enumValue) end,
    ["ImageType"] = function(enumValue) return EnumHelper("ImageType", enumValue) end,
    ["PartMaterial"] = function(enumValue) return EnumHelper("PartMaterial", enumValue) end,
    ["PartShape"] = function(enumValue) return EnumHelper("PartShape", enumValue) end,
    ["ParticleColorMode"] = function(enumValue) return EnumHelper("ParticleColorMode", enumValue) end,
    ["ParticleShape"] = function(enumValue) return EnumHelper("ParticleShape", enumValue) end,
    ["ParticleSimulationSpace"] = function(enumValue) return EnumHelper("ParticleSimulationSpace", enumValue) end,
    ["PhysicsMaterialCombine"] = function(enumValue) return EnumHelper("PhysicsMaterialCombine", enumValue) end,
    ["SkyboxPreset"] = function(enumValue) return EnumHelper("SkyboxPreset", enumValue) end,
    ["TextFontPreset"] = function(enumValue) return EnumHelper("TextFontPreset", enumValue) end,
    ["TextJustify"] = function(enumValue) return EnumHelper("TextJustify", enumValue) end,
    ["TextVerticalAlign"] = function(enumValue) return EnumHelper("TextVerticalAlign", enumValue) end,
    ["TweenType"] = function(enumValue) return EnumHelper("TweenType", enumValue) end,
    ["VerticalAlignment"] = function(enumValue) return EnumHelper("VerticalAlignment", enumValue) end,
    ["TextAnchor"] = function(enumValue) return EnumHelper("TextAnchor", enumValue) end, -- undocumented
}

return ResolveType
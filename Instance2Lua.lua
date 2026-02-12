--[===[ 
	Instance2Lua (https://github.com/geringverdien/Polytoria-Instance2Lua)
	Made by Eli <3

	NOTE: Duplicate names will be assigned a random suffix which is different on every execution

	If a converted instance errors on execution please open a Github issue with the error message screenshotted or typed out (usually invalid properties in APIDump)
]===]-- 

CONFIG = {
    Target = game["Environment"]:FindChild("Test"), -- the instance to serialize
    Minify = false, -- removes line seperation and shortens variable names
    LocalVars = true, -- create local variables for instances (set to false for large models to avoid hitting the local variable limit)
	WarningTime = 5 -- time in seconds before the output box is focused so you have time to click into the game window, close menus, etc.
}


-- originally from github.com/xspyy/PolyDex, modified to only point to writeable properties and track Inheritance
local APIDump = {
	GUI = {
		Inherits = {},
		Properties = {
			Name = "string",
			Visible = "boolean"
		}
	},
	UIButton = {
		Inherits = {"UILabel"},
		Properties = {
			Interactable = "boolean"
		}
	},
	UIField = {
		Inherits = {"Instance"},
		Properties = {
			PivotPoint = "Vector2",
			PositionOffset = "Vector2",
			PositionRelative = "Vector2",
			Rotation = "number",
			SizeOffset = "Vector2",
			SizeRelative = "Vector2",
			Visible = "boolean",
			ClipDescendants = "boolean"
		}
	},
	UIHVLayout = {
		Inherits = {"UIField"},
		Properties = {
			ChildAlignment = "TextAnchor",
			ChildControlHeight = "boolean",
			ChildControlWidth = "boolean",
			ChildForceExpandHeight = "boolean",
			ChildForceExpandWidth = "boolean",
			ChildScaleHeight = "boolean",
			ChildScaleWidth = "boolean",
			PaddingBottom = "number",
			PaddingLeft = "number",
			PaddingRight = "number",
			PaddingTop = "number",
			ReverseAlignment = "boolean",
			Spacing = "number"
		}
	},
	UIHorizontalLayout = {
		Inherits = {"UIHVLayout"},
		Properties = {}
	},
	UIVerticalLayout = {
		Inherits = {"UIHVLayout"},
		Properties = {}
	},
	UIImage = {
		Inherits = {"UIField"},
		Properties = {
			Color = "Color",
			ImageID = "string",
			ImageType = "ImageType",
			Loading = "boolean",
			Clickable = "boolean"
		}
	},
	UILabel = {
		Inherits = {"UIView"},
		Properties = {
			Text = "string",
			TextColor = "Color",
			FontSize = "number",
			Font = "TextFontPreset",
			AutoSize = "boolean",
			MaxFontSize = "number",
			JustifyText = "TextJustify",
			VerticalAlign = "TextVerticalAlign"
		}
	},
	UITextInput = {
		Inherits = {"UIView"},
		Properties = {
			Text = "string",
			Placeholder = "string",
			PlaceholderColor = "Color",
			TextColor = "Color",
			FontSize = "number",
			Font = "TextFontPreset",
			AutoSize = "boolean",
			MaxFontSize = "number",
			JustifyText = "TextJustify",
			VerticalAlign = "TextVerticalAlign",
			IsReadOnly = "boolean",
			IsMultiline = "boolean"
		}
	},
	UIView = {
		Inherits = {"UIField"},
		Properties = {
			Color = "Color",
			BorderColor = "Color",
			BorderWidth = "number",
			CornerRadius = "number"
		}
	},

	Part = {
		Inherits = {"DynamicInstance"},
		Properties = {
			Anchored = "boolean",
			AngularDrag = "number",
			AngularVelocity = "Vector3",
			Bounciness = "number",
			CanCollide = "boolean",
			CastShadows = "boolean",
			Color = "Color",
			Drag = "number",
			Friction = "number",
			IsSpawn = "boolean",
			Mass = "number",
			Material = "PartMaterial",
			Shape = "PartShape",
			UseGravity = "boolean",
			Velocity = "Vector3"
		}
	},
	MeshPart = {
		Inherits = {"Part"},
		Properties = {
			AssetID = "number",
			CurrentAnimation = "string",
			IsAnimationPlaying = "boolean",
			PlayAnimationOnStart = "boolean",
			CollisionType = "CollisionType"
		}
	},
	Seat = {
		Inherits = {"Part"},
		Properties = {}
	},
	Text3D = {
		Inherits = {"DynamicInstance"},
		Properties = {
			Color = "Color",
			FaceCamera = "boolean",
			Font = "TextFontPreset",
			FontSize = "number",
			HorizontalAlignment = "HorizontalAlignment",
			Text = "string",
			VerticalAlignment = "VerticalAlignment"
		}
	},
	NPC = {
		Inherits = {"DynamicInstance"},
		Properties = {
			Anchored = "boolean",
			FaceID = "number",
			Grounded = "boolean",
			HeadColor = "Color",
			Health = "number",
			MoveTarget = "Instance",
			WalkSpeed = "number",
			JumpPower = "number",
			MaxHealth = "number",
			ShirtID = "number",
			PantsID = "number",
			TorsoColor = "Color",
			LeftArmColor = "Color",
			RightArmColor = "Color",
			LeftLegColor = "Color",
			RightLegColor = "Color",
			NavDestinationDistance = "number",
			NavDestinationValid = "boolean",
			NavDestinationReached = "boolean",
			Velocity = "Vector3"
		}
	},
	Tool = {
		Inherits = {"DynamicInstance"},
		Properties = {
			Droppable = "boolean"
		}
	},
	Truss = {
		Inherits = {"Climbable"},
		Properties = {}
	},
	Climbable = {
		Inherits = {"Part"},
		Properties = {
			ClimbSpeed = "number"
		}
	},
	Model = {
		Inherits = {"DynamicInstance"},
		Properties = {}
	},

	Folder = {
		Inherits = {"Instance"},
		Properties = {}
	},

	Decal = {
		Inherits = {"DynamicInstance"},
		Properties = {
			Color = "Color",
			ImageType = "ImageType",
			ImageID = "number",
			TextureOffset = "Vector2",
			TextureScale = "Vector2",
			CastShadows = "boolean"
		}
	},
	GradientSky = {
		Inherits = {},
		Properties = {
			HorizonLineColor = "Color",
			HorizonLineExponent = "number",
			HorizonLineContribution = "number",
			SkyGradientTop = "Color",
			SkyGradientBottom = "Color",
			SkyGradientExponent = "number",
			SunDiscColor = "Color",
			SunDiscMultiplier = "number",
			SunDiscExponent = "number",
			SunHaloColor = "Color",
			SunHaloExponent = "number",
			SunHaloContribution = "number"
		}
	},
	ImageSky = {
		Inherits = {},
		Properties = {
			BackId = "number",
			BottomId = "number",
			FrontId = "number",
			LeftId = "number",
			RightId = "number",
			TopId = "number"
		}
	},
	Particles = {
		Inherits = {"DynamicInstance"},
		Properties = {
			ImageID = "string",
			ImageType = "ImageType",
			Color = "ColorRange",
			ColorMode = "ParticleColorMode",
			Lifetime = "NumberRange",
			SizeOverLifetime = "NumberRange",
			Speed = "NumberRange",
			EmissionRate = "number",
			MaxParticles = "number",
			Gravity = "number",
			SimulationSpace = "ParticleSimulationSpace",
			StartRotation = "NumberRange",
			AngularVelocity = "NumberRange",
			Autoplay = "boolean",
			Loop = "boolean",
			Duration = "number",
			Shape = "ParticleShape",
			ShapeRadius = "number",
			ShapeAngle = "number",
			ShapeScale = "Vector3", -- says float in docs for some reason
		}
	},
	PointLight = {
		Inherits = {"DynamicInstance"},
		Properties = {
			Brightness = "number",
			Color = "Color",
			Range = "number",
			Shadows = "boolean"
		}
	},
	SpotLight = {
		Inherits = {"DynamicInstance"},
		Properties = {
			Angle = "number",
			Brightness = "number",
			Color = "Color",
			Range = "number",
			Shadows = "boolean"
		}
	},
	SunLight = {
		Inherits = {"DynamicInstance"},
		Properties = {
			Color = "Color",
			Brightness = "number",
			Shadows = "boolean"
		}
	},
	Sound = {
		Inherits = {"DynamicInstance"},
		Properties = {
			Autoplay = "boolean",
			Loading = "boolean",
			Length = "number",
			Loop = "boolean",
			Pitch = "number",
			PlayInWorld = "boolean",
			MaxDistance = "number",
			Playing = "boolean",
			SoundID = "string",
			Time = "number",
			Volume = "number"
		}
	},
	Bodyposition = {
		Inherits = {"Instance"},
		Properties = {
			AcceptanceDistance = "number",
			Force = "number",
			TargetPosition = "Vector3"
		}
	},
	NetworkEvent = {
		Inherits = {"Instance"},
		Properties = {}
	},
	BoolValue = {
		Inherits = {"ValueBase"},
		Properties = {
			Value = "boolean"
		}
	},
	ColorValue = {
		Inherits = {"ValueBase"},
		Properties = {
			Value = "Color"
		}
	},
	InstanceValue = {
		Inherits = {"ValueBase"},
		Properties = {
			Value = "Instance"
		}
	},
	IntValue = {
		Inherits = {"ValueBase"},
		Properties = {
			Value = "number"
		}
	},
	NumberValue = {
		Inherits = {"ValueBase"},
		Properties = {
			Value = "number"
		}
	},
	StringValue = {
		Inherits = {"ValueBase"},
		Properties = {
			Value = "string"
		}
	},
	Vector3Value = {
		Inherits = {"ValueBase"},
		Properties = {
			Value = "Vector3"
		}
	},
	ValueBase = {
		Inherits = {"Instance"},
		Properties = {}
	},
	Instance = {
		Inherits = {},
		Properties = {
			Name = "string",
			--Parent = "Instance", -- commented out because of custom parenting logic
		}
	},
	DynamicInstance = {
		Inherits = {"Instance"},
		Properties = {
			LocalPosition = "Vector3",
			LocalRotation = "Vector3",
			LocalSize = "Vector3",
			Position = "Vector3",
			Rotation = "Vector3",
			Size = "Vector3",
			Quaternion = "Quaternion",
			LocalQuaternion = "Quaternion"
		}
	},

	-- dummy scripts get added but no code can be written to them
	BaseScript = {
		Inherits = {"Instance"},
		Properties = {}
	},
	ScriptInstance = {
		Inherits = {"BaseScript"},
		Properties = {}
	},
	LocalScript = {
		Inherits = {"BaseScript"},
		Properties = {}
	},
	ModuleScript = {
		Inherits = {"BaseScript"},
		Properties = {}
	}
}


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
    ["Color"] = function(obj) return string.gsub(tostring(obj), "RGBA", "Color.new") end,
    ["ColorRange"] = function(obj) return "ColorRange.New(" .. ResolveType(obj.min, "Color") .. ", " .. ResolveType(obj.max, "Color") .. ")" end,
    ["NumberRange"] = function(obj) return "NumberRange.New(" .. ResolveType(obj.min, "number") .. ", " .. ResolveType(obj.max, "number") .. ")" end,
    ["Vector2"] = function(obj) return string.format("Vector2.New(%d, %d)", obj.x, obj.y) end,
    ["Vector3"] = function(obj) return string.format("Vector3.New(%d, %d, %d)", obj.x, obj.y, obj.z) end,
	["Vector4"] = function(obj) return string.format("Vector4.New(%d, %d, %d, %d)", obj.x, obj.y, obj.z, obj.w) end,
    ["Quaternion"] = function(obj) return string.format("Quaternion.New(%d, %d, %d, %d)", obj.x, obj.y, obj.z, obj.w) end,

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


-- my stupid chud instance proxy that i hate, has some leftover invalid properties as i only maintain the APIDump to filter properties
local GetProperties = {}

GetProperties.GUI = function(instance)
	return {
		Visible = instance.Visible
	}
end

GetProperties.UIButton = function(instance)
	return {
		Interactable = instance.Interactable,
		Text = instance.Text,
		TextColor = instance.TextColor,
		FontSize = instance.FontSize,
		Font = instance.Font,
		AutoSize = instance.AutoSize,
		MaxFontSize = instance.MaxFontSize,
		JustifyText = instance.JustifyText,
		VerticalAlign = instance.VerticalAlign,
		Color = instance.Color,
		BorderColor = instance.BorderColor,
		BorderWidth = instance.BorderWidth,
		CornerRadius = instance.CornerRadius,
		PivotPoint = instance.PivotPoint,
		PositionOffset = instance.PositionOffset,
		PositionRelative = instance.PositionRelative,
		Rotation = instance.Rotation,
		SizeOffset = instance.SizeOffset,
		SizeRelative = instance.SizeRelative,
		Visible = instance.Visible,
		ClipDescendants = instance.ClipDescendants,
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.UIField = function(instance)
	return {
		PivotPoint = instance.PivotPoint,
		PositionOffset = instance.PositionOffset,
		PositionRelative = instance.PositionRelative,
		Rotation = instance.Rotation,
		SizeOffset = instance.SizeOffset,
		SizeRelative = instance.SizeRelative,
		Visible = instance.Visible,
		ClipDescendants = instance.ClipDescendants,
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.UIHVLayout = function(instance)
	return {
		ChildAlignment = instance.ChildAlignment,
		ChildControlHeight = instance.ChildControlHeight,
		ChildControlWidth = instance.ChildControlWidth,
		ChildForceExpandHeight = instance.ChildForceExpandHeight,
		ChildForceExpandWidth = instance.ChildForceExpandWidth,
		ChildScaleHeight = instance.ChildScaleHeight,
		ChildScaleWidth = instance.ChildScaleWidth,
		PaddingBottom = instance.PaddingBottom,
		PaddingLeft = instance.PaddingLeft,
		PaddingRight = instance.PaddingRight,
		PaddingTop = instance.PaddingTop,
		ReverseAlignment = instance.ReverseAlignment,
		Spacing = instance.Spacing,
		PivotPoint = instance.PivotPoint,
		PositionOffset = instance.PositionOffset,
		PositionRelative = instance.PositionRelative,
		Rotation = instance.Rotation,
		SizeOffset = instance.SizeOffset,
		SizeRelative = instance.SizeRelative,
		Visible = instance.Visible,
		ClipDescendants = instance.ClipDescendants,
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.UIHorizontalLayout = function(instance)
	return GetProperties.UIHVLayout(instance)
end

GetProperties.UIVerticalLayout = function(instance)
	return GetProperties.UIHVLayout(instance)
end

GetProperties.UIImage = function(instance)
	return {
		Color = instance.Color,
		ImageID = instance.ImageID,
		ImageType = instance.ImageType,
		Loading = instance.Loading,
		Clickable = instance.Clickable,
		PivotPoint = instance.PivotPoint,
		PositionOffset = instance.PositionOffset,
		PositionRelative = instance.PositionRelative,
		Rotation = instance.Rotation,
		SizeOffset = instance.SizeOffset,
		SizeRelative = instance.SizeRelative,
		Visible = instance.Visible,
		ClipDescendants = instance.ClipDescendants,
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.UILabel = function(instance)
	return {
		Text = instance.Text,
		TextColor = instance.TextColor,
		FontSize = instance.FontSize,
		Font = instance.Font,
		AutoSize = instance.AutoSize,
		MaxFontSize = instance.MaxFontSize,
		JustifyText = instance.JustifyText,
		VerticalAlign = instance.VerticalAlign,
		Color = instance.Color,
		BorderColor = instance.BorderColor,
		BorderWidth = instance.BorderWidth,
		CornerRadius = instance.CornerRadius,
		PivotPoint = instance.PivotPoint,
		PositionOffset = instance.PositionOffset,
		PositionRelative = instance.PositionRelative,
		Rotation = instance.Rotation,
		SizeOffset = instance.SizeOffset,
		SizeRelative = instance.SizeRelative,
		Visible = instance.Visible,
		ClipDescendants = instance.ClipDescendants,
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.UITextInput = function(instance)
	return {
		Text = instance.Text,
		Placeholder = instance.Placeholder,
		PlaceholderColor = instance.PlaceholderColor,
		TextColor = instance.TextColor,
		FontSize = instance.FontSize,
		Font = instance.Font,
		AutoSize = instance.AutoSize,
		MaxFontSize = instance.MaxFontSize,
		JustifyText = instance.JustifyText,
		VerticalAlign = instance.VerticalAlign,
		IsReadOnly = instance.IsReadOnly,
		IsMultiline = instance.IsMultiline,
		Color = instance.Color,
		BorderColor = instance.BorderColor,
		BorderWidth = instance.BorderWidth,
		CornerRadius = instance.CornerRadius,
		PivotPoint = instance.PivotPoint,
		PositionOffset = instance.PositionOffset,
		PositionRelative = instance.PositionRelative,
		Rotation = instance.Rotation,
		SizeOffset = instance.SizeOffset,
		SizeRelative = instance.SizeRelative,
		Visible = instance.Visible,
		ClipDescendants = instance.ClipDescendants,
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.UIView = function(instance)
	return {
		Color = instance.Color,
		BorderColor = instance.BorderColor,
		BorderWidth = instance.BorderWidth,
		CornerRadius = instance.CornerRadius,
		PivotPoint = instance.PivotPoint,
		PositionOffset = instance.PositionOffset,
		PositionRelative = instance.PositionRelative,
		Rotation = instance.Rotation,
		SizeOffset = instance.SizeOffset,
		SizeRelative = instance.SizeRelative,
		Visible = instance.Visible,
		ClipDescendants = instance.ClipDescendants,
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.Part = function(instance)
	return {
		Anchored = instance.Anchored,
		AngularDrag = instance.AngularDrag,
		AngularVelocity = instance.AngularVelocity,
		Bounciness = instance.Bounciness,
		CanCollide = instance.CanCollide,
		CastShadows = instance.CastShadows,
		Color = instance.Color,
		Drag = instance.Drag,
		Friction = instance.Friction,
		IsSpawn = instance.IsSpawn,
		Mass = instance.Mass,
		Material = instance.Material,
		Shape = instance.Shape,
		UseGravity = instance.UseGravity,
		Velocity = instance.Velocity,
		Forward = instance.Forward,
		LocalPosition = instance.LocalPosition,
		LocalRotation = instance.LocalRotation,
		LocalSize = instance.LocalSize,
		Position = instance.Position,
		Right = instance.Right,
		Rotation = instance.Rotation,
		Size = instance.Size,
		Up = instance.Up,
		Quaternion = instance.Quaternion,
		LocalQuaternion = instance.LocalQuaternion,
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.MeshPart = function(instance)
	return {
		AssetID = instance.AssetID,
		CurrentAnimation = instance.CurrentAnimation,
		IsAnimationPlaying = instance.IsAnimationPlaying,
		PlayAnimationOnStart = instance.PlayAnimationOnStart,
		CollisionType = instance.CollisionType,
		Anchored = instance.Anchored,
		AngularDrag = instance.AngularDrag,
		AngularVelocity = instance.AngularVelocity,
		Bounciness = instance.Bounciness,
		CanCollide = instance.CanCollide,
		CastShadows = instance.CastShadows,
		Color = instance.Color,
		Drag = instance.Drag,
		Friction = instance.Friction,
		IsSpawn = instance.IsSpawn,
		Mass = instance.Mass,
		Material = instance.Material,
		Shape = instance.Shape,
		UseGravity = instance.UseGravity,
		Velocity = instance.Velocity,
		Forward = instance.Forward,
		LocalPosition = instance.LocalPosition,
		LocalRotation = instance.LocalRotation,
		LocalSize = instance.LocalSize,
		Position = instance.Position,
		Right = instance.Right,
		Rotation = instance.Rotation,
		Size = instance.Size,
		Up = instance.Up,
		Quaternion = instance.Quaternion,
		LocalQuaternion = instance.LocalQuaternion,
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.Seat = function(instance)
	return {
		Occupant = instance.Occupant,
		Anchored = instance.Anchored,
		AngularDrag = instance.AngularDrag,
		AngularVelocity = instance.AngularVelocity,
		Bounciness = instance.Bounciness,
		CanCollide = instance.CanCollide,
		CastShadows = instance.CastShadows,
		Color = instance.Color,
		Drag = instance.Drag,
		Friction = instance.Friction,
		IsSpawn = instance.IsSpawn,
		Mass = instance.Mass,
		Material = instance.Material,
		Shape = instance.Shape,
		UseGravity = instance.UseGravity,
		Velocity = instance.Velocity,
		Forward = instance.Forward,
		LocalPosition = instance.LocalPosition,
		LocalRotation = instance.LocalRotation,
		LocalSize = instance.LocalSize,
		Position = instance.Position,
		Right = instance.Right,
		Rotation = instance.Rotation,
		Size = instance.Size,
		Up = instance.Up,
		Quaternion = instance.Quaternion,
		LocalQuaternion = instance.LocalQuaternion,
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.Text3D = function(instance)
	return {
		Color = instance.Color,
		FaceCamera = instance.FaceCamera,
		Font = instance.Font,
		FontSize = instance.FontSize,
		HorizontalAlignment = instance.HorizontalAlignment,
		Text = instance.Text,
		VerticalAlignment = instance.VerticalAlignment,
		Forward = instance.Forward,
		LocalPosition = instance.LocalPosition,
		LocalRotation = instance.LocalRotation,
		LocalSize = instance.LocalSize,
		Position = instance.Position,
		Right = instance.Right,
		Rotation = instance.Rotation,
		Size = instance.Size,
		Up = instance.Up,
		Quaternion = instance.Quaternion,
		LocalQuaternion = instance.LocalQuaternion,
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.NPC = function(instance)
	return {
		Anchored = instance.Anchored,
		FaceID = instance.FaceID,
		Grounded = instance.Grounded,
		HeadColor = instance.HeadColor,
		Health = instance.Health,
		MoveTarget = instance.MoveTarget,
		WalkSpeed = instance.WalkSpeed,
		JumpPower = instance.JumpPower,
		MaxHealth = instance.MaxHealth,
		ShirtID = instance.ShirtID,
		PantsID = instance.PantsID,
		TorsoColor = instance.TorsoColor,
		LeftArmColor = instance.LeftArmColor,
		RightArmColor = instance.RightArmColor,
		LeftLegColor = instance.LeftLegColor,
		RightLegColor = instance.RightLegColor,
		NavDestinationDistance = instance.NavDestinationDistance,
		NavDestinationValid = instance.NavDestinationValid,
		NavDestinationReached = instance.NavDestinationReached,
		Velocity = instance.Velocity,
		Forward = instance.Forward,
		LocalPosition = instance.LocalPosition,
		LocalRotation = instance.LocalRotation,
		LocalSize = instance.LocalSize,
		Position = instance.Position,
		Right = instance.Right,
		Rotation = instance.Rotation,
		Size = instance.Size,
		Up = instance.Up,
		Quaternion = instance.Quaternion,
		LocalQuaternion = instance.LocalQuaternion,
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.Tool = function(instance)
	return {
		Droppable = instance.Droppable,
		Forward = instance.Forward,
		LocalPosition = instance.LocalPosition,
		LocalRotation = instance.LocalRotation,
		LocalSize = instance.LocalSize,
		Position = instance.Position,
		Right = instance.Right,
		Rotation = instance.Rotation,
		Size = instance.Size,
		Up = instance.Up,
		Quaternion = instance.Quaternion,
		LocalQuaternion = instance.LocalQuaternion,
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.Truss = function(instance)
	return {
		ClimbSpeed = instance.ClimbSpeed,
		Anchored = instance.Anchored,
		AngularDrag = instance.AngularDrag,
		AngularVelocity = instance.AngularVelocity,
		Bounciness = instance.Bounciness,
		CanCollide = instance.CanCollide,
		CastShadows = instance.CastShadows,
		Color = instance.Color,
		Drag = instance.Drag,
		Friction = instance.Friction,
		IsSpawn = instance.IsSpawn,
		Mass = instance.Mass,
		Material = instance.Material,
		Shape = instance.Shape,
		UseGravity = instance.UseGravity,
		Velocity = instance.Velocity,
		Forward = instance.Forward,
		LocalPosition = instance.LocalPosition,
		LocalRotation = instance.LocalRotation,
		LocalSize = instance.LocalSize,
		Position = instance.Position,
		Right = instance.Right,
		Rotation = instance.Rotation,
		Size = instance.Size,
		Up = instance.Up,
		Quaternion = instance.Quaternion,
		LocalQuaternion = instance.LocalQuaternion,
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.Climbable = function(instance)
	return {
		ClimbSpeed = instance.ClimbSpeed,
		Anchored = instance.Anchored,
		AngularDrag = instance.AngularDrag,
		AngularVelocity = instance.AngularVelocity,
		Bounciness = instance.Bounciness,
		CanCollide = instance.CanCollide,
		CastShadows = instance.CastShadows,
		Color = instance.Color,
		Drag = instance.Drag,
		Friction = instance.Friction,
		IsSpawn = instance.IsSpawn,
		Mass = instance.Mass,
		Material = instance.Material,
		Shape = instance.Shape,
		UseGravity = instance.UseGravity,
		Velocity = instance.Velocity,
		Forward = instance.Forward,
		LocalPosition = instance.LocalPosition,
		LocalRotation = instance.LocalRotation,
		LocalSize = instance.LocalSize,
		Position = instance.Position,
		Right = instance.Right,
		Rotation = instance.Rotation,
		Size = instance.Size,
		Up = instance.Up,
		Quaternion = instance.Quaternion,
		LocalQuaternion = instance.LocalQuaternion,
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.Model = function(instance)
	return {
		Forward = instance.Forward,
		LocalPosition = instance.LocalPosition,
		LocalRotation = instance.LocalRotation,
		LocalSize = instance.LocalSize,
		Position = instance.Position,
		Right = instance.Right,
		Rotation = instance.Rotation,
		Size = instance.Size,
		Up = instance.Up,
		Quaternion = instance.Quaternion,
		LocalQuaternion = instance.LocalQuaternion,
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.Folder = function(instance)
	return {
		Name = instance.Name,
		Parent = instance.Parent,
		--ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.Decal = function(instance)
	return {
		Color = instance.Color,
		ImageType = instance.ImageType,
		ImageID = instance.ImageID,
		TextureOffset = instance.TextureOffset,
		TextureScale = instance.TextureScale,
		CastShadows = instance.CastShadows,
		Forward = instance.Forward,
		LocalPosition = instance.LocalPosition,
		LocalRotation = instance.LocalRotation,
		LocalSize = instance.LocalSize,
		Position = instance.Position,
		Right = instance.Right,
		Rotation = instance.Rotation,
		Size = instance.Size,
		Up = instance.Up,
		Quaternion = instance.Quaternion,
		LocalQuaternion = instance.LocalQuaternion,
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.GradientSky = function(instance)
	return {
		HorizonLineColor = instance.HorizonLineColor,
		HorizonLineExponent = instance.HorizonLineExponent,
		HorizonLineContribution = instance.HorizonLineContribution,
		SkyGradientTop = instance.SkyGradientTop,
		SkyGradientBottom = instance.SkyGradientBottom,
		SkyGradientExponent = instance.SkyGradientExponent,
		SunDiscColor = instance.SunDiscColor,
		SunDiscMultiplier = instance.SunDiscMultiplier,
		SunDiscExponent = instance.SunDiscExponent,
		SunHaloColor = instance.SunHaloColor,
		SunHaloExponent = instance.SunHaloExponent,
		SunHaloContribution = instance.SunHaloContribution
	}
end

GetProperties.ImageSky = function(instance)
	return {
		BackId = instance.BackId,
		BottomId = instance.BottomId,
		FrontId = instance.FrontId,
		LeftId = instance.LeftId,
		RightId = instance.RightId,
		TopId = instance.TopId
	}
end

GetProperties.Particles = function(instance)
	return {
		ImageID = instance.ImageID,
		ImageType = instance.ImageType,
		Color = instance.Color,
		ColorMode = instance.ColorMode,
		Lifetime = instance.Lifetime,
		SizeOverLifetime = instance.SizeOverLifetime,
		Speed = instance.Speed,
		EmissionRate = instance.EmissionRate,
		MaxParticles = instance.MaxParticles,
		Gravity = instance.Gravity,
		SimulationSpace = instance.SimulationSpace,
		StartRotation = instance.StartRotation,
		AngularVelocity = instance.AngularVelocity,
		Autoplay = instance.Autoplay,
		Loop = instance.Loop,
		Duration = instance.Duration,
		Shape = instance.Shape,
		ShapeRadius = instance.ShapeRadius,
		ShapeAngle = instance.ShapeAngle,
		ShapeScale = instance.ShapeScale,
		IsPlaying = instance.IsPlaying,
		IsPaused = instance.IsPaused,
		IsStopped = instance.IsStopped,
		ParticleCount = instance.ParticleCount,
		Time = instance.Time,
		TotalTime = instance.TotalTime,
		Forward = instance.Forward,
		LocalPosition = instance.LocalPosition,
		LocalRotation = instance.LocalRotation,
		LocalSize = instance.LocalSize,
		Position = instance.Position,
		Right = instance.Right,
		Rotation = instance.Rotation,
		Size = instance.Size,
		Up = instance.Up,
		Quaternion = instance.Quaternion,
		LocalQuaternion = instance.LocalQuaternion,
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.PointLight = function(instance)
	return {
		Brightness = instance.Brightness,
		Color = instance.Color,
		Range = instance.Range,
		Shadows = instance.Shadows,
		Forward = instance.Forward,
		LocalPosition = instance.LocalPosition,
		LocalRotation = instance.LocalRotation,
		LocalSize = instance.LocalSize,
		Position = instance.Position,
		Right = instance.Right,
		Rotation = instance.Rotation,
		Size = instance.Size,
		Up = instance.Up,
		Quaternion = instance.Quaternion,
		LocalQuaternion = instance.LocalQuaternion,
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.SpotLight = function(instance)
	return {
		Angle = instance.Angle,
		Brightness = instance.Brightness,
		Color = instance.Color,
		Range = instance.Range,
		Shadows = instance.Shadows,
		Forward = instance.Forward,
		LocalPosition = instance.LocalPosition,
		LocalRotation = instance.LocalRotation,
		LocalSize = instance.LocalSize,
		Position = instance.Position,
		Right = instance.Right,
		Rotation = instance.Rotation,
		Size = instance.Size,
		Up = instance.Up,
		Quaternion = instance.Quaternion,
		LocalQuaternion = instance.LocalQuaternion,
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.SunLight = function(instance)
	return {
		Color = instance.Color,
		Brightness = instance.Brightness,
		Shadows = instance.Shadows,
		Forward = instance.Forward,
		LocalPosition = instance.LocalPosition,
		LocalRotation = instance.LocalRotation,
		LocalSize = instance.LocalSize,
		Position = instance.Position,
		Right = instance.Right,
		Rotation = instance.Rotation,
		Size = instance.Size,
		Up = instance.Up,
		Quaternion = instance.Quaternion,
		LocalQuaternion = instance.LocalQuaternion,
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.Sound = function(instance)
	return {
		Autoplay = instance.Autoplay,
		Loading = instance.Loading,
		Length = instance.Length,
		Loop = instance.Loop,
		Pitch = instance.Pitch,
		PlayInWorld = instance.PlayInWorld,
		MaxDistance = instance.MaxDistance,
		Playing = instance.Playing,
		SoundID = instance.SoundID,
		Time = instance.Time,
		Volume = instance.Volume,
		Forward = instance.Forward,
		LocalPosition = instance.LocalPosition,
		LocalRotation = instance.LocalRotation,
		LocalSize = instance.LocalSize,
		Position = instance.Position,
		Right = instance.Right,
		Rotation = instance.Rotation,
		Size = instance.Size,
		Up = instance.Up,
		Quaternion = instance.Quaternion,
		LocalQuaternion = instance.LocalQuaternion,
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.Bodyposition = function(instance)
	return {
		AcceptanceDistance = instance.AcceptanceDistance,
		Force = instance.Force,
		TargetPosition = instance.TargetPosition,
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.NetworkEvent = function(instance)
	return {
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.BoolValue = function(instance)
	return {
		Value = instance.Value,
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.ColorValue = function(instance)
	return {
		Value = instance.Value,
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.InstanceValue = function(instance)
	return {
		Value = instance.Value,
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.IntValue = function(instance)
	return {
		Value = instance.Value,
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.NumberValue = function(instance)
	return {
		Value = instance.Value,
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.StringValue = function(instance)
	return {
		Value = instance.Value,
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.Vector3Value = function(instance)
	return {
		Value = instance.Value,
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.ValueBase = function(instance)
	return {
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.Instance = function(instance)
	return {
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.DynamicInstance = function(instance)
	return {
		Forward = instance.Forward,
		LocalPosition = instance.LocalPosition,
		LocalRotation = instance.LocalRotation,
		LocalSize = instance.LocalSize,
		Position = instance.Position,
		Right = instance.Right,
		Rotation = instance.Rotation,
		Size = instance.Size,
		Up = instance.Up,
		Quaternion = instance.Quaternion,
		LocalQuaternion = instance.LocalQuaternion,
		Name = instance.Name,
		Parent = instance.Parent,
	}
end

GetProperties.BaseScript = function(instance)
	return {
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.ScriptInstance = function(instance)
	return {
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.LocalScript = function(instance)
	return {
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

GetProperties.ModuleScript = function(instance)
	return {
		Name = instance.Name,
		Parent = instance.Parent,
		ClientSpawned = instance.ClientSpawned
	}
end

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

	code = code .. string.format("%s%s = Instance.new(\"%s\");", declaration, customName, instanceType) .. (CONFIG.Minify and "" or "\n")
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

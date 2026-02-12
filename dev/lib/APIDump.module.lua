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

return APIDump
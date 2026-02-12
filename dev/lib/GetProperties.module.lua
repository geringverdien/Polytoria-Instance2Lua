-- my stupid chud instance proxy that i hate, has some leftover invalid properties as i only maintain the APIDump to filter properties
local GetProperties = {}

GetProperties.GUI = function(instance)
	return {
        Name = instance.Name,
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

return GetProperties
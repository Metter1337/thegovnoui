local Lighting = game:GetService('Lighting')

Lighting.ClockTime = 14
Lighting.ColorShift_Bottom = Color3.new(0.000000, 0.000000, 0.000000)
Lighting.FogColor = Color3.new(0.752941, 0.752941, 0.752941)
Lighting.FogEnd = 100000
Lighting.EnvironmentDiffuseScale = 0
Lighting.GlobalShadows = true
Lighting.EnvironmentSpecularScale = 0.25
Lighting.FogStart = 0
Lighting.GeographicLatitude = 41.73500061035156
Lighting.Ambient = Color3.new(0.470588, 0.470588, 0.470588)
Lighting.OutdoorAmbient = Color3.new(0.784314, 0.784314, 0.784314)
Lighting.ExposureCompensation = 0
Lighting.Brightness = 2
Lighting.ColorShift_Top = Color3.new(0.000000, 0.000000, 0.000000)
Lighting.ShadowSoftness = 0.20000000298023224

-- Lighting Children

local Sky_1 = Instance.new('Sky')
Sky_1.Name = [[Sky]]
Sky_1.StarCount = 3000
Sky_1.SkyboxUp = [[rbxassetid://8995814929]]
Sky_1.MoonTextureId = [[rbxasset://sky/moon.jpg]]
Sky_1.SkyboxDn = [[rbxassetid://8995686153]]
Sky_1.SkyboxBk = [[rbxassetid://8995816670]]
Sky_1.SkyboxFt = [[rbxassetid://8995816670]]
Sky_1.SunTextureId = [[rbxassetid://8923082571]]
Sky_1.SunAngularSize = 30
Sky_1.SkyboxLf = [[rbxassetid://8995816670]]
Sky_1.SkyboxRt = [[rbxassetid://8995816670]]
Sky_1.MoonAngularSize = 0
Sky_1.Parent = Lighting

local GalCC_2 = Instance.new('ColorCorrectionEffect')
GalCC_2.Name = [[GalCC]]
GalCC_2.Enabled = true
GalCC_2.Saturation = 0.5
GalCC_2.Contrast = 0.30000001192092896
GalCC_2.TintColor = Color3.new(0.941176, 0.862745, 1.000000)
GalCC_2.Brightness = 0
GalCC_2.Parent = Lighting

local GalBloom_3 = Instance.new('BloomEffect')
GalBloom_3.Name = [[GalBloom]]
GalBloom_3.Enabled = true
GalBloom_3.Threshold = 0.800000011920929
GalBloom_3.Intensity = 0.30000001192092896
GalBloom_3.Size = 24
GalBloom_3.Parent = Lighting

local GalAtmo_4 = Instance.new('Atmosphere')
GalAtmo_4.Name = [[GalAtmo]]
GalAtmo_4.Density = 0.30000001192092896
GalAtmo_4.Haze = 0
GalAtmo_4.Color = Color3.new(0.156863, 0.000000, 0.392157)
GalAtmo_4.Decay = Color3.new(0.360800, 0.235300, 0.054900)
GalAtmo_4.Glare = 0
GalAtmo_4.Offset = 0
GalAtmo_4.Parent = Lighting

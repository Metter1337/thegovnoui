local Lighting = game:GetService('Lighting')

Lighting.ClockTime = 10
Lighting.ColorShift_Bottom = Color3.new(0.000000, 0.000000, 0.000000)
Lighting.FogColor = Color3.new(1.000000, 1.000000, 1.000000)
Lighting.FogEnd = inf
Lighting.EnvironmentDiffuseScale = 0.40299999713897705
Lighting.GlobalShadows = true
Lighting.EnvironmentSpecularScale = 0.25
Lighting.FogStart = inf
Lighting.GeographicLatitude = -45
Lighting.Ambient = Color3.new(0.949020, 0.952941, 0.952941)
Lighting.OutdoorAmbient = Color3.new(0.000000, 0.000000, 0.000000)
Lighting.ExposureCompensation = 0.20000000298023224
Lighting.Brightness = -0.10000000149011612
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

local vu880_2 = Instance.new('IntValue')
vu880_2.Name = [[vu880]]
vu880_2.Parent = Lighting

local cZzvb_3 = Instance.new('IntValue')
cZzvb_3.Name = [[cZzvb]]
cZzvb_3.Parent = Lighting

local vO8e3_4 = Instance.new('IntValue')
vO8e3_4.Name = [[vO8e3]]
vO8e3_4.Parent = Lighting

local obj_4lSn6_5 = Instance.new('IntValue')
obj_4lSn6_5.Name = [[4lSn6]]
obj_4lSn6_5.Parent = Lighting

local obj_57h98_6 = Instance.new('IntValue')
obj_57h98_6.Name = [[57h98]]
obj_57h98_6.Parent = Lighting

local obj_0RiPe_7 = Instance.new('Sky')
obj_0RiPe_7.Name = [[0RiPe]]
obj_0RiPe_7.StarCount = 3000
obj_0RiPe_7.SkyboxUp = [[rbxassetid://9544547398]]
obj_0RiPe_7.MoonTextureId = [[rbxasset://sky/moon.jpg]]
obj_0RiPe_7.SkyboxDn = [[rbxassetid://9544547905]]
obj_0RiPe_7.SkyboxBk = [[rbxassetid://9544505500]]
obj_0RiPe_7.SkyboxFt = [[rbxassetid://9544504852]]
obj_0RiPe_7.SunTextureId = [[rbxassetid://8923082571]]
obj_0RiPe_7.SunAngularSize = 30
obj_0RiPe_7.SkyboxLf = [[rbxassetid://9544547694]]
obj_0RiPe_7.SkyboxRt = [[rbxassetid://9544547542]]
obj_0RiPe_7.MoonAngularSize = 0
obj_0RiPe_7.Parent = Lighting

local obj_0RiPe_8 = Instance.new('ColorCorrectionEffect')
obj_0RiPe_8.Name = [[0RiPe]]
obj_0RiPe_8.Enabled = true
obj_0RiPe_8.Saturation = -0.30000001192092896
obj_0RiPe_8.Contrast = 0.20000000298023224
obj_0RiPe_8.TintColor = Color3.new(0.784314, 0.784314, 1.000000)
obj_0RiPe_8.Brightness = -0.10000000149011612
obj_0RiPe_8.Parent = Lighting

local obj_0RiPe_9 = Instance.new('Atmosphere')
obj_0RiPe_9.Name = [[0RiPe]]
obj_0RiPe_9.Density = 0.5640000104904175
obj_0RiPe_9.Haze = 1.7200000286102295
obj_0RiPe_9.Color = Color3.new(0.631373, 0.647059, 0.635294)
obj_0RiPe_9.Decay = Color3.new(0.949020, 0.952941, 0.952941)
obj_0RiPe_9.Glare = 0.36000001430511475
obj_0RiPe_9.Offset = 0.5559999942779541
obj_0RiPe_9.Parent = Lighting

local obj_0RiPe_10 = Instance.new('BloomEffect')
obj_0RiPe_10.Name = [[0RiPe]]
obj_0RiPe_10.Enabled = true
obj_0RiPe_10.Threshold = 0.800000011920929
obj_0RiPe_10.Intensity = 0.30000001192092896
obj_0RiPe_10.Size = 10
obj_0RiPe_10.Parent = Lighting

local obj_0RiPe_11 = Instance.new('BlurEffect')
obj_0RiPe_11.Name = [[0RiPe]]
obj_0RiPe_11.Enabled = false
obj_0RiPe_11.Size = 3
obj_0RiPe_11.Parent = Lighting

local obj_0RiPe_12 = Instance.new('DepthOfFieldEffect')
obj_0RiPe_12.Name = [[0RiPe]]
obj_0RiPe_12.Enabled = true
obj_0RiPe_12.FarIntensity = 0.21699999272823334
obj_0RiPe_12.FocusDistance = 11.539999961853027
obj_0RiPe_12.InFocusRadius = 16.770000457763672
obj_0RiPe_12.NearIntensity = 0.2770000100135803
obj_0RiPe_12.Parent = Lighting

local obj_0RiPe_13 = Instance.new('SunRaysEffect')
obj_0RiPe_13.Name = [[0RiPe]]
obj_0RiPe_13.Enabled = false
obj_0RiPe_13.Intensity = 0.25
obj_0RiPe_13.Spread = 1
obj_0RiPe_13.Parent = Lighting

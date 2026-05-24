local Lighting = game:GetService('Lighting')

Lighting.ClockTime = 10
Lighting.ColorShift_Bottom = Color3.new(0.980392, 0.980392, 0.980392)
Lighting.FogColor = Color3.new(0.078431, 0.078431, 0.078431)
Lighting.FogEnd = 10000
Lighting.EnvironmentDiffuseScale = 0
Lighting.GlobalShadows = true
Lighting.EnvironmentSpecularScale = 0.25
Lighting.FogStart = 0
Lighting.GeographicLatitude = 41.73500061035156
Lighting.Ambient = Color3.new(0.196078, 0.196078, 0.196078)
Lighting.OutdoorAmbient = Color3.new(0.588235, 0.588235, 0.588235)
Lighting.ExposureCompensation = 0.5
Lighting.Brightness = 2
Lighting.ColorShift_Top = Color3.new(0.980392, 0.980392, 0.980392)
Lighting.ShadowSoftness = 0

-- Lighting Children

local Bloom_1 = Instance.new('BloomEffect')
Bloom_1.Name = [[Bloom]]
Bloom_1.Enabled = true
Bloom_1.Threshold = 0
Bloom_1.Intensity = 0.10000000149011612
Bloom_1.Size = 100
Bloom_1.Parent = Lighting

local Bloom_2 = Instance.new('BloomEffect')
Bloom_2.Name = [[Bloom]]
Bloom_2.Enabled = false
Bloom_2.Threshold = 0.20000000298023224
Bloom_2.Intensity = 0.3499999940395355
Bloom_2.Size = 56
Bloom_2.Parent = Lighting

local Blur_3 = Instance.new('BlurEffect')
Blur_3.Name = [[Blur]]
Blur_3.Enabled = true
Blur_3.Size = 2
Blur_3.Parent = Lighting

local Blur_4 = Instance.new('BlurEffect')
Blur_4.Name = [[Blur]]
Blur_4.Enabled = false
Blur_4.Size = 2
Blur_4.Parent = Lighting

local ColorCorrection_5 = Instance.new('ColorCorrectionEffect')
ColorCorrection_5.Name = [[ColorCorrection]]
ColorCorrection_5.Enabled = true
ColorCorrection_5.Saturation = 0.05000000074505806
ColorCorrection_5.Contrast = 0
ColorCorrection_5.TintColor = Color3.new(1.000000, 0.878431, 0.858824)
ColorCorrection_5.Brightness = 0
ColorCorrection_5.Parent = Lighting

local ColorCorrection_6 = Instance.new('ColorCorrectionEffect')
ColorCorrection_6.Name = [[ColorCorrection]]
ColorCorrection_6.Enabled = false
ColorCorrection_6.Saturation = -0.20000000298023224
ColorCorrection_6.Contrast = 0
ColorCorrection_6.TintColor = Color3.new(1.000000, 0.909804, 0.843137)
ColorCorrection_6.Brightness = 0
ColorCorrection_6.Parent = Lighting

local SunRays_7 = Instance.new('SunRaysEffect')
SunRays_7.Name = [[SunRays]]
SunRays_7.Enabled = true
SunRays_7.Intensity = 0.05000000074505806
SunRays_7.Spread = 1
SunRays_7.Parent = Lighting

local Sky_8 = Instance.new('Sky')
Sky_8.Name = [[Sky]]
Sky_8.StarCount = 3000
Sky_8.SkyboxUp = [[rbxassetid://323493360]]
Sky_8.MoonTextureId = [[rbxasset://sky/moon.jpg]]
Sky_8.SkyboxDn = [[rbxassetid://323494368]]
Sky_8.SkyboxBk = [[rbxassetid://323494035]]
Sky_8.SkyboxFt = [[rbxassetid://323494130]]
Sky_8.SunTextureId = [[rbxasset://sky/sun.jpg]]
Sky_8.SunAngularSize = 14
Sky_8.SkyboxLf = [[rbxassetid://323494252]]
Sky_8.SkyboxRt = [[rbxassetid://323494067]]
Sky_8.MoonAngularSize = 11
Sky_8.Parent = Lighting

local ColorCorrection_9 = Instance.new('ColorCorrectionEffect')
ColorCorrection_9.Name = [[ColorCorrection]]
ColorCorrection_9.Enabled = false
ColorCorrection_9.Saturation = -0.30000001192092896
ColorCorrection_9.Contrast = 0.10000000149011612
ColorCorrection_9.TintColor = Color3.new(0.921569, 0.839216, 0.800000)
ColorCorrection_9.Brightness = 0
ColorCorrection_9.Parent = Lighting

local Lighting = game:GetService('Lighting')

Lighting.ClockTime = 6.699999809265137
Lighting.ColorShift_Bottom = Color3.new(0.043137, 0.000000, 0.078431)
Lighting.FogColor = Color3.new(0.368627, 0.298039, 0.415686)
Lighting.FogEnd = 1000
Lighting.EnvironmentDiffuseScale = 0
Lighting.GlobalShadows = true
Lighting.EnvironmentSpecularScale = 0.25
Lighting.FogStart = 0
Lighting.GeographicLatitude = 41.73500061035156
Lighting.Ambient = Color3.new(0.231373, 0.129412, 0.105882)
Lighting.OutdoorAmbient = Color3.new(0.133333, 0.000000, 0.192157)
Lighting.ExposureCompensation = 0.23999999463558197
Lighting.Brightness = 3.5
Lighting.ColorShift_Top = Color3.new(0.941176, 0.498039, 0.054902)
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

local Efecto_4 = Instance.new('BlurEffect')
Efecto_4.Name = [[Efecto]]
Efecto_4.Enabled = false
Efecto_4.Size = 2
Efecto_4.Parent = Lighting

local Inaritaisha_5 = Instance.new('ColorCorrectionEffect')
Inaritaisha_5.Name = [[Inari taisha]]
Inaritaisha_5.Enabled = true
Inaritaisha_5.Saturation = 0.05000000074505806
Inaritaisha_5.Contrast = 0
Inaritaisha_5.TintColor = Color3.new(1.000000, 0.878431, 0.858824)
Inaritaisha_5.Brightness = 0
Inaritaisha_5.Parent = Lighting

local Normal_6 = Instance.new('ColorCorrectionEffect')
Normal_6.Name = [[Normal]]
Normal_6.Enabled = false
Normal_6.Saturation = -0.20000000298023224
Normal_6.Contrast = 0
Normal_6.TintColor = Color3.new(1.000000, 0.909804, 0.843137)
Normal_6.Brightness = 0
Normal_6.Parent = Lighting

local SunRays_7 = Instance.new('SunRaysEffect')
SunRays_7.Name = [[SunRays]]
SunRays_7.Enabled = true
SunRays_7.Intensity = 0.05000000074505806
SunRays_7.Spread = 1
SunRays_7.Parent = Lighting

local Sunset_8 = Instance.new('Sky')
Sunset_8.Name = [[Sunset]]
Sunset_8.StarCount = 3000
Sunset_8.SkyboxUp = [[rbxassetid://323493360]]
Sunset_8.MoonTextureId = [[rbxasset://sky/moon.jpg]]
Sunset_8.SkyboxDn = [[rbxassetid://323494368]]
Sunset_8.SkyboxBk = [[rbxassetid://323494035]]
Sunset_8.SkyboxFt = [[rbxassetid://323494130]]
Sunset_8.SunTextureId = [[rbxasset://sky/sun.jpg]]
Sunset_8.SunAngularSize = 14
Sunset_8.SkyboxLf = [[rbxassetid://323494252]]
Sunset_8.SkyboxRt = [[rbxassetid://323494067]]
Sunset_8.MoonAngularSize = 11
Sunset_8.Parent = Lighting

local Takayama_9 = Instance.new('ColorCorrectionEffect')
Takayama_9.Name = [[Takayama]]
Takayama_9.Enabled = false
Takayama_9.Saturation = -0.30000001192092896
Takayama_9.Contrast = 0.10000000149011612
Takayama_9.TintColor = Color3.new(0.921569, 0.839216, 0.800000)
Takayama_9.Brightness = 0
Takayama_9.Parent = Lighting

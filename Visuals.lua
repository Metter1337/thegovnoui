local evernessascii = [[

                                                       _                 _     
                                                      (_)               | |    
   _____   _____ _ __ _ __   ___  ___ ___       __   ___ ___ _   _  __ _| |___ 
  / _ \ \ / / _ \ '__| '_ \ / _ \/ __/ __|      \ \ / / / __| | | |/ _` | / __|
 |  __/\ V /  __/ |  | | | |  __/\__ \__ \   _   \ V /| \__ \ |_| | (_| | \__ \
  \___| \_/ \___|_|  |_| |_|\___||___/___/  (_)   \_/ |_|___/\__,_|\__,_|_|___/
                                                                                                                                                                                                             
]]
warn(evernessascii)
setfpscap(999)

local TheWorstUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Metter1337/thegovnoui/refs/heads/main/TheWorstUI.lua"))()
local Window = TheWorstUI:CreateWindow({
  Name = "♥ everness.visuals",
  SizeX = 200,
  SizeY = 0,
  CanResize = "X",
})

local ToggleActive = true

local Toggle = Window:CreateToggle({
    Name = "PCLDViewer",
    Default = true,
    Callback = function(bool)
        for i, v in pairs(game:GetDescendants()) do
            if v:IsA("BasePart") and v.Name == "PlayerCharacterLocationDetector" then
                if bool then
                    v.Transparency = 0.5
                    v.Color = Color3.fromRGB(0, 0, 0)
                else
                    v.Transparency = 1
                end
            end
        end
    end
})

local Button = Window:CreateButton({
  Name = "Break PCLD",
  Callback = function() 
   local player = game.Players.LocalPlayer
    player.Character.Humanoid.Health = 0
    wait(3.5)
    player.Character.Humanoid.Health = 0
  end
})

local Button = Window:CreateButton({
  Name = "Delete Sky",
  Callback = function() 
   local player = game.Players.LocalPlayer
    game.Lighting.Sky:Destroy()
  end
})

local Toggle = Window:CreateToggle({
    Name = "Night Mode",
    Default = true,
    Callback = function(bool)
        if bool then
            game.Lighting.TimeOfDay = "00:00:00"
        else
            game.Lighting.TimeOfDay = "12:00:00"
        end
    end
})

local Toggle = Window:CreateToggle({
    Name = "Third Person",
    Default = true,
    Callback = function(bool)
        local player = game.Players.LocalPlayer
        if bool then
            player.CameraMode = Enum.CameraMode.Classic
        else
            player.CameraMode = Enum.CameraMode.LockFirstPerson
        end
    end
})
-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Metter1337/thegovnoui/refs/heads/main/tptoftap.lua"))()
local evernessascii = [[

                                            _             
                                           | |            
   _____   _____ _ __ _ __   ___  ___ ___  | |_   _  __ _ 
  / _ \ \ / / _ \ '__| '_ \ / _ \/ __/ __| | | | | |/ _` |
 |  __/\ V /  __/ |  | | | |  __/\__ \__ \_| | |_| | (_| |
  \___| \_/ \___|_|  |_| |_|\___||___/___(_)_|\__,_|\__,_|
                                                          
]]
warn(evernessascii)

local TheWorstUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/m1kp0/libraries/refs/heads/main/TheWorstUI.lua"))
local Window = TheWorstUI:CreateWindow({Name = "♥ Teleport", SizeX = 200, CanResize = "BOTH"})

local Button = Window:CreateButton({
  Name = "Pink House",
  Callback = function() 
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-491, -7, -166)
  end
})

local Button = Window:CreateButton({
  Name = "Blue House",
  Callback = function() 
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(510, 83, -339)
  end
})

local Button = Window:CreateButton({
  Name = "Green House",
  Callback = function() 
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-535, -7, 93)
  end
})

local Button = Window:CreateButton({
  Name = "Purple House",
  Callback = function() 
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(250, -6, 463)
  end
})

local Button = Window:CreateButton({
  Name = "China House",
  Callback = function() 
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(554, 123, -72)
  end
})

local Button = Window:CreateButton({
  Name = "Void",
  Callback = function() 
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3564.11255, 33472.4453, 902.990967, 0.756310523, -0.0632280111, 0.651150227, 1.71609173e-07, 0.995318711, 0.0966472775, -0.654212773, -0.0730952397, 0.752770007)
  end
})

local Button = Window:CreateButton({
  Name = "Spawn",
  Callback = function() 
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3, -7, -2)
  end
})

local Bind = Window:CreateBind({
  Name = "SpawnTP",
  Default = "P", 
  Hold = true,
  Callback = function(Holding)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3, -7, -2)
  end
})

local Bind = Window:CreateBind({
  Name = "VoidTP",
  Default = "Backquote", 
  Hold = true,
  Callback = function(Holding)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3564.11255, 33472.4453, 902.990967, 0.756310523, -0.0632280111, 0.651150227, 1.71609173e-07, 0.995318711, 0.0966472775, -0.654212773, -0.0730952397, 0.752770007)
  end
})

local Bind = Window:CreateBind({
  Name = "HouseTP",
  Default = "M", 
  Hold = true,
  Callback = function(Holding)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(510, 83, -339)
  end
})

local Toggle = Window:CreateToggle({
  Name = "Loop TP",
  Default = true,
  Callback = function(bool)
             _G.LoopTP = bool
        if bool then
            task.spawn(function()
                while _G.LoopTP do
                    local char = game.Players.LocalPlayer.Character
                    local hrp = char and char:FindFirstChild("HumanoidRootPart")
                    
                    if hrp then
                        local points = {
                            CFrame.new(-491, -7, -166),
                            CFrame.new(510, 83, -339),
                            CFrame.new(554, 123, -72),
                            CFrame.new(250, -6, 463),
                            CFrame.new(-535, -7, 93),
                            CFrame.new(3, -7, -2)
                        }
                        
                        for _, cf in ipairs(points) do
                            if not _G.LoopTP then break end
                            hrp.CFrame = cf
                            task.wait(0.01)
                        end
                    else
                        task.wait(1)
                    end
                end
            end)
        end
    end
})

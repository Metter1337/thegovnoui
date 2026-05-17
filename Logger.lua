local TheWorstUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Metter1337/thegovnoui/refs/heads/main/TheWorstUI.lua"))()
local Window = TheWorstUI:CreateWindow({
    Name = "logger",
    SizeX = 250,
    SizeY = 500,
    CanResize = "Y",
})

for _, plr in ipairs(game.Players:GetPlayers()) do
    if plr ~= game.Players.LocalPlayer then
        Window:CreateLabel(plr.Name .. ' <font color="rgb(200,200,200)">in server</font>')
    end
end

game.Players.PlayerAdded:Connect(function(plr)
    Window:CreateLabel(plr.Name .. ' <font color="rgb(0,255,0)">joined</font>')
    Window:ScrollToBottom()
end)

game.Players.PlayerRemoving:Connect(function(plr)
    if workspace:FindFirstChild("BlackHoleKick") then
        Window:CreateLabel(plr.Name .. ' <font color="rgb(255, 153, 0)">kicked</font>')
    else
        Window:CreateLabel(plr.Name .. ' <font color="rgb(47, 0, 255)">left</font>')
    end
    Window:ScrollToBottom()
end)

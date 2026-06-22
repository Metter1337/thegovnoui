local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local LP = Players.LocalPlayer
local Camera = workspace.CurrentCamera

if getgenv().UniversalFlyConnection then
	pcall(function()
		getgenv().UniversalFlyConnection:Disconnect()
	end)
end

if getgenv().UniversalFlyBV then
	pcall(function()
		getgenv().UniversalFlyBV:Destroy()
	end)
end

if getgenv().UniversalFlyBG then
	pcall(function()
		getgenv().UniversalFlyBG:Destroy()
	end)
end

local NORMAL_SPEED = 250
local FAST_SPEED = 1000

local SMOOTHNESS = 0.20
local ROTATION_SMOOTHNESS = 0.26

local Flying = false
local Speed = NORMAL_SPEED

local BV
local BG
local Loop

local Controls = {
	W = false,
	A = false,
	S = false,
	D = false,
	UP = false,
	DOWN = false
}

local function GetCharacter()
	return LP.Character or LP.CharacterAdded:Wait()
end

local function GetHumanoid()
	return GetCharacter():FindFirstChildOfClass("Humanoid")
end

local function GetRoot()
	return GetCharacter():FindFirstChild("HumanoidRootPart")
end

local function GetVehicle()
	local Humanoid = GetHumanoid()

	if Humanoid and Humanoid.SeatPart then
		return Humanoid.SeatPart.Parent
	end

	return nil
end

local function GetFlyPart()
	local Vehicle = GetVehicle()

	if Vehicle then
		if Vehicle.PrimaryPart then
			return Vehicle.PrimaryPart, true
		end

		local Seat = Vehicle:FindFirstChildWhichIsA("VehicleSeat", true)

		if Seat then
			return Seat, true
		end
	end

	return GetRoot(), false
end

local function FixCharacter()
	local Humanoid = GetHumanoid()
	if not Humanoid then return end

	Humanoid.PlatformStand = false
	Humanoid.AutoRotate = true

	for _,Track in pairs(Humanoid:GetPlayingAnimationTracks()) do
		local Name = Track.Name:lower()

		if string.find(Name, "fall") or string.find(Name, "jump") then
			Track:Stop()
		end
	end
end

local function StopFly()
	Flying = false

	if Loop then
		Loop:Disconnect()
		Loop = nil
	end

	if BV then
		BV:Destroy()
		BV = nil
	end

	if BG then
		BG:Destroy()
		BG = nil
	end

	local Humanoid = GetHumanoid()

	if Humanoid then
		Humanoid.PlatformStand = false
		Humanoid.AutoRotate = true

		Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
		task.wait()
		Humanoid:ChangeState(Enum.HumanoidStateType.Running)
	end
end

local function StartFly(NewSpeed)
	Speed = NewSpeed

	local Part, IsVehicle = GetFlyPart()
	if not Part then return end
	if Flying then return end

	Flying = true

	BV = Instance.new("BodyVelocity")
	BV.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
	BV.Velocity = Vector3.zero
	BV.Parent = Part

	getgenv().UniversalFlyBV = BV

	BG = Instance.new("BodyGyro")
	BG.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
	BG.P = 15000
	BG.D = 600
	BG.CFrame = Part.CFrame
	BG.Parent = Part

	getgenv().UniversalFlyBG = BG

	Loop = RunService.RenderStepped:Connect(function()
		if not Flying then return end
		if not Part or not Part.Parent then
			StopFly()
			return
		end

		if not IsVehicle then
			FixCharacter()
		end

		local Move = Vector3.zero

		if Controls.W then Move += Camera.CFrame.LookVector end
		if Controls.S then Move -= Camera.CFrame.LookVector end
		if Controls.A then Move -= Camera.CFrame.RightVector end
		if Controls.D then Move += Camera.CFrame.RightVector end
		if Controls.UP then Move += Vector3.new(0,1,0) end
		if Controls.DOWN then Move -= Vector3.new(0,1,0) end

		local Target = Vector3.zero
		if Move.Magnitude > 0 then
			Target = Move.Unit * Speed
		end

		BV.Velocity = BV.Velocity:Lerp(Target, SMOOTHNESS)

		BG.CFrame = BG.CFrame:Lerp(
			CFrame.new(
				Part.Position,
				Part.Position + Camera.CFrame.LookVector
			),
			ROTATION_SMOOTHNESS
		)
	end)

	getgenv().UniversalFlyConnection = Loop
end

UIS.InputBegan:Connect(function(Input, GP)
	if GP then return end

	local Key = Input.KeyCode

	if Key == Enum.KeyCode.W then Controls.W = true end
	if Key == Enum.KeyCode.A then Controls.A = true end
	if Key == Enum.KeyCode.S then Controls.S = true end
	if Key == Enum.KeyCode.D then Controls.D = true end
	if Key == Enum.KeyCode.Space then Controls.UP = true end
	if Key == Enum.KeyCode.LeftControl then Controls.DOWN = true end

	if Key == Enum.KeyCode.PageUp or Key == Enum.KeyCode.Four then
		if Flying and Speed == NORMAL_SPEED then
			StopFly()
		else
			StartFly(NORMAL_SPEED)
		end
	end

	if Key == Enum.KeyCode.End or Key == Enum.KeyCode.Q then
		if Flying and Speed == FAST_SPEED then
			StopFly()
		else
			StartFly(FAST_SPEED)
		end
	end
end)

UIS.InputEnded:Connect(function(Input)
	local Key = Input.KeyCode

	if Key == Enum.KeyCode.W then Controls.W = false end
	if Key == Enum.KeyCode.A then Controls.A = false end
	if Key == Enum.KeyCode.S then Controls.S = false end
	if Key == Enum.KeyCode.D then Controls.D = false end
	if Key == Enum.KeyCode.Space then Controls.UP = false end
	if Key == Enum.KeyCode.LeftControl then Controls.DOWN = false end
end)

LP.CharacterAdded:Connect(function()
	task.wait(2)
	StopFly()
end)

getgenv().UniversalFlyStop = StopFly

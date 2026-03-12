-- AdvancedMovementMenu
-- LocalScript inside StarterPlayerScripts

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local root = character:WaitForChild("HumanoidRootPart")

player.CharacterAdded:Connect(function(char)
	character = char
	humanoid = char:WaitForChild("Humanoid")
	root = char:WaitForChild("HumanoidRootPart")
end)

-- GUI
local gui = Instance.new("ScreenGui")
gui.Name = "AdvancedMenu"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0,250,0,280)
frame.Position = UDim2.new(0,100,0,100)
frame.BackgroundColor3 = Color3.fromRGB(30,30,30)
frame.Active = true
frame.Draggable = true
frame.Parent = gui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,0,0,30)
title.Text = "Advanced Movement Menu"
title.BackgroundTransparency = 1
title.TextColor3 = Color3.new(1,1,1)
title.Parent = frame

-- WalkSpeed
local speedBox = Instance.new("TextBox")
speedBox.Position = UDim2.new(0,10,0,40)
speedBox.Size = UDim2.new(0,140,0,30)
speedBox.PlaceholderText = "WalkSpeed"
speedBox.Parent = frame

local speedBtn = Instance.new("TextButton")
speedBtn.Position = UDim2.new(0,160,0,40)
speedBtn.Size = UDim2.new(0,70,0,30)
speedBtn.Text = "Set"
speedBtn.Parent = frame

-- JumpPower
local jumpBox = Instance.new("TextBox")
jumpBox.Position = UDim2.new(0,10,0,80)
jumpBox.Size = UDim2.new(0,140,0,30)
jumpBox.PlaceholderText = "JumpPower"
jumpBox.Parent = frame

local jumpBtn = Instance.new("TextButton")
jumpBtn.Position = UDim2.new(0,160,0,80)
jumpBtn.Size = UDim2.new(0,70,0,30)
jumpBtn.Text = "Set"
jumpBtn.Parent = frame

-- Fly
local flyBtn = Instance.new("TextButton")
flyBtn.Position = UDim2.new(0,10,0,130)
flyBtn.Size = UDim2.new(0,220,0,30)
flyBtn.Text = "Fly: OFF"
flyBtn.Parent = frame

-- Noclip
local noclipBtn = Instance.new("TextButton")
noclipBtn.Position = UDim2.new(0,10,0,170)
noclipBtn.Size = UDim2.new(0,220,0,30)
noclipBtn.Text = "Noclip: OFF"
noclipBtn.Parent = frame

-- Infinite Jump
local infJumpBtn = Instance.new("TextButton")
infJumpBtn.Position = UDim2.new(0,10,0,210)
infJumpBtn.Size = UDim2.new(0,220,0,30)
infJumpBtn.Text = "Infinite Jump: OFF"
infJumpBtn.Parent = frame

-- Toggle menu
UIS.InputBegan:Connect(function(input,gp)
	if gp then return end
	
	if input.KeyCode == Enum.KeyCode.RightShift then
		frame.Visible = not frame.Visible
	end
end)

-- WalkSpeed
speedBtn.MouseButton1Click:Connect(function()
	local val = tonumber(speedBox.Text)
	if val then
		humanoid.WalkSpeed = val
	end
end)

-- JumpPower
jumpBtn.MouseButton1Click:Connect(function()
	local val = tonumber(jumpBox.Text)
	if val then
		humanoid.JumpPower = val
	end
end)

-- Fly system
local flying = false
local bodyVel
local bodyGyro

flyBtn.MouseButton1Click:Connect(function()

	flying = not flying
	
	if flying then
		
		flyBtn.Text = "Fly: ON"
		humanoid.PlatformStand = true
		
		bodyVel = Instance.new("BodyVelocity")
		bodyVel.MaxForce = Vector3.new(100000,100000,100000)
		bodyVel.Parent = root
		
		bodyGyro = Instance.new("BodyGyro")
		bodyGyro.MaxTorque = Vector3.new(100000,100000,100000)
		bodyGyro.Parent = root
		
	else
		
		flyBtn.Text = "Fly: OFF"
		humanoid.PlatformStand = false
		
		if bodyVel then bodyVel:Destroy() end
		if bodyGyro then bodyGyro:Destroy() end
		
	end
end)

RunService.RenderStepped:Connect(function()

	if flying and bodyVel and bodyGyro then
		
		local cam = workspace.CurrentCamera
		bodyGyro.CFrame = cam.CFrame
		
		local move = Vector3.zero
		
		if UIS:IsKeyDown(Enum.KeyCode.W) then
			move += cam.CFrame.LookVector
		end
		
		if UIS:IsKeyDown(Enum.KeyCode.S) then
			move -= cam.CFrame.LookVector
		end
		
		if UIS:IsKeyDown(Enum.KeyCode.A) then
			move -= cam.CFrame.RightVector
		end
		
		if UIS:IsKeyDown(Enum.KeyCode.D) then
			move += cam.CFrame.RightVector
		end
		
		bodyVel.Velocity = move * 80
		
	end

end)

-- Noclip
local noclip = false

noclipBtn.MouseButton1Click:Connect(function()
	noclip = not noclip
	
	if noclip then
		noclipBtn.Text = "Noclip: ON"
	else
		noclipBtn.Text = "Noclip: OFF"
	end
end)

RunService.Stepped:Connect(function()
	if noclip and character then
		for _,v in pairs(character:GetDescendants()) do
			if v:IsA("BasePart") then
				v.CanCollide = false
			end
		end
	end
end)

-- Infinite Jump
local infJump = false

infJumpBtn.MouseButton1Click:Connect(function()

	infJump = not infJump
	
	if infJump then
		infJumpBtn.Text = "Infinite Jump: ON"
	else
		infJumpBtn.Text = "Infinite Jump: OFF"
	end

end)

UIS.JumpRequest:Connect(function()

	if infJump then
		humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	end

end)

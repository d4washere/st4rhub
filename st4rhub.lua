local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()




local Window = Rayfield:CreateWindow({
    Name = "ST4RHUB UNIVERSAL",
    LoadingTitle = "Unleashing Infinite Possibilities...",
    LoadingSubtitle = "by d4washere",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "ST4RHUB"
    },
    Discord = {
       Enabled = true,
       Invite = "hYcec4zBGf", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = false -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "ST4RHUB",
       Subtitle = "Key System",
       Note = "discord.gg/hYcec4zBGf",
       FileName = "ST4RHUB KEY", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"89ODgzPOS8NfQ51baYjPzUXNB","ZABAS"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })







 


 

 local PlayerTab = Window:CreateTab("Player", 4483362458) -- Title, Image
 local VisualsTab = Window:CreateTab("Visuals", 4483362458) -- Title, Image
 local MiscTab = Window:CreateTab("Misc", 4483362458) -- Title, Image
 local FunTab = Window:CreateTab("Fun", 4483362458) -- Title, Image

local Button = PlayerTab:CreateButton({
   Name = "Infinite Jump (Toggle with G)",
   Callback = function()
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local canToggle = true
local isJumping = false

-- Function to toggle infinite jump
local function toggleInfiniteJump()
    isJumping = not isJumping
    if isJumping then
        print("Infinite Jump Enabled")
    else
        print("Infinite Jump Disabled")
    end
end

-- Function to handle jumping
local function onJumpRequest()
    if isJumping then
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end

-- Listen for "G" keypress to toggle infinite jump
UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.G and canToggle then
        canToggle = false
        toggleInfiniteJump()
        wait(0.2)  -- Cooldown to prevent rapid toggling
        canToggle = true
    end
end)

-- Bind jumping to spacebar press
UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.Space then
        onJumpRequest()
    end
end)

-- Handle character respawn
player.CharacterAdded:Connect(function(char)
    character = char
    -- Re-bind input events
    UserInputService.InputBegan:Connect(function(input)
        if input.KeyCode == Enum.KeyCode.G and canToggle then
            canToggle = false
            toggleInfiniteJump()
            wait(0.2)  -- Cooldown to prevent rapid toggling
            canToggle = true
        end
    end)
    
    UserInputService.InputBegan:Connect(function(input)
        if input.KeyCode == Enum.KeyCode.Space then
            onJumpRequest()
        end
    end)
end)


     end,
})



local Button = MiscTab:CreateButton({
	Name = "Infinite Zoom",
	Callback = function()
	-- LocalScript in StarterPlayerScripts

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Function to set infinite zoom
local function setInfiniteZoom()
    local camera = game.Workspace.CurrentCamera
    camera.CameraType = Enum.CameraType.Custom
    player.CameraMaxZoomDistance = 1e6 -- Setting a very high zoom distance
end

-- Connect the function to CharacterAdded event
player.CharacterAdded:Connect(function()
    setInfiniteZoom()
end)

-- Set infinite zoom when the script runs if character already exists
if player.Character then
    setInfiniteZoom()
end

 
	end,
 })




 local Button = MiscTab:CreateButton({
	Name = "DEX V3",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
	end,
 })
 



















local Button = MiscTab:CreateButton({
	Name = "Infinite Yield",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
 
	end,
 })
 



 local Button = MiscTab:CreateButton({
	Name = "Fling all",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
 
	end,
 })

 
 local Button = MiscTab:CreateButton({
	Name = "Universal ESP + Aimbot",
	Callback = function()
	-- Yes, I know This Is Shit.
 local PLAYER = game.Players.LocalPlayer
 local CurrentCam  = game.Workspace.CurrentCamera
 local UIS = game:GetService("UserInputService")-- Made By Mick Gordon
 local WorldToViewportPoint = CurrentCam.WorldToViewportPoint
 local mouseLocation = UIS.GetMouseLocation
 
 game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Made By Mick Gordon", Text = "Enjoy !"})
 
 local DeleteMob ={
	 GUi = {
		 OpenNCloseButton = true; -- Have A Button For It
		 KeybindEnable = false; -- If You Want A Bind For The Menu
		 Keybind = "z"; -- Menu Key Bind
	 };
	 Aimbot= {
		 Keybind = "MouseButton2"; -- Change Aim Bot Key Bind Here !!! No Capitals, Unless it is MouseButton1 or MouseButton2
 ------------------------------------------------------------------------------------------
		 Enabled = false; -- No Need To Change Anything Here As It Is On The GUI
		 TeamCheck = false;
		 WallCheck = false;
		 ShowFov = false;
		 Fov = 0;
		 Smoothing = 0;
		 AimPart = "Head";
		 Thickness = 1;
		 FovFillColor = Color3.fromRGB(100,0,100);
		 FovColor = Color3.fromRGB(100,0,100);
		 FovFillTransparency = 1;
		 FovTransparenct = 0;
		 IsAimKeyDown = false;
	 };
	 ESP ={
		 Box = {
			 Box = false;
			 Name = false;
			 Distance = false;
			 Health = false;
 
			 TeamCheck = false;
 
			 HealthType = "Bar";
 
			 BoxColor = Color3.fromRGB(75,0,10);
		 };
		 OutLines = {
			 Enabled = false;
			 TeamCheck = false;
			 TeamColor = false;
 
			 AllwaysShow = true;
 
			 FillCollor = Color3.fromRGB(75,0,10);
			 FillTrancparenct = 0;
 
			 OutlineColor = Color3.fromRGB(0,0,0);
			 OutlineTrancparency = 0;
		 };
		 Tracers = {
			 Enabled = false;
			 TeamCheck = false;
			 TeamColor = false;
 
			 Color = Color3.fromRGB(75,0,10);
		 }
	 }-- Made By Mick Gordon
 }
 
 -- Made By Mick Gordon
 local Fov = Instance.new("ScreenGui")Fov.Name = "Fov" Fov.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui") Fov.ZIndexBehavior = Enum.ZIndexBehavior.Sibling Fov.ResetOnSpawn = false-- i miss you synapse fov
 local TracersG = Instance.new("ScreenGui")TracersG.Name = "Tracers" TracersG.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui") TracersG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling TracersG.ResetOnSpawn = false
 local FOVFFrame = Instance.new("Frame")FOVFFrame.Parent = Fov FOVFFrame.Name = "FOVFFrame" FOVFFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255) FOVFFrame.BorderColor3 = Color3.fromRGB(0, 0, 0) FOVFFrame.BorderSizePixel = 0 FOVFFrame.BackgroundTransparency = 1 FOVFFrame.AnchorPoint = Vector2.new(0.5, 0.5) FOVFFrame.Position = UDim2.new(0.5, 0,0.5, 0) FOVFFrame.Size = UDim2.new(0, DeleteMob.Aimbot.Fov, 0, DeleteMob.Aimbot.Fov) FOVFFrame.BackgroundTransparency = 1 
 local UICorner = Instance.new("UICorner")UICorner.CornerRadius = UDim.new(1, 0) UICorner.Parent = FOVFFrame -- Made By Mick Gordon
 local UIStroke = Instance.new("UIStroke")UIStroke.Color = Color3.fromRGB(100,0,100) UIStroke.Parent = FOVFFrame UIStroke.Thickness = 1 UIStroke.ApplyStrokeMode = "Border" game:GetService("StarterGui"):SetCore("SendNotification", {Title = "https://discord.gg/FsApQ7YNTq", Text = "The Discord For More!"})
 local BoxC = Instance.new("ScreenGui", game.Workspace) BoxC.Name = "Box"
 local Higlight = Instance.new("ScreenGui",game.Workspace)
 local connections = {}
 -- Made By Mick Gordon
 local function AddHighlight(plr)
	 local Highlight = Instance.new("Highlight")
	 Highlight.Parent = Higlight
	 Highlight.Name = plr.Name
	 Highlight.Enabled = DeleteMob.ESP.OutLines.Enabled
	 local plrchar = plr.Character
	 if plrchar then
		 Highlight.Adornee = plrchar
	 end
	 connections[plr] = plr.CharacterAdded:Connect(function(char)
		 Highlight.Adornee = char
	 end)
	 local co = coroutine.create(function()
		 while wait(.1) do
			 if plr ~= PLAYER and plr and plr.Character and plr.Character.FindFirstChild(plr.Character, "Humanoid") and plr.Character.Humanoid.Health > 0 then
 
				 if DeleteMob.ESP.OutLines.Enabled == true then
					 if DeleteMob.ESP.OutLines.TeamCheck == true and plr.TeamColor == PLAYER.TeamColor then
						 Highlight.Enabled = false
					 else
						 Highlight.Enabled = true
					 end
				 else-- Made By Mick Gordon
					 Highlight.Enabled = false
				 end
 
				 if DeleteMob.ESP.OutLines.TeamColor == true then
					 Highlight.FillColor = plr.TeamColor.Color 
				 else
					 Highlight.FillColor = DeleteMob.ESP.OutLines.FillCollor
				 end
 
				 if DeleteMob.ESP.OutLines.AllwaysShow == true then
					 Highlight.DepthMode = "AlwaysOnTop" 
				 else
					 Highlight.DepthMode = "Occluded" 
				 end-- Made By Mick Gordon
 
				 Highlight.OutlineTransparency = DeleteMob.ESP.OutLines.OutlineTrancparency
				 Highlight.OutlineColor = DeleteMob.ESP.OutLines.OutlineColor
				 Highlight.FillTransparency = DeleteMob.ESP.OutLines.FillTrancparenct
 
				 if not (game:GetService"Players":FindFirstChild(plr.Name)) then
					 Higlight:FindFirstChild(plr.Name):Destroy()
					 coroutine.yield()
				 end
			 else
				 Highlight.Enabled = false
			 end
		 end
	 end)
	 coroutine.resume(co)
 end
 -- Made By Mick Gordon
 local function AddBox(player) -- Saves FPS 
	 local bbg = Instance.new("BillboardGui", BoxC)
	 bbg.Name = player.Name
	 bbg.AlwaysOnTop = true
	 bbg.Size = UDim2.new(4,0,5.4,0)
	 bbg.ClipsDescendants = false
	 bbg.Enabled = false
 
	 local outlines = Instance.new("Frame", bbg)
	 outlines.Size = UDim2.new(1,0,1,0)
	 outlines.BorderSizePixel = 1
	 outlines.BackgroundTransparency = 1
	 local left = Instance.new("Frame", outlines)
	 left.BorderSizePixel = 1
	 left.Size = UDim2.new(0,(1),1,0)
	 local right = left:Clone()
	 right.Parent = outlines
	 right.Size = UDim2.new(0,-(1),1,0)   
	 right.Position = UDim2.new(1,0,0,0)
	 local up = left:Clone()-- Made By Mick Gordon
	 up.Parent = outlines
	 up.Size = UDim2.new(1,0,0,(1))
	 local down = left:Clone()
	 down.Parent = outlines
	 down.Size = UDim2.new(1,0,0,-(1))
	 down.Position = UDim2.new(0,0,1,0)
 
	 local info = Instance.new("BillboardGui", bbg)
	 info.Name = "info"
	 info.Size = UDim2.new(3,0,0,54)
	 info.StudsOffset = Vector3.new(3.6,-3,0)
	 info.AlwaysOnTop = true
	 info.ClipsDescendants = false
	 info.Enabled = false
	 local namelabel = Instance.new("TextLabel", info)
	 namelabel.Name = "namelabel"
	 namelabel.BackgroundTransparency = 1
	 namelabel.TextStrokeTransparency = 0
	 namelabel.TextXAlignment = Enum.TextXAlignment.Left
	 namelabel.Size = UDim2.new(0,100,0,18)
	 namelabel.Position = UDim2.new(0,0,0,0)
	 namelabel.Text = player.Name
	 local distancel = Instance.new("TextLabel", info)
	 distancel.Name = "distancelabel"
	 distancel.BackgroundTransparency = 1-- Made By Mick Gordon
	 distancel.TextStrokeTransparency = 0
	 distancel.TextXAlignment = Enum.TextXAlignment.Left
	 distancel.Size = UDim2.new(0,100,0,18)
	 distancel.Position = UDim2.new(0,0,0,18)
	 local healthl = Instance.new("TextLabel", info)
	 healthl.Name = "healthlabel"
	 healthl.BackgroundTransparency = 1
	 healthl.TextStrokeTransparency = 0
	 healthl.TextXAlignment = Enum.TextXAlignment.Left
	 healthl.Size = UDim2.new(0,100,0,18)
	 healthl.Position = UDim2.new(0,0,0,36)
 
	 local uill = Instance.new("UIListLayout", info)
 
	 local forhealth = Instance.new("BillboardGui", bbg)
	 forhealth.Name = "forhealth"
	 forhealth.Size = UDim2.new(4.5,0,6,0)
	 forhealth.AlwaysOnTop = true
	 forhealth.ClipsDescendants = false
	 forhealth.Enabled = false
 
	 local healthbar = Instance.new("Frame", forhealth)
	 healthbar.Name = "healthbar"
	 healthbar.BackgroundColor3 = Color3.fromRGB(40,40,40)
	 healthbar.BorderColor3 = Color3.fromRGB(0,0,0)
	 healthbar.Size = UDim2.new(0.04,0,0.9,0)
	 healthbar.Position = UDim2.new(0,0,0.05,0)
	 local bar = Instance.new("Frame", healthbar)
	 bar.Name = "bar"
	 bar.BorderSizePixel = 0
	 bar.BackgroundColor3 = Color3.fromRGB(94,255,69)
	 bar.AnchorPoint = Vector2.new(0,1)
	 bar.Position = UDim2.new(0,0,1,0)
	 bar.Size = UDim2.new(1,0,1,0)
 
	 -- Made By Mick Gordon
	 local co = coroutine.create(function()
		 while wait(0.1) do
			 if player ~= PLAYER and player and player.Character and player.Character.FindFirstChild(player.Character, "Humanoid") and player.Character.Humanoid.Health > 0 then
				 bbg.Adornee = player.Character.HumanoidRootPart
				 info.Adornee = player.Character.HumanoidRootPart
				 forhealth.Adornee = player.Character.HumanoidRootPart
 
				 if DeleteMob.ESP.Box.Box == true then
					 outlines.Visible = true
				 else
					 outlines.Visible = false
				 end
 
				 outlines.BackgroundTransparency = 1
 
				 if DeleteMob.ESP.Box.Health == true then
					 if player.Character:FindFirstChild("Humanoid") ~= nil then
						 healthl.Text = "Health: "..math.floor(player.Character:FindFirstChild"Humanoid".Health)
						 healthbar.bar.Size = UDim2.new(1,0,player.Character:FindFirstChild"Humanoid".Health/player.Character:FindFirstChild"Humanoid".MaxHealth,0)
					 end
					 if DeleteMob.ESP.Box.HealthType == "Text" then
						 healthbar.Visible = false
						 healthl.Visible = true
					 end-- Made By Mick Gordon
					 if DeleteMob.ESP.Box.HealthType == "Bar" then
						 healthl.Visible = false
						 healthbar.Visible = true
					 end
					 if DeleteMob.ESP.Box.HealthType == "Both" then
						 healthl.Visible = true
						 healthbar.Visible = true
					 end
				 else
					 healthl.Visible = false
					 healthbar.Visible = false
				 end
 
 
				 if DeleteMob.ESP.Box.Name then
					 namelabel.Visible = true
				 else
					 namelabel.Visible = false
				 end
 
				 -- Made By Mick Gordon
				 if DeleteMob.ESP.Box.Distance == true then
					 distancel.Visible = true
					 if PLAYER.Character and PLAYER.Character:FindFirstChild("HumanoidRootPart") ~= nil then
						 distancel.Text = "Distance: "..math.floor(0.5+(PLAYER.Character:FindFirstChild"HumanoidRootPart".Position - player.Character:FindFirstChild"HumanoidRootPart".Position).magnitude)
					 end
				 else
					 distancel.Visible = false
				 end
 
 
				 if DeleteMob.ESP.Box.TeamCheck == true and player.TeamColor == PLAYER.TeamColor then
					 bbg.Enabled = false
					 info.Enabled = false
					 forhealth.Enabled = false
				 else
					 bbg.Enabled = true
					 info.Enabled = true
					 forhealth.Enabled = true
				 end
				 -- Made By Mick Gordon
 
				 if DeleteMob.ESP.Box.TeamColor == true then
					 left.BackgroundColor3 = player.TeamColor.Color
					 right.BackgroundColor3 = player.TeamColor.Color
					 up.BackgroundColor3 = player.TeamColor.Color
					 down.BackgroundColor3 = player.TeamColor.Color
					 outlines.BackgroundColor3 = DeleteMob.ESP.Box.BoxColor
				 else
					 outlines.BackgroundColor3 = DeleteMob.ESP.Box.BoxColor
					 left.BackgroundColor3 = DeleteMob.ESP.Box.BoxColor
					 right.BackgroundColor3 = DeleteMob.ESP.Box.BoxColor
					 up.BackgroundColor3 = DeleteMob.ESP.Box.BoxColor
					 down.BackgroundColor3 = DeleteMob.ESP.Box.BoxColor
					 healthl.TextColor3 = DeleteMob.ESP.Box.BoxColor
					 distancel.TextColor3 = DeleteMob.ESP.Box.BoxColor
					 namelabel.TextColor3 = DeleteMob.ESP.Box.BoxColor
				 end
 
				 if not (game:GetService"Players":FindFirstChild(player.Name)) then
					 BoxC:FindFirstChild(player.Name):Destroy()
					 coroutine.yield()
				 end-- Made By Mick Gordon
			 else
				 bbg.Enabled = false
				 bbg.Adornee = nil
				 info.Adornee = nil
				 info.Enabled = false
				 forhealth.Adornee = nil
				 forhealth.Enabled = false
			 end
		 end 
	 end)
	 coroutine.resume(co)
 end
 
 
 local function AddTracers(Player) -- Tracers Without Lib OMG !!!!
	 local tracer = Instance.new("Frame") -- Idk What I Was Smoking When Making This Scrip Hub, It Is Shit And I Will Remake Later 
	 tracer.Parent = TracersG
	 tracer.Name = Player.Name
	 tracer.Active = false
	 tracer.AnchorPoint = Vector2.new(.5, .5)
	 tracer.Visible = false
 
	 local co = coroutine.create(function()
		 game:GetService("RunService").RenderStepped:Connect(function()
			 if Player ~= PLAYER and Player and Player.Character and Player.Character.FindFirstChild(Player.Character, "Humanoid") and Player.Character.Humanoid.Health > 0 then
				 local TargetPart = Player.Character:FindFirstChild("HumanoidRootPart")
				 local ScreenPoint, OnScreen = CurrentCam:WorldToScreenPoint(TargetPart.Position)
				 local distance 
				 -- Made By Mick Gordon
				 distance = math.floor(0.5+(game.Workspace.CurrentCamera.CFrame.Position - Player.Character:WaitForChild("HumanoidRootPart").Position).magnitude)
 
				 local screenpointmain = Vector2.new(ScreenPoint.X, ScreenPoint.Y + (2500 / distance)) --  / distance so it can be at the bottom of the box.
				 local posd = UIS:GetMouseLocation()
				 local MouseOrigin = Vector2.new(posd.X, posd.Y - 36)
				 local Origin = Vector2.new(CurrentCam.ViewportSize.X/2, CurrentCam.ViewportSize.Y - 1)
				 local Position = (Origin + screenpointmain) / 2
				 local Length = (Origin - screenpointmain).Magnitude
				 tracer.Rotation = math.deg(math.atan2(screenpointmain.Y - Origin.Y, screenpointmain.X - Origin.X))
 
 
				 Position = (Origin + screenpointmain) / 2
				 Length = (Origin - screenpointmain).Magnitude
				 tracer.Rotation = math.deg(math.atan2(screenpointmain.Y - Origin.Y, screenpointmain.X - Origin.X))
 
 
				 if OnScreen then
					 if DeleteMob.ESP.Tracers.Enabled == true and OnScreen then
						 if DeleteMob.ESP.Tracers.TeamCheck == true then
							 if Player.TeamColor == PLAYER.TeamColor then
								 tracer.Visible = false
							 else
								 tracer.Visible = true
							 end
						 else -- Made By Mick Gordon
							 tracer.Visible = true
						 end
					 else
						 tracer.Visible = false
					 end-- Made By Mick Gordon
 
					 if DeleteMob.ESP.Tracers.TeamColor == true then
						 tracer.BackgroundColor3 = Player.TeamColor.Color
					 else
						 tracer.BackgroundColor3 = DeleteMob.ESP.Tracers.Color
					 end
 
					 tracer.BorderColor3 = Color3.fromRGB(27, 42, 53)
					 tracer.Position = UDim2.new(0, Position.X, 0, Position.Y)
					 tracer.Size = UDim2.new(0, Length, 0, 2)
				 else
					 tracer.Visible = false
				 end
 
				 if not (game:GetService"Players":FindFirstChild(Player.Name)) then
					 Fov:FindFirstChild(Player.Name):Destroy()
					 coroutine.yield()
				 end
			 else
				 tracer.Visible = false
			 end
		 end)
	 end)
	 coroutine.resume(co)-- Made By Mick Gordon
 end
 
 function isVisible(p, ...)
	 
	 if not (DeleteMob.Aimbot.WallCheck == true) then
		 return true
	 end
	 
	 return #CurrentCam:GetPartsObscuringTarget({ p }, { CurrentCam, PLAYER.Character, ... }) == 0 
 end-- Made By Mick Gordon
 
 function CameraGetClosestToMouse(Fov)
	 local AimFov = Fov
	 local targetPos = nil
 
	 for i,v in pairs (game:GetService("Players"):GetPlayers()) do
		 if v ~= PLAYER then
			 if DeleteMob.Aimbot.TeamCheck == true then
				 if v.Character and v.Character:FindFirstChild(DeleteMob.Aimbot.AimPart) and v.Character.Humanoid and v.Character.Humanoid.Health > 0 and not (v.Team == PLAYER.Team) then
					 local screen_pos, on_screen = WorldToViewportPoint(CurrentCam, v.Character[DeleteMob.Aimbot.AimPart].Position)
					 local screen_pos_2D = Vector2.new(screen_pos.X, screen_pos.Y)
					 local new_magnitude = (screen_pos_2D - mouseLocation(UIS)).Magnitude
					 if on_screen and new_magnitude < AimFov and isVisible(v.Character[DeleteMob.Aimbot.AimPart].Position, v.Character.Head.Parent) then
						 AimFov = new_magnitude
						 targetPos = v-- Made By Mick Gordon
					 end
				 end-- Made By Mick Gordon
			 else
				 if v.Character and v.Character:FindFirstChild(DeleteMob.Aimbot.AimPart) and v.Character.Humanoid and v.Character.Humanoid.Health > 0 then
					 local screen_pos, on_screen = WorldToViewportPoint(CurrentCam, v.Character[DeleteMob.Aimbot.AimPart].Position)
					 local screen_pos_2D = Vector2.new(screen_pos.X, screen_pos.Y)
					 local new_magnitude = (screen_pos_2D - mouseLocation(UIS)).Magnitude
					 if on_screen and new_magnitude < AimFov and isVisible(v.Character[DeleteMob.Aimbot.AimPart].Position, v.Character.Head.Parent) then
						 AimFov = new_magnitude
						 targetPos = v
					 end
				 end
			 end
		 end
	 end
	 return targetPos
 end
 
 
 local function aimAt(pos, smooth)
	 local AimPart = pos.Character:FindFirstChild(DeleteMob.Aimbot.AimPart)
	 if AimPart then
		 local LookAt = nil
		 local Distance = math.floor(0.5+(PLAYER.Character:FindFirstChild"HumanoidRootPart".Position - pos.Character:FindFirstChild"HumanoidRootPart".Position).magnitude)
		 if Distance > 100  then
			 local distChangeBig = Distance / 10
			 LookAt = CurrentCam.CFrame:PointToWorldSpace(Vector3.new(0,0,-smooth * distChangeBig)):Lerp(AimPart.Position,.01) -- No one esle do camera smoothing ? tf
		 else-- Made By Mick Gordon
			 local distChangeSmall = Distance / 10
			 LookAt = CurrentCam.CFrame:PointToWorldSpace(Vector3.new(0,0,-smooth * distChangeSmall)):Lerp(AimPart.Position,.01) -- No one esle do camera smoothing ? tf
		 end
		 CurrentCam.CFrame = CFrame.lookAt(CurrentCam.CFrame.Position, LookAt)
	 end
 end
 
 -- Cant Be Botherd To Clean This Up
 local CheatEngineDeleteMob = Instance.new("ScreenGui")
 local DeleteMobF = Instance.new("Frame")
 local TextBox = Instance.new("TextBox")
 local Name = Instance.new("TextLabel")
 local Line = Instance.new("Frame")
 local Line_2 = Instance.new("Frame")
 local AimBotSection = Instance.new("Frame")
 local UIListLayout = Instance.new("UIListLayout")
 local ABE = Instance.new("TextButton")
 local ABWC = Instance.new("TextButton")
 local ABTC = Instance.new("TextButton")
 local ABSF = Instance.new("TextButton")
 local Frame = Instance.new("Frame")
 local Slider3 = Instance.new("Frame")-- Made By Mick Gordon
 local UICorner = Instance.new("UICorner")
 local Fill1 = Instance.new("Frame")
 local UICorner_2 = Instance.new("UICorner")
 local UIGradient = Instance.new("UIGradient")
 local TriggerFov = Instance.new("TextButton")
 local Numbers = Instance.new("TextLabel")
 local TextLabel = Instance.new("TextLabel")
 local Frame_2 = Instance.new("Frame")
 local Slider4 = Instance.new("Frame")
 local UICorner_3 = Instance.new("UICorner")
 local Fill2 = Instance.new("Frame")
 local UICorner_4 = Instance.new("UICorner")
 local UIGradient_2 = Instance.new("UIGradient")
 local TriggerSmoothing = Instance.new("TextButton")-- Made By Mick Gordon
 local Numbers_2 = Instance.new("TextLabel")
 local TextLabel_2 = Instance.new("TextLabel")
 local TextLabel_3 = Instance.new("TextLabel")
 local Allways_Show = Instance.new("TextButton")
 local TextLabel_4 = Instance.new("TextLabel")
 local ESPSection = Instance.new("Frame")
 local UIListLayout_2 = Instance.new("UIListLayout")
 local BBE = Instance.new("TextButton")
 local BTC = Instance.new("TextButton")
 local BBN = Instance.new("TextButton")
 local BBD = Instance.new("TextButton")
 local BBH = Instance.new("TextButton")
 local TextLabel_5 = Instance.new("TextLabel")
 local BBHT = Instance.new("TextButton")
 local TextLabel_6 = Instance.new("TextLabel")
 local TextLabel_7 = Instance.new("TextLabel")
 local Frame_3 = Instance.new("Frame")
 local UIListLayout_3 = Instance.new("UIListLayout")
 local Box_R = Instance.new("TextBox")
 local Box_G = Instance.new("TextBox")
 local Box_B = Instance.new("TextBox")
 local TextLabel_8 = Instance.new("TextLabel")
 local ESPSection_2 = Instance.new("Frame")
 local UIListLayout_4 = Instance.new("UIListLayout")
 local OE = Instance.new("TextButton")
 local OTC = Instance.new("TextButton")-- Made By Mick Gordon
 local Frame_4 = Instance.new("Frame")
 local Slider1 = Instance.new("Frame")
 local UICorner_5 = Instance.new("UICorner")
 local Fill3 = Instance.new("Frame")
 local UICorner_6 = Instance.new("UICorner")
 local UIGradient_3 = Instance.new("UIGradient")
 local TriggerOutTans = Instance.new("TextButton")
 local Numbers_3 = Instance.new("TextLabel")
 local TextLabel_9 = Instance.new("TextLabel")
 local Frame_5 = Instance.new("Frame")
 local Slider2 = Instance.new("Frame")
 local UICorner_7 = Instance.new("UICorner")
 local Fill4 = Instance.new("Frame")
 local UICorner_8 = Instance.new("UICorner")
 local UIGradient_4 = Instance.new("UIGradient")
 local TriggerFill = Instance.new("TextButton")
 local Numbers_4 = Instance.new("TextLabel")
 local TextLabel_10 = Instance.new("TextLabel")
 local TextLabel_11 = Instance.new("TextLabel")
 local Frame_6 = Instance.new("Frame")
 local UIListLayout_5 = Instance.new("UIListLayout")
 local Outlines_R = Instance.new("TextBox")
 local Outlines_G = Instance.new("TextBox")
 local Outlines_B = Instance.new("TextBox")
 local TextLabel_12 = Instance.new("TextLabel")
 local Frame_7 = Instance.new("Frame")
 local UIListLayout_6 = Instance.new("UIListLayout")
 local FillOutlines_R = Instance.new("TextBox")
 local FillOutlines_G = Instance.new("TextBox")
 local FillOutlines_B = Instance.new("TextBox")
 local Tracerssection = Instance.new("Frame")
 local UIListLayout_7 = Instance.new("UIListLayout")
 local TE = Instance.new("TextButton")
 local TTC = Instance.new("TextButton")
 local TTCOlor = Instance.new("TextButton")
 local Frame_8 = Instance.new("Frame")
 local UIListLayout_8 = Instance.new("UIListLayout")
 local Tracers_R = Instance.new("TextBox")
 local Tracers_G = Instance.new("TextBox")
 local Tracers_B = Instance.new("TextBox")-- Made By Mick Gordon
 local Unknown = Instance.new("Frame")
 local UIListLayout_9 = Instance.new("UIListLayout")
 local TextLabel_13 = Instance.new("TextLabel")
 local TextLabel_14 = Instance.new("TextLabel")
 local Open = Instance.new("Frame")
 local TextButton = Instance.new("TextButton")
 
 --Properties:
 
 CheatEngineDeleteMob.Name = "CheatEngineDeleteMob"
 CheatEngineDeleteMob.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
 CheatEngineDeleteMob.Enabled = true
 CheatEngineDeleteMob.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 CheatEngineDeleteMob.DisplayOrder = 10
 CheatEngineDeleteMob.ResetOnSpawn = false
 -- Made By Mick Gordon
 DeleteMobF.Name = "DeleteMobF"
 DeleteMobF.Parent = CheatEngineDeleteMob
 DeleteMobF.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 DeleteMobF.BorderColor3 = Color3.fromRGB(255, 255, 255)
 DeleteMobF.Position = UDim2.new(0.144998878, 0, 0.328040659, 0)
 DeleteMobF.Size = UDim2.new(0, 1213, 0, 398)
 DeleteMobF.ZIndex = 10
 DeleteMobF.Draggable = true
 DeleteMobF.Active = true
 
 TextBox.Parent = DeleteMobF
 TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 TextBox.BackgroundTransparency = 1.000
 TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
 TextBox.BorderSizePixel = 0
 TextBox.Position = UDim2.new(0.791149139, 0, 0.0127403988, 0)
 TextBox.Size = UDim2.new(0, 200, 0, 23)
 TextBox.ClearTextOnFocus = false
 TextBox.Font = Enum.Font.Roboto
 TextBox.PlaceholderText = "https://discord.gg/FsApQ7YNTq"
 TextBox.Text = "https://discord.gg/FsApQ7YNTq - Double Click Me"
 TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
 TextBox.TextSize = 14.000
 
 Name.Name = "Name"
 Name.Parent = DeleteMobF
 Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 Name.BackgroundTransparency = 1.000
 Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
 Name.BorderSizePixel = 0
 Name.Position = UDim2.new(0.0178597774, 0, 0.00456260797, 0)
 Name.Size = UDim2.new(0, 200, 0, 31)
 Name.Font = Enum.Font.Gotham
 Name.Text = "DeleteMob | Cheat Engine"
 Name.TextColor3 = Color3.fromRGB(17, 223, 255)
 Name.TextSize = 19.000
 
 Line.Name = "Line"
 Line.Parent = DeleteMobF
 Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 Line.BorderColor3 = Color3.fromRGB(0, 0, 0)
 Line.BorderSizePixel = 0
 Line.Position = UDim2.new(0, 0, 0.0804020092, 0)
 Line.Size = UDim2.new(0, 1213, 0, 1)
 
 Line_2.Name = "Line"
 Line_2.Parent = DeleteMobF
 Line_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 Line_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
 Line_2.BorderSizePixel = 0
 Line_2.Position = UDim2.new(0.205276027, 0, 0.0828348249, 0)
 Line_2.Size = UDim2.new(0, 1, 0, 365)
 -- Made By Mick Gordon
 AimBotSection.Name = "AimBotSection"
 AimBotSection.Parent = DeleteMobF
 AimBotSection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 AimBotSection.BackgroundTransparency = 1.000
 AimBotSection.BorderColor3 = Color3.fromRGB(0, 0, 0)
 AimBotSection.BorderSizePixel = 0
 AimBotSection.Position = UDim2.new(0.0604648069, 0, 0.160724282, 0)
 AimBotSection.Size = UDim2.new(0, 100, 0, 334)
 
 UIListLayout.Parent = AimBotSection
 UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
 UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
 UIListLayout.Padding = UDim.new(0, 5)
 
 ABE.Name = "ABE"
 ABE.Parent = AimBotSection
 ABE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 ABE.BorderColor3 = Color3.fromRGB(255, 255, 255)
 ABE.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
 ABE.Size = UDim2.new(0, 164, 0, 29)
 ABE.Font = Enum.Font.Gotham
 ABE.Text = "Enable"
 ABE.TextColor3 = Color3.fromRGB(255, 255, 255)
 ABE.TextSize = 16.000
 
 ABWC.Name = "ABWC"
 ABWC.Parent = AimBotSection
 ABWC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 ABWC.BorderColor3 = Color3.fromRGB(255, 255, 255)
 ABWC.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
 ABWC.Size = UDim2.new(0, 164, 0, 29)
 ABWC.Font = Enum.Font.Gotham
 ABWC.Text = "Wall Check"
 ABWC.TextColor3 = Color3.fromRGB(255, 255, 255)
 ABWC.TextSize = 16.000
 
 ABTC.Name = "ABTC"
 ABTC.Parent = AimBotSection
 ABTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 ABTC.BorderColor3 = Color3.fromRGB(255, 255, 255)
 ABTC.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
 ABTC.Size = UDim2.new(0, 164, 0, 29)
 ABTC.Font = Enum.Font.Gotham
 ABTC.Text = "Team Check"
 ABTC.TextColor3 = Color3.fromRGB(255, 255, 255)
 ABTC.TextSize = 16.000
 
 ABSF.Name = "ABSF"
 ABSF.Parent = AimBotSection
 ABSF.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 ABSF.BorderColor3 = Color3.fromRGB(255, 255, 255)
 ABSF.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
 ABSF.Size = UDim2.new(0, 164, 0, 29)
 ABSF.Font = Enum.Font.Gotham
 ABSF.Text = "Show Fov"
 ABSF.TextColor3 = Color3.fromRGB(255, 255, 255)
 ABSF.TextSize = 16.000
 
 Frame.Parent = AimBotSection
 Frame.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 Frame.BackgroundTransparency = 0.700
 Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
 Frame.BorderSizePixel = 0
 Frame.Position = UDim2.new(-0.550000012, 0, 0.739130437, 0)
 Frame.Size = UDim2.new(0, 230, 0, 50)
 
 Slider3.Name = "Slider3"
 Slider3.Parent = Frame
 Slider3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 Slider3.BorderColor3 = Color3.fromRGB(0, 0, 0)
 Slider3.BorderSizePixel = 0
 Slider3.Position = UDim2.new(0.0629399866, 0, 0.45120728, 0)
 Slider3.Size = UDim2.new(0, 200, 0, 15)
 
 UICorner.Parent = Slider3
 
 Fill1.Name = "Fill1"
 Fill1.Parent = Slider3
 Fill1.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
 Fill1.BackgroundTransparency = 0.200
 Fill1.BorderColor3 = Color3.fromRGB(0, 0, 0)
 Fill1.BorderSizePixel = 0
 Fill1.Size = UDim2.new(0, 100, 0, 15)
 
 UICorner_2.Parent = Fill1
 
 UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.29, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.43, Color3.fromRGB(18, 218, 249)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(52, 52, 52))}
 UIGradient.Parent = Fill1
 -- Made By Mick Gordon
 TriggerFov.Name = "TriggerFov"
 TriggerFov.Parent = Slider3
 TriggerFov.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 TriggerFov.BackgroundTransparency = 1.000
 TriggerFov.BorderColor3 = Color3.fromRGB(0, 0, 0)
 TriggerFov.BorderSizePixel = 0
 TriggerFov.Size = UDim2.new(1, 0, 1, 0)
 TriggerFov.Font = Enum.Font.SourceSans
 TriggerFov.Text = ""
 TriggerFov.TextColor3 = Color3.fromRGB(0, 0, 0)
 TriggerFov.TextSize = 14.000
 
 Numbers.Name = "Numbers"
 Numbers.Parent = Frame
 Numbers.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 Numbers.BackgroundTransparency = 1.000
 Numbers.BorderColor3 = Color3.fromRGB(255, 255, 255)
 Numbers.BorderSizePixel = 0
 Numbers.Position = UDim2.new(0.79130435, 0, 0, 0)
 Numbers.Size = UDim2.new(0, 50, 0, 23)
 Numbers.Font = Enum.Font.Gotham
 Numbers.Text = "350"
 Numbers.TextColor3 = Color3.fromRGB(255, 255, 255)
 Numbers.TextSize = 14.000
 
 TextLabel.Parent = Frame
 TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 TextLabel.BackgroundTransparency = 1.000
 TextLabel.BorderColor3 = Color3.fromRGB(255, 255, 255)
 TextLabel.BorderSizePixel = 0
 TextLabel.Position = UDim2.new(0.0608695634, 0, 0, 0)
 TextLabel.Size = UDim2.new(0, 50, 0, 23)
 TextLabel.Font = Enum.Font.Gotham
 TextLabel.Text = "Fov"
 TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
 TextLabel.TextSize = 14.000
 
 Frame_2.Parent = AimBotSection
 Frame_2.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 Frame_2.BackgroundTransparency = 0.700
 Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
 Frame_2.BorderSizePixel = 0
 Frame_2.Position = UDim2.new(-0.550000012, 0, 0.739130437, 0)
 Frame_2.Size = UDim2.new(0, 230, 0, 50)
 
 Slider4.Name = "Slider4"
 Slider4.Parent = Frame_2
 Slider4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 Slider4.BorderColor3 = Color3.fromRGB(0, 0, 0)
 Slider4.BorderSizePixel = 0
 Slider4.Position = UDim2.new(0.0629399866, 0, 0.45120728, 0)
 Slider4.Size = UDim2.new(0, 200, 0, 15)
 
 UICorner_3.Parent = Slider4
 
 Fill2.Name = "Fill2"
 Fill2.Parent = Slider4
 Fill2.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
 Fill2.BackgroundTransparency = 0.200
 Fill2.BorderColor3 = Color3.fromRGB(0, 0, 0)
 Fill2.BorderSizePixel = 0
 Fill2.Size = UDim2.new(0, 0, 0, 15)
 
 UICorner_4.Parent = Fill2
 
 UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.29, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.43, Color3.fromRGB(18, 218, 249)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(52, 52, 52))}-- Made By Mick Gordon
 UIGradient_2.Parent = Fill2
 
 TriggerSmoothing.Name = "TriggerSmoothing"
 TriggerSmoothing.Parent = Slider4
 TriggerSmoothing.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 TriggerSmoothing.BackgroundTransparency = 1.000
 TriggerSmoothing.BorderColor3 = Color3.fromRGB(0, 0, 0)
 TriggerSmoothing.BorderSizePixel = 0
 TriggerSmoothing.Size = UDim2.new(1, 0, 1, 0)
 TriggerSmoothing.Font = Enum.Font.SourceSans
 TriggerSmoothing.Text = ""
 TriggerSmoothing.TextColor3 = Color3.fromRGB(0, 0, 0)
 TriggerSmoothing.TextSize = 14.000
 -- Made By Mick Gordon
 Numbers_2.Name = "Numbers"
 Numbers_2.Parent = Frame_2
 Numbers_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 Numbers_2.BackgroundTransparency = 1.000
 Numbers_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
 Numbers_2.BorderSizePixel = 0
 Numbers_2.Position = UDim2.new(0.79130435, 0, 0, 0)
 Numbers_2.Size = UDim2.new(0, 50, 0, 23)
 Numbers_2.Font = Enum.Font.Gotham
 Numbers_2.Text = "0"
 Numbers_2.TextColor3 = Color3.fromRGB(255, 255, 255)
 Numbers_2.TextSize = 14.000
 
 TextLabel_2.Parent = Frame_2
 TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 TextLabel_2.BackgroundTransparency = 1.000
 TextLabel_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
 TextLabel_2.BorderSizePixel = 0
 TextLabel_2.Position = UDim2.new(0.0608695634, 0, 0, 0)
 TextLabel_2.Size = UDim2.new(0, 50, 0, 23)
 TextLabel_2.Font = Enum.Font.Gotham
 TextLabel_2.Text = "Smoothing"
 TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
 TextLabel_2.TextSize = 14.000
 
 TextLabel_3.Parent = AimBotSection
 TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 TextLabel_3.BackgroundTransparency = 1.000
 TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
 TextLabel_3.BorderSizePixel = 0
 TextLabel_3.Position = UDim2.new(0.0700000003, 0, 0.20869565, 0)
 TextLabel_3.Size = UDim2.new(0, 100, 0, 17)
 TextLabel_3.Font = Enum.Font.Gotham
 TextLabel_3.Text = "Aim Part"
 TextLabel_3.TextColor3 = Color3.fromRGB(17, 223, 255)
 TextLabel_3.TextSize = 21.000
 
 Allways_Show.Name = "Allways_Show"
 Allways_Show.Parent = AimBotSection
 Allways_Show.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 Allways_Show.BorderColor3 = Color3.fromRGB(255, 255, 255)
 Allways_Show.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
 Allways_Show.Size = UDim2.new(0, 164, 0, 29)
 Allways_Show.Font = Enum.Font.Gotham
 Allways_Show.Text = "HEAD, torso"
 Allways_Show.TextColor3 = Color3.fromRGB(255, 255, 255)
 Allways_Show.TextSize = 16.000
 
 TextLabel_4.Parent = DeleteMobF
 TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 TextLabel_4.BackgroundTransparency = 1.000
 TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
 TextLabel_4.BorderSizePixel = 0
 TextLabel_4.Position = UDim2.new(0.00569662312, 0, 0.100655407, 0)
 TextLabel_4.Size = UDim2.new(0, 100, 0, 17)
 TextLabel_4.Font = Enum.Font.Gotham
 TextLabel_4.Text = "Aim Bot"
 TextLabel_4.TextColor3 = Color3.fromRGB(17, 223, 255)
 TextLabel_4.TextSize = 18.000
 TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left
 
 ESPSection.Name = "ESPSection"
 ESPSection.Parent = DeleteMobF
 ESPSection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 ESPSection.BackgroundTransparency = 1.000
 ESPSection.BorderColor3 = Color3.fromRGB(0, 0, 0)
 ESPSection.BorderSizePixel = 0
 ESPSection.Position = UDim2.new(0.26986298, 0, 0.160724282, 0)
 ESPSection.Size = UDim2.new(0, 100, 0, 334)
 -- Made By Mick Gordon
 UIListLayout_2.Parent = ESPSection
 UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
 UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
 UIListLayout_2.Padding = UDim.new(0, 5)
 
 BBE.Name = "BBE"
 BBE.Parent = ESPSection
 BBE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 BBE.BorderColor3 = Color3.fromRGB(255, 255, 255)
 BBE.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
 BBE.Size = UDim2.new(0, 164, 0, 29)
 BBE.Font = Enum.Font.Gotham
 BBE.Text = "Box"
 BBE.TextColor3 = Color3.fromRGB(255, 255, 255)
 BBE.TextSize = 16.000
 
 BBN.Name = "BBN"
 BBN.Parent = ESPSection
 BBN.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 BBN.BorderColor3 = Color3.fromRGB(255, 255, 255)
 BBN.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
 BBN.Size = UDim2.new(0, 164, 0, 29)
 BBN.Font = Enum.Font.Gotham
 BBN.Text = "Name"
 BBN.TextColor3 = Color3.fromRGB(255, 255, 255)
 BBN.TextSize = 16.000
 -- Made By Mick Gordon
 BBD.Name = "BBD"
 BBD.Parent = ESPSection
 BBD.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 BBD.BorderColor3 = Color3.fromRGB(255, 255, 255)
 BBD.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
 BBD.Size = UDim2.new(0, 164, 0, 29)
 BBD.Font = Enum.Font.Gotham
 BBD.Text = "Distance"
 BBD.TextColor3 = Color3.fromRGB(255, 255, 255)
 BBD.TextSize = 16.000
 
 BBH.Name = "BBH"
 BBH.Parent = ESPSection
 BBH.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 BBH.BorderColor3 = Color3.fromRGB(255, 255, 255)
 BBH.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
 BBH.Size = UDim2.new(0, 164, 0, 29)
 BBH.Font = Enum.Font.Gotham
 BBH.Text = "Health"
 BBH.TextColor3 = Color3.fromRGB(255, 255, 255)
 BBH.TextSize = 16.000
 
 BTC.Name = "BBE"
 BTC.Parent = ESPSection
 BTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 BTC.BorderColor3 = Color3.fromRGB(255, 255, 255)
 BTC.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
 BTC.Size = UDim2.new(0, 164, 0, 29)
 BTC.Font = Enum.Font.Gotham
 BTC.Text = "Team Check"
 BTC.TextColor3 = Color3.fromRGB(255, 255, 255)
 BTC.TextSize = 16.000
 
 TextLabel_5.Parent = ESPSection
 TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 TextLabel_5.BackgroundTransparency = 1.000
 TextLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
 TextLabel_5.BorderSizePixel = 0
 TextLabel_5.Position = UDim2.new(0.0700000003, 0, 0.20869565, 0)
 TextLabel_5.Size = UDim2.new(0, 100, 0, 17)
 TextLabel_5.Font = Enum.Font.Gotham
 TextLabel_5.Text = "Health Type"
 TextLabel_5.TextColor3 = Color3.fromRGB(17, 223, 255)
 TextLabel_5.TextSize = 21.000
 -- Made By Mick Gordon
 BBHT.Name = "BBHT"
 BBHT.Parent = ESPSection
 BBHT.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 BBHT.BorderColor3 = Color3.fromRGB(255, 255, 255)
 BBHT.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
 BBHT.Size = UDim2.new(0, 164, 0, 29)
 BBHT.Font = Enum.Font.Gotham
 BBHT.Text = "BAR, text, both"
 BBHT.TextColor3 = Color3.fromRGB(255, 255, 255)
 BBHT.TextSize = 16.000
 
 TextLabel_6.Parent = ESPSection
 TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 TextLabel_6.BackgroundTransparency = 1.000
 TextLabel_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
 TextLabel_6.BorderSizePixel = 0-- Made By Mick Gordon
 TextLabel_6.Position = UDim2.new(0.0700000003, 0, 0.20869565, 0)
 TextLabel_6.Size = UDim2.new(0, 100, 0, 17)
 TextLabel_6.Font = Enum.Font.Gotham
 TextLabel_6.Text = "Box Color"
 TextLabel_6.TextColor3 = Color3.fromRGB(17, 223, 255)
 TextLabel_6.TextSize = 21.000
 
 TextLabel_7.Parent = ESPSection
 TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 TextLabel_7.BackgroundTransparency = 1.000
 TextLabel_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
 TextLabel_7.BorderSizePixel = 0
 TextLabel_7.Position = UDim2.new(0.0700000003, 0, 0.20869565, 0)
 TextLabel_7.Size = UDim2.new(0, 100, 0, 17)
 TextLabel_7.Font = Enum.Font.Gotham
 TextLabel_7.Text = "R,G,B"
 TextLabel_7.TextColor3 = Color3.fromRGB(17, 223, 255)
 TextLabel_7.TextSize = 21.000
 
 Frame_3.Parent = ESPSection
 Frame_3.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 Frame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
 Frame_3.BorderSizePixel = 0
 Frame_3.Position = UDim2.new(0.0909090936, 0, 0.600000739, 0)
 Frame_3.Size = UDim2.new(0, 100, 0, 30)
 
 UIListLayout_3.Parent = Frame_3
 UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
 UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
 UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
 UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Center
 UIListLayout_3.Padding = UDim.new(0, 5)
 
 Box_R.Name = "Box_R"
 Box_R.Parent = Frame_3
 Box_R.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 Box_R.BorderColor3 = Color3.fromRGB(255, 255, 255)
 Box_R.Size = UDim2.new(0, 75, 0, 24)
 Box_R.ClearTextOnFocus = false
 Box_R.Font = Enum.Font.Gotham
 Box_R.PlaceholderText = "255 - 0"
 Box_R.Text = "75"
 Box_R.TextColor3 = Color3.fromRGB(255, 255, 255)
 Box_R.TextSize = 14.000
 
 Box_G.Name = "Box_G"
 Box_G.Parent = Frame_3
 Box_G.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 Box_G.BorderColor3 = Color3.fromRGB(255, 255, 255)
 Box_G.Size = UDim2.new(0, 75, 0, 24)
 Box_G.ClearTextOnFocus = false
 Box_G.Font = Enum.Font.Gotham
 Box_G.PlaceholderText = "255 - 0"
 Box_G.Text = "0" 
 Box_G.TextColor3 = Color3.fromRGB(255, 255, 255)
 Box_G.TextSize = 14.000
 -- Made By Mick Gordon
 Box_B.Name = "Box_B"
 Box_B.Parent = Frame_3
 Box_B.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 Box_B.BorderColor3 = Color3.fromRGB(255, 255, 255)
 Box_B.Size = UDim2.new(0, 75, 0, 24)
 Box_B.ClearTextOnFocus = false
 Box_B.Font = Enum.Font.Gotham
 Box_B.PlaceholderText = "255 - 0"
 Box_B.Text = "10"
 Box_B.TextColor3 = Color3.fromRGB(255, 255, 255)
 Box_B.TextSize = 14.000
 
 TextLabel_8.Parent = DeleteMobF
 TextLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 TextLabel_8.BackgroundTransparency = 1.000
 TextLabel_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
 TextLabel_8.BorderSizePixel = 0
 TextLabel_8.Position = UDim2.new(0.215919182, 0, 0.100655407, 0)
 TextLabel_8.Size = UDim2.new(0, 100, 0, 17)
 TextLabel_8.Font = Enum.Font.Gotham
 TextLabel_8.Text = "ESP"
 TextLabel_8.TextColor3 = Color3.fromRGB(17, 223, 255)
 TextLabel_8.TextSize = 18.000
 TextLabel_8.TextXAlignment = Enum.TextXAlignment.Left
 
 ESPSection_2.Name = "ESPSection"
 ESPSection_2.Parent = DeleteMobF
 ESPSection_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 ESPSection_2.BackgroundTransparency = 1.000
 ESPSection_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
 ESPSection_2.BorderSizePixel = 0
 ESPSection_2.Position = UDim2.new(0.475963563, 0, 0.160724282, 0)
 ESPSection_2.Size = UDim2.new(0, 100, 0, 334)
 
 UIListLayout_4.Parent = ESPSection_2
 UIListLayout_4.HorizontalAlignment = Enum.HorizontalAlignment.Center
 UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
 UIListLayout_4.Padding = UDim.new(0, 5)
 
 OE.Name = "OE"
 OE.Parent = ESPSection_2
 OE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 OE.BorderColor3 = Color3.fromRGB(255, 255, 255)
 OE.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
 OE.Size = UDim2.new(0, 164, 0, 29)
 OE.Font = Enum.Font.Gotham
 OE.Text = "Outlines"
 OE.TextColor3 = Color3.fromRGB(255, 255, 255)
 OE.TextSize = 16.000
 
 OTC.Name = "OTC"
 OTC.Parent = ESPSection_2
 OTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 OTC.BorderColor3 = Color3.fromRGB(255, 255, 255)
 OTC.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
 OTC.Size = UDim2.new(0, 164, 0, 29)
 OTC.Font = Enum.Font.Gotham
 OTC.Text = "Team Check"
 OTC.TextColor3 = Color3.fromRGB(255, 255, 255)
 OTC.TextSize = 16.000
 
 Frame_4.Parent = ESPSection_2
 Frame_4.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 Frame_4.BackgroundTransparency = 0.700
 Frame_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
 Frame_4.BorderSizePixel = 0
 Frame_4.Position = UDim2.new(-0.550000012, 0, 0.739130437, 0)
 Frame_4.Size = UDim2.new(0, 230, 0, 50)
 
 Slider1.Name = "Slider1"
 Slider1.Parent = Frame_4
 Slider1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 Slider1.BorderColor3 = Color3.fromRGB(0, 0, 0)
 Slider1.BorderSizePixel = 0
 Slider1.Position = UDim2.new(0.0629399866, 0, 0.45120728, 0)
 Slider1.Size = UDim2.new(0, 200, 0, 15)
 
 UICorner_5.Parent = Slider1
 
 Fill3.Name = "Fill3"
 Fill3.Parent = Slider1
 Fill3.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
 Fill3.BackgroundTransparency = 0.200
 Fill3.BorderColor3 = Color3.fromRGB(0, 0, 0)
 Fill3.BorderSizePixel = 0
 Fill3.Size = UDim2.new(0, 100, 0, 15)
 -- Made By Mick Gordon
 UICorner_6.Parent = Fill3
 
 UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.29, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.43, Color3.fromRGB(18, 218, 249)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(52, 52, 52))}
 UIGradient_3.Parent = Fill3
 
 TriggerOutTans.Name = "TriggerOutTans"
 TriggerOutTans.Parent = Slider1
 TriggerOutTans.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 TriggerOutTans.BackgroundTransparency = 1.000
 TriggerOutTans.BorderColor3 = Color3.fromRGB(0, 0, 0)
 TriggerOutTans.BorderSizePixel = 0
 TriggerOutTans.Size = UDim2.new(1, 0, 1, 0)
 TriggerOutTans.Font = Enum.Font.SourceSans
 TriggerOutTans.Text = ""
 TriggerOutTans.TextColor3 = Color3.fromRGB(0, 0, 0)
 TriggerOutTans.TextSize = 14.000
 
 Numbers_3.Name = "Numbers"
 Numbers_3.Parent = Frame_4
 Numbers_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 Numbers_3.BackgroundTransparency = 1.000
 Numbers_3.BorderColor3 = Color3.fromRGB(255, 255, 255)
 Numbers_3.BorderSizePixel = 0
 Numbers_3.Position = UDim2.new(0.79130435, 0, 0, 0)
 Numbers_3.Size = UDim2.new(0, 50, 0, 23)
 Numbers_3.Font = Enum.Font.Gotham
 Numbers_3.Text = "50"
 Numbers_3.TextColor3 = Color3.fromRGB(255, 255, 255)
 Numbers_3.TextSize = 14.000
 
 TextLabel_9.Parent = Frame_4
 TextLabel_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 TextLabel_9.BackgroundTransparency = 1.000
 TextLabel_9.BorderColor3 = Color3.fromRGB(255, 255, 255)
 TextLabel_9.BorderSizePixel = 0
 TextLabel_9.Position = UDim2.new(0.0608695634, 0, 0, 0)
 TextLabel_9.Size = UDim2.new(0, 125, 0, 23)
 TextLabel_9.Font = Enum.Font.Gotham
 TextLabel_9.Text = "Outlines Transparency"
 TextLabel_9.TextColor3 = Color3.fromRGB(255, 255, 255)
 TextLabel_9.TextSize = 14.000
 
 Frame_5.Parent = ESPSection_2
 Frame_5.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 Frame_5.BackgroundTransparency = 0.700
 Frame_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
 Frame_5.BorderSizePixel = 0
 Frame_5.Position = UDim2.new(-0.550000012, 0, 0.739130437, 0)
 Frame_5.Size = UDim2.new(0, 230, 0, 50)
 
 Slider2.Name = "Slider2"
 Slider2.Parent = Frame_5
 Slider2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 Slider2.BorderColor3 = Color3.fromRGB(0, 0, 0)
 Slider2.BorderSizePixel = 0
 Slider2.Position = UDim2.new(0.0629399866, 0, 0.45120728, 0)
 Slider2.Size = UDim2.new(0, 200, 0, 15)
 
 UICorner_7.Parent = Slider2
 
 Fill4.Name = "Fill4"
 Fill4.Parent = Slider2
 Fill4.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
 Fill4.BackgroundTransparency = 0.200
 Fill4.BorderColor3 = Color3.fromRGB(0, 0, 0)
 Fill4.BorderSizePixel = 0
 Fill4.Size = UDim2.new(0, 100, 0, 15)
 -- Made By Mick Gordon
 UICorner_8.Parent = Fill4
 
 UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.29, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.43, Color3.fromRGB(18, 218, 249)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(52, 52, 52))}
 UIGradient_4.Parent = Fill4
 
 TriggerFill.Name = "TriggerFill"
 TriggerFill.Parent = Slider2
 TriggerFill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 TriggerFill.BackgroundTransparency = 1.000
 TriggerFill.BorderColor3 = Color3.fromRGB(0, 0, 0)
 TriggerFill.BorderSizePixel = 0
 TriggerFill.Size = UDim2.new(1, 0, 1, 0)
 TriggerFill.Font = Enum.Font.SourceSans
 TriggerFill.Text = ""
 TriggerFill.TextColor3 = Color3.fromRGB(0, 0, 0)
 TriggerFill.TextSize = 14.000
 
 Numbers_4.Name = "Numbers"
 Numbers_4.Parent = Frame_5
 Numbers_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 Numbers_4.BackgroundTransparency = 1.000
 Numbers_4.BorderColor3 = Color3.fromRGB(255, 255, 255)
 Numbers_4.BorderSizePixel = 0
 Numbers_4.Position = UDim2.new(0.79130435, 0, 0, 0)
 Numbers_4.Size = UDim2.new(0, 50, 0, 23)
 Numbers_4.Font = Enum.Font.Gotham
 Numbers_4.Text = "50"
 Numbers_4.TextColor3 = Color3.fromRGB(255, 255, 255)
 Numbers_4.TextSize = 14.000
 
 TextLabel_10.Parent = Frame_5
 TextLabel_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 TextLabel_10.BackgroundTransparency = 1.000
 TextLabel_10.BorderColor3 = Color3.fromRGB(255, 255, 255)
 TextLabel_10.BorderSizePixel = 0
 TextLabel_10.Position = UDim2.new(0.104347825, 0, 0, 0)
 TextLabel_10.Size = UDim2.new(0, 133, 0, 23)
 TextLabel_10.Font = Enum.Font.Gotham
 TextLabel_10.Text = "Fill Outlines Transparency"
 TextLabel_10.TextColor3 = Color3.fromRGB(255, 255, 255)
 TextLabel_10.TextSize = 14.000
 -- Made By Mick Gordon
 TextLabel_11.Parent = ESPSection_2
 TextLabel_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 TextLabel_11.BackgroundTransparency = 1.000
 TextLabel_11.BorderColor3 = Color3.fromRGB(0, 0, 0)
 TextLabel_11.BorderSizePixel = 0
 TextLabel_11.Position = UDim2.new(0.0700000003, 0, 0.20869565, 0)
 TextLabel_11.Size = UDim2.new(0, 100, 0, 17)
 TextLabel_11.Font = Enum.Font.Gotham
 TextLabel_11.Text = "Outlines"
 TextLabel_11.TextColor3 = Color3.fromRGB(17, 223, 255)
 TextLabel_11.TextSize = 21.000
 
 Frame_6.Parent = ESPSection_2
 Frame_6.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 Frame_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
 Frame_6.BorderSizePixel = 0
 Frame_6.Position = UDim2.new(0.0909090936, 0, 0.600000739, 0)
 Frame_6.Size = UDim2.new(0, 100, 0, 30)
 
 UIListLayout_5.Parent = Frame_6
 UIListLayout_5.FillDirection = Enum.FillDirection.Horizontal
 UIListLayout_5.HorizontalAlignment = Enum.HorizontalAlignment.Center
 UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
 UIListLayout_5.VerticalAlignment = Enum.VerticalAlignment.Center
 UIListLayout_5.Padding = UDim.new(0, 5)
 
 Outlines_R.Name = "Outlines_R"
 Outlines_R.Parent = Frame_6
 Outlines_R.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 Outlines_R.BorderColor3 = Color3.fromRGB(255, 255, 255)
 Outlines_R.Size = UDim2.new(0, 75, 0, 24)
 Outlines_R.ClearTextOnFocus = false
 Outlines_R.Font = Enum.Font.Gotham
 Outlines_R.PlaceholderText = "255 - 0"
 Outlines_R.Text = "255"
 Outlines_R.TextColor3 = Color3.fromRGB(255, 255, 255)
 Outlines_R.TextSize = 14.000
 
 Outlines_G.Name = "Outlines_G"
 Outlines_G.Parent = Frame_6
 Outlines_G.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 Outlines_G.BorderColor3 = Color3.fromRGB(255, 255, 255)
 Outlines_G.Size = UDim2.new(0, 75, 0, 24)
 Outlines_G.ClearTextOnFocus = false
 Outlines_G.Font = Enum.Font.Gotham
 Outlines_G.PlaceholderText = "255 - 0"
 Outlines_G.Text = "255"
 Outlines_G.TextColor3 = Color3.fromRGB(255, 255, 255)
 Outlines_G.TextSize = 14.000
 
 Outlines_B.Name = "Outlines_B"
 Outlines_B.Parent = Frame_6
 Outlines_B.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 Outlines_B.BorderColor3 = Color3.fromRGB(255, 255, 255)
 Outlines_B.Size = UDim2.new(0, 75, 0, 24)
 Outlines_B.ClearTextOnFocus = false
 Outlines_B.Font = Enum.Font.Gotham
 Outlines_B.PlaceholderText = "255 - 0"
 Outlines_B.Text = "255"
 Outlines_B.TextColor3 = Color3.fromRGB(255, 255, 255)
 Outlines_B.TextSize = 14.000
 -- Made By Mick Gordon
 TextLabel_12.Parent = ESPSection_2
 TextLabel_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 TextLabel_12.BackgroundTransparency = 1.000
 TextLabel_12.BorderColor3 = Color3.fromRGB(0, 0, 0)
 TextLabel_12.BorderSizePixel = 0
 TextLabel_12.Position = UDim2.new(0.0700000003, 0, 0.20869565, 0)
 TextLabel_12.Size = UDim2.new(0, 100, 0, 17)
 TextLabel_12.Font = Enum.Font.Gotham
 TextLabel_12.Text = "Fill Outlines"
 TextLabel_12.TextColor3 = Color3.fromRGB(17, 223, 255)
 TextLabel_12.TextSize = 21.000
 
 Frame_7.Parent = ESPSection_2
 Frame_7.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 Frame_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
 Frame_7.BorderSizePixel = 0
 Frame_7.Position = UDim2.new(0.0909090936, 0, 0.600000739, 0)
 Frame_7.Size = UDim2.new(0, 100, 0, 30)
 
 UIListLayout_6.Parent = Frame_7
 UIListLayout_6.FillDirection = Enum.FillDirection.Horizontal
 UIListLayout_6.HorizontalAlignment = Enum.HorizontalAlignment.Center
 UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
 UIListLayout_6.VerticalAlignment = Enum.VerticalAlignment.Center
 UIListLayout_6.Padding = UDim.new(0, 5)
 
 FillOutlines_R.Name = "FillOutlines_R"
 FillOutlines_R.Parent = Frame_7
 FillOutlines_R.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 FillOutlines_R.BorderColor3 = Color3.fromRGB(255, 255, 255)
 FillOutlines_R.Size = UDim2.new(0, 75, 0, 24)
 FillOutlines_R.ClearTextOnFocus = false
 FillOutlines_R.Font = Enum.Font.Gotham
 FillOutlines_R.PlaceholderText = "255 - 0"
 FillOutlines_R.Text = "255"
 FillOutlines_R.TextColor3 = Color3.fromRGB(255, 255, 255)
 FillOutlines_R.TextSize = 14.000
 
 FillOutlines_G.Name = "FillOutlines_G"
 FillOutlines_G.Parent = Frame_7
 FillOutlines_G.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 FillOutlines_G.BorderColor3 = Color3.fromRGB(255, 255, 255)
 FillOutlines_G.Size = UDim2.new(0, 75, 0, 24)
 FillOutlines_G.ClearTextOnFocus = false
 FillOutlines_G.Font = Enum.Font.Gotham
 FillOutlines_G.PlaceholderText = "255 - 0"
 FillOutlines_G.Text = "255"
 FillOutlines_G.TextColor3 = Color3.fromRGB(255, 255, 255)
 FillOutlines_G.TextSize = 14.000
 
 FillOutlines_B.Name = "FillOutlines_B"
 FillOutlines_B.Parent = Frame_7
 FillOutlines_B.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 FillOutlines_B.BorderColor3 = Color3.fromRGB(255, 255, 255)
 FillOutlines_B.Size = UDim2.new(0, 75, 0, 24)
 FillOutlines_B.ClearTextOnFocus = false
 FillOutlines_B.Font = Enum.Font.Gotham
 FillOutlines_B.PlaceholderText = "255 - 0"
 FillOutlines_B.Text = "255"
 FillOutlines_B.TextColor3 = Color3.fromRGB(255, 255, 255)
 FillOutlines_B.TextSize = 14.000
 -- Made By Mick Gordon
 Tracerssection.Name = "Tracers section"
 Tracerssection.Parent = DeleteMobF
 Tracerssection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 Tracerssection.BackgroundTransparency = 1.000
 Tracerssection.BorderColor3 = Color3.fromRGB(0, 0, 0)
 Tracerssection.BorderSizePixel = 0
 Tracerssection.Position = UDim2.new(0.682779849, 0, 0.158000082, 0)
 Tracerssection.Size = UDim2.new(0, 100, 0, 334)
 
 UIListLayout_7.Parent = Tracerssection
 UIListLayout_7.HorizontalAlignment = Enum.HorizontalAlignment.Center
 UIListLayout_7.SortOrder = Enum.SortOrder.LayoutOrder
 UIListLayout_7.Padding = UDim.new(0, 5)
 
 TE.Name = "TE"
 TE.Parent = Tracerssection
 TE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 TE.BorderColor3 = Color3.fromRGB(255, 255, 255)
 TE.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
 TE.Size = UDim2.new(0, 164, 0, 29)
 TE.Font = Enum.Font.Gotham
 TE.Text = "Tracers"
 TE.TextColor3 = Color3.fromRGB(255, 255, 255)
 TE.TextSize = 16.000
 
 TTC.Name = "TTC"
 TTC.Parent = Tracerssection
 TTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 TTC.BorderColor3 = Color3.fromRGB(255, 255, 255)
 TTC.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
 TTC.Size = UDim2.new(0, 164, 0, 29)
 TTC.Font = Enum.Font.Gotham
 TTC.Text = "Team Check"
 TTC.TextColor3 = Color3.fromRGB(255, 255, 255)
 TTC.TextSize = 16.000
 
 TTCOlor.Name = "TTCOlor"
 TTCOlor.Parent = Tracerssection
 TTCOlor.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 TTCOlor.BorderColor3 = Color3.fromRGB(255, 255, 255)
 TTCOlor.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
 TTCOlor.Size = UDim2.new(0, 164, 0, 29)
 TTCOlor.Font = Enum.Font.Gotham
 TTCOlor.Text = "Team Color"
 TTCOlor.TextColor3 = Color3.fromRGB(255, 255, 255)
 TTCOlor.TextSize = 16.000
 
 Frame_8.Parent = Tracerssection
 Frame_8.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 Frame_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
 Frame_8.BorderSizePixel = 0
 Frame_8.Position = UDim2.new(0.0909090936, 0, 0.600000739, 0)
 Frame_8.Size = UDim2.new(0, 100, 0, 40)
 
 UIListLayout_8.Parent = Frame_8
 UIListLayout_8.FillDirection = Enum.FillDirection.Horizontal
 UIListLayout_8.HorizontalAlignment = Enum.HorizontalAlignment.Center
 UIListLayout_8.SortOrder = Enum.SortOrder.LayoutOrder
 UIListLayout_8.VerticalAlignment = Enum.VerticalAlignment.Center
 UIListLayout_8.Padding = UDim.new(0, 5)
 
 Tracers_R.Name = "Tracers_R"
 Tracers_R.Parent = Frame_8
 Tracers_R.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 Tracers_R.BorderColor3 = Color3.fromRGB(255, 255, 255)
 Tracers_R.Size = UDim2.new(0, 75, 0, 24)
 Tracers_R.ClearTextOnFocus = false
 Tracers_R.Font = Enum.Font.Gotham
 Tracers_R.PlaceholderText = "255 - 0"
 Tracers_R.Text = "75" 
 Tracers_R.TextColor3 = Color3.fromRGB(255, 255, 255)
 Tracers_R.TextSize = 14.000
 
 Tracers_G.Name = "Tracers_G"
 Tracers_G.Parent = Frame_8
 Tracers_G.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 Tracers_G.BorderColor3 = Color3.fromRGB(255, 255, 255)
 Tracers_G.Size = UDim2.new(0, 75, 0, 24)
 Tracers_G.ClearTextOnFocus = false
 Tracers_G.Font = Enum.Font.Gotham
 Tracers_G.PlaceholderText = "255 - 0"
 Tracers_G.Text = "0"
 Tracers_G.TextColor3 = Color3.fromRGB(255, 255, 255)
 Tracers_G.TextSize = 14.000
 
 Tracers_B.Name = "Tracers_B"
 Tracers_B.Parent = Frame_8
 Tracers_B.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
 Tracers_B.BorderColor3 = Color3.fromRGB(255, 255, 255)
 Tracers_B.Size = UDim2.new(0, 75, 0, 24)
 Tracers_B.ClearTextOnFocus = false
 Tracers_B.Font = Enum.Font.Gotham
 Tracers_B.PlaceholderText = "255 - 0"
 Tracers_B.Text = "10"
 Tracers_B.TextColor3 = Color3.fromRGB(255, 255, 255)
 Tracers_B.TextSize = 14.000
 -- Made By Mick Gordon
 Unknown.Name = "Unknown"
 Unknown.Parent = DeleteMobF
 Unknown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 Unknown.BackgroundTransparency = 1.000
 Unknown.BorderColor3 = Color3.fromRGB(0, 0, 0)
 Unknown.BorderSizePixel = 0
 Unknown.Position = UDim2.new(0.882285178, 0, 0.158000082, 0)
 Unknown.Size = UDim2.new(0, 100, 0, 334)
 
 UIListLayout_9.Parent = Unknown
 UIListLayout_9.HorizontalAlignment = Enum.HorizontalAlignment.Center
 UIListLayout_9.SortOrder = Enum.SortOrder.LayoutOrder
 UIListLayout_9.Padding = UDim.new(0, 5)
 
 TextLabel_13.Parent = Unknown
 TextLabel_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 TextLabel_13.BackgroundTransparency = 1.000
 TextLabel_13.BorderColor3 = Color3.fromRGB(0, 0, 0)
 TextLabel_13.BorderSizePixel = 0
 TextLabel_13.Position = UDim2.new(0.0700000003, 0, 0.20869565, 0)
 TextLabel_13.Size = UDim2.new(0, 100, 0, 17)
 TextLabel_13.Font = Enum.Font.Gotham
 TextLabel_13.Text = "More Options"
 TextLabel_13.TextColor3 = Color3.fromRGB(17, 223, 255)
 TextLabel_13.TextSize = 21.000
 
 TextLabel_14.Parent = Unknown
 TextLabel_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 TextLabel_14.BackgroundTransparency = 1.000
 TextLabel_14.BorderColor3 = Color3.fromRGB(0, 0, 0)
 TextLabel_14.BorderSizePixel = 0
 TextLabel_14.Position = UDim2.new(0.215919182, 0, 0.100655407, 0)
 TextLabel_14.Size = UDim2.new(0, 100, 0, 17)
 TextLabel_14.Font = Enum.Font.Gotham
 TextLabel_14.Text = "Later"
 TextLabel_14.TextColor3 = Color3.fromRGB(17, 223, 255)
 TextLabel_14.TextSize = 18.000
 
 Open.Name = "Open"
 Open.Parent = CheatEngineDeleteMob
 Open.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
 Open.BorderColor3 = Color3.fromRGB(255, 255, 255)
 Open.Position = UDim2.new(0.5, 0, 0.0199999996, 0)
 Open.Size = UDim2.new(0, 150, 0, 50)
 Open.ZIndex = 10
 Open.Visible = DeleteMob.GUi.OpenNCloseButton
 Open.Draggable = true
 Open.Active = true
 
 TextButton.Parent = Open
 TextButton.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
 TextButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
 TextButton.Position = UDim2.new(0, 0, 0.319999933, 0)
 TextButton.Size = UDim2.new(0, 150, 0, 34)
 TextButton.Font = Enum.Font.Gotham
 TextButton.Text = "open / Close"
 TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
 TextButton.TextSize = 14.000
 
 PLAYER:GetMouse().KeyDown:Connect(function(KeyPressed) -- What The Fuck
	 if KeyPressed == (DeleteMob.GUi.Keybind) and DeleteMob.GUi.KeybindEnable then
		 if DeleteMobF.Visible == true then
			 DeleteMobF.Visible = false
		 else
			 DeleteMobF.Visible = true
		 end
	 end
	 if KeyPressed == (DeleteMob.Aimbot.Keybind) and DeleteMob.Aimbot.Enabled then
		 DeleteMob.Aimbot.IsAimKeyDown = true
	 end
 end)
 PLAYER:GetMouse().KeyUp:Connect(function(KeyPressed) 
	 if KeyPressed == (DeleteMob.Aimbot.Keybind) and DeleteMob.Aimbot.Enabled then
		 DeleteMob.Aimbot.IsAimKeyDown = false
	 end
 end)
 
 PLAYER:GetMouse().Button1Down:Connect(function()
	 if DeleteMob.Aimbot.Keybind == "MouseButton1" and DeleteMob.Aimbot.Enabled then
		 DeleteMob.Aimbot.IsAimKeyDown = true
	 end
 end)
 PLAYER:GetMouse().Button1Up:Connect(function()
	 if DeleteMob.Aimbot.Keybind == "MouseButton1" and DeleteMob.Aimbot.Enabled then
		 DeleteMob.Aimbot.IsAimKeyDown = false
	 end
 end)
 PLAYER:GetMouse().Button2Down:Connect(function()
	 if DeleteMob.Aimbot.Keybind == "MouseButton2" and DeleteMob.Aimbot.Enabled then
		 DeleteMob.Aimbot.IsAimKeyDown = true
	 end
 end)
 PLAYER:GetMouse().Button2Up:Connect(function()
	 if DeleteMob.Aimbot.Keybind == "MouseButton2" and DeleteMob.Aimbot.Enabled then
		 DeleteMob.Aimbot.IsAimKeyDown = false
	 end
 end)
 
 -- Made By Mick Gordon
 ABE.MouseButton1Click:Connect(function()
	 if ABE.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		 ABE.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		 DeleteMob.Aimbot.Enabled = true
	 else
		 ABE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		 DeleteMob.Aimbot.Enabled = false	
	 end
 end)
 
 ABSF.MouseButton1Click:Connect(function()
	 if ABSF.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		 ABSF.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		 DeleteMob.Aimbot.ShowFov = true
	 else
		 ABSF.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		 DeleteMob.Aimbot.ShowFov = false	
	 end
 end)
 
 ABTC.MouseButton1Click:Connect(function()
	 if ABTC.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		 ABTC.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		 DeleteMob.Aimbot.TeamCheck = true
	 else
		 ABTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		 DeleteMob.Aimbot.TeamCheck = false	
	 end
 end)
 
 ABWC.MouseButton1Click:Connect(function()
	 if ABWC.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		 ABWC.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		 DeleteMob.Aimbot.WallCheck = true
	 else
		 ABWC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		 DeleteMob.Aimbot.WallCheck = false	
	 end
 end)
 
 Allways_Show.MouseButton1Click:Connect(function()
	 if DeleteMob.Aimbot.AimPart == "Head" then
		 Allways_Show.Text = "head, TORSO"
		 DeleteMob.Aimbot.AimPart = "HumanoidRootPart"
	 else
		 Allways_Show.Text = "HEAD, torso"
		 DeleteMob.Aimbot.AimPart = "Head"
	 end
 end)
 
 -- Box ESP
 
 BBD.MouseButton1Click:Connect(function()
	 if BBD.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		 BBD.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		 DeleteMob.ESP.Box.Distance = true
	 else
		 BBD.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		 DeleteMob.ESP.Box.Distance = false	
	 end
 end)
 
 BBE.MouseButton1Click:Connect(function()
	 if BBE.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		 BBE.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		 DeleteMob.ESP.Box.Box = true
	 else
		 BBE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		 DeleteMob.ESP.Box.Box = false	
	 end
 end)
 
 BBH.MouseButton1Click:Connect(function()
	 if BBH.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		 BBH.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		 DeleteMob.ESP.Box.Health = true
	 else
		 BBH.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		 DeleteMob.ESP.Box.Health = false	
	 end
 end)
 
 BBHT.MouseButton1Click:Connect(function()
	 if DeleteMob.ESP.Box.HealthType == "Bar" then
		 BBHT.Text = "bar, TEXT, both"
		 DeleteMob.ESP.Box.HealthType = "Text"
	 elseif DeleteMob.ESP.Box.HealthType == "Text" then
		 BBHT.Text = "bar, text, BOTH"
		 DeleteMob.ESP.Box.HealthType = "Both"
	 elseif DeleteMob.ESP.Box.HealthType == "Both" then
		 BBHT.Text = "BAR, text, both"
		 DeleteMob.ESP.Box.HealthType = "Bar"
	 end
 end)
 
 BBN.MouseButton1Click:Connect(function()
	 if BBN.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		 BBN.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		 DeleteMob.ESP.Box.Name = true
	 else
		 BBN.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		 DeleteMob.ESP.Box.Name = false	
	 end
 end)
 
 BTC.MouseButton1Click:Connect(function()
	 if BTC.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		 BTC.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		 DeleteMob.ESP.Box.TeamCheck = true
	 else
		 BTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		 DeleteMob.ESP.Box.TeamCheck = false	
	 end
 end)
 -- Outlines
 
 OE.MouseButton1Click:Connect(function()
	 if OE.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		 OE.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		 DeleteMob.ESP.OutLines.Enabled = true
	 else
		 OE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		 DeleteMob.ESP.OutLines.Enabled = false	
	 end
 end)
 
 OTC.MouseButton1Click:Connect(function()
	 if OTC.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		 OTC.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		 DeleteMob.ESP.OutLines.TeamCheck = true
	 else
		 OTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		 DeleteMob.ESP.OutLines.TeamCheck = false	
	 end
 end)
 
 -- Tracers
 
 TE.MouseButton1Click:Connect(function()
	 if TE.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		 TE.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		 DeleteMob.ESP.Tracers.Enabled = true
	 else
		 TE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		 DeleteMob.ESP.Tracers.Enabled = false	
	 end
 end)
 
 TTC.MouseButton1Click:Connect(function()
	 if TTC.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		 TTC.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		 DeleteMob.ESP.Tracers.TeamCheck = true
	 else
		 TTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		 DeleteMob.ESP.Tracers.TeamCheck = false	
	 end
 end)
 
 TTCOlor.MouseButton1Click:Connect(function()
	 if TTCOlor.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		 TTCOlor.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		 DeleteMob.ESP.Tracers.TeamColor = true
	 else
		 TTCOlor.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		 DeleteMob.ESP.Tracers.TeamColor = false	
	 end
 end)
 
 -- UI Toggle
 
 TextButton.MouseButton1Click:Connect(function()
	 if DeleteMobF.Visible == true then
		 DeleteMobF.Visible = false
	 else
		 DeleteMobF.Visible = true
	 end
 end)
 
 
 -- Scripts:
 
 local function LDTZWMY_fake_script() -- Slider3.Script1 
	 local Mouse = game.Players.LocalPlayer:GetMouse()
	 local Slider = Slider3
	 local Fill = Fill1
	 local Trigger = TriggerFov
	 local TextNumbers = Numbers
	 
	 local maxvalue = 7 or 700/700
	 local startingvalue = 0 or 0/100
	 
	 Fill.Size = UDim2.fromScale(DeleteMob.Aimbot.Fov,1)
	 TextNumbers.Text = tostring(math.round(DeleteMob.Aimbot.Fov*100))
	 
	 local TweenService = game:GetService("TweenService")
	 local TweenStyle =  TweenInfo.new(0.25, Enum.EasingStyle.Exponential)
	 
	 local function UpdateSlider()
		 local OutPut = math.clamp(((Vector2.new(Mouse.X,Mouse.Y)-Slider.AbsolutePosition)/Slider.AbsoluteSize).X,0,1)
		 
		 if DeleteMob.Aimbot.Fov ~= OutPut then
			 TweenService:Create(Fill,TweenStyle,{Size = UDim2.fromScale(OutPut,1)}):Play()
		 end
		 
		 DeleteMob.Aimbot.Fov = (startingvalue +(OutPut*(maxvalue-startingvalue)))*100
		 TextNumbers.Text = tostring(math.round(DeleteMob.Aimbot.Fov*100))
	 end
	 
	 Fill:GetPropertyChangedSignal("Size"):Connect(function()
		 TextNumbers.Text = tostring(math.round(DeleteMob.Aimbot.Fov*100))
	 end)
	 
	 local SliderActive = false
	 
	 local function ActivateSlider()
		 SliderActive = true
		 while SliderActive do
			 UpdateSlider()
			 task.wait()
		 end
	 end
	 
	 Trigger.MouseButton1Down:Connect(ActivateSlider)
	 
	 game:GetService("UserInputService").InputEnded:Connect(function(input)
		 if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			 SliderActive = false
		 end
	 end)
 end
 coroutine.wrap(LDTZWMY_fake_script)()
 
 local function YEOE_fake_script() -- Slider4.Script2 
	 local Mouse = game.Players.LocalPlayer:GetMouse()
	 local Slider = Slider4
	 local Fill = Fill2
	 local Trigger = TriggerSmoothing
	 local TextNumbers = Numbers_2
	 
	 local maxvalue = 3 or 30/30
	 local startingvalue = 0 or 0/100
	 
	 Fill.Size = UDim2.fromScale(DeleteMob.Aimbot.Smoothing,1)
	 TextNumbers.Text = tostring(math.round(DeleteMob.Aimbot.Smoothing*100))
	 
	 local TweenService = game:GetService("TweenService")
	 local TweenStyle =  TweenInfo.new(0.25, Enum.EasingStyle.Exponential)
	 
	 local function UpdateSlider()
		 local OutPut = math.clamp(((Vector2.new(Mouse.X,Mouse.Y)-Slider.AbsolutePosition)/Slider.AbsoluteSize).X,0,1)
		 
		 if DeleteMob.Aimbot.Smoothing ~= OutPut then
			 TweenService:Create(Fill,TweenStyle,{Size = UDim2.fromScale(OutPut,1)}):Play()
		 end
		 
		 DeleteMob.Aimbot.Smoothing = startingvalue +(OutPut*(maxvalue-startingvalue))
		 TextNumbers.Text = tostring(math.round(DeleteMob.Aimbot.Smoothing*100))
	 end
	 
	 Fill:GetPropertyChangedSignal("Size"):Connect(function()
		 TextNumbers.Text = tostring(math.round(DeleteMob.Aimbot.Smoothing*100))
	 end)
	 
	 local SliderActive = false
	 
	 local function ActivateSlider()
		 SliderActive = true
		 while SliderActive do
			 UpdateSlider()
			 task.wait()
		 end
	 end
	 
	 Trigger.MouseButton1Down:Connect(ActivateSlider)
	 
	 game:GetService("UserInputService").InputEnded:Connect(function(input)
		 if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			 SliderActive = false
		 end
	 end)
	 
 end
 coroutine.wrap(YEOE_fake_script)()
 local function GOUU_fake_script() -- Slider1.Script3 
	 local Mouse = game.Players.LocalPlayer:GetMouse()
	 local Slider = Slider1
	 local Fill = Fill3
	 local Trigger = TriggerOutTans
	 local TextNumbers = Numbers_3
	 
	 local maxvalue = 1 or 100/100
	 local startingvalue = 0 or 0/100
	 
	 Fill.Size = UDim2.fromScale(DeleteMob.ESP.OutLines.OutlineTrancparency,1)
	 TextNumbers.Text = tostring(math.round(DeleteMob.ESP.OutLines.OutlineTrancparency*100))
	 
	 local TweenService = game:GetService("TweenService")
	 local TweenStyle =  TweenInfo.new(0.25, Enum.EasingStyle.Exponential)
	 
	 local function UpdateSlider()
		 local OutPut = math.clamp(((Vector2.new(Mouse.X,Mouse.Y)-Slider.AbsolutePosition)/Slider.AbsoluteSize).X,0,1)
		 
		 if DeleteMob.ESP.OutLines.OutlineTrancparency ~= OutPut then
			 TweenService:Create(Fill,TweenStyle,{Size = UDim2.fromScale(OutPut,1)}):Play()
		 end
		 
		 DeleteMob.ESP.OutLines.OutlineTrancparency = startingvalue +(OutPut*(maxvalue-startingvalue))
		 TextNumbers.Text = tostring(math.round(DeleteMob.ESP.OutLines.OutlineTrancparency*100))
	 end
	 
	 Fill:GetPropertyChangedSignal("Size"):Connect(function()
		 TextNumbers.Text = tostring(math.round(DeleteMob.ESP.OutLines.OutlineTrancparency*100))
	 end)
	 
	 local SliderActive = false
	 
	 local function ActivateSlider()
		 SliderActive = true
		 while SliderActive do
			 UpdateSlider()
			 task.wait()
		 end
	 end
	 
	 Trigger.MouseButton1Down:Connect(ActivateSlider)
	 
	 game:GetService("UserInputService").InputEnded:Connect(function(input)
		 if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			 SliderActive = false
		 end
	 end)
	 
 end
 coroutine.wrap(GOUU_fake_script)()
 local function MMUKLB_fake_script() -- Slider2.Script4 
	 local Mouse = game.Players.LocalPlayer:GetMouse()
	 local Slider = Slider2
	 local Fill = Fill4
	 local Trigger = TriggerFill
	 local TextNumbers = Numbers_4
	 
	 local maxvalue = 1 or 100/100
	 local startingvalue = 0 or 0/100
	 
	 Fill.Size = UDim2.fromScale(DeleteMob.ESP.OutLines.FillTrancparenct,1)
	 TextNumbers.Text = tostring(math.round(DeleteMob.ESP.OutLines.FillTrancparenct*100))
	 
	 local TweenService = game:GetService("TweenService")
	 local TweenStyle =  TweenInfo.new(0.25, Enum.EasingStyle.Exponential)
	 
	 local function UpdateSlider()
		 local OutPut = math.clamp(((Vector2.new(Mouse.X,Mouse.Y)-Slider.AbsolutePosition)/Slider.AbsoluteSize).X,0,1)
		 
		 if DeleteMob.ESP.OutLines.FillTrancparenct ~= OutPut then
			 TweenService:Create(Fill,TweenStyle,{Size = UDim2.fromScale(OutPut,1)}):Play()
		 end
		 
		 DeleteMob.ESP.OutLines.FillTrancparenct = startingvalue +(OutPut*(maxvalue-startingvalue))
		 TextNumbers.Text = tostring(math.round(DeleteMob.ESP.OutLines.FillTrancparenct*100))
	 end
	 
	 Fill:GetPropertyChangedSignal("Size"):Connect(function()
		 TextNumbers.Text = tostring(math.round(DeleteMob.ESP.OutLines.FillTrancparenct*100))
	 end)
	 
	 local SliderActive = false
	 
	 local function ActivateSlider()
		 SliderActive = true
		 while SliderActive do
			 UpdateSlider()
			 task.wait()
		 end
	 end
	 
	 Trigger.MouseButton1Down:Connect(ActivateSlider)
	 
	 game:GetService("UserInputService").InputEnded:Connect(function(input)
		 if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			 SliderActive = false
		 end
	 end)
	 
 end
 coroutine.wrap(MMUKLB_fake_script)()
 
 
 game:GetService('RunService').RenderStepped:connect(function()
 
	 -- Aimbot Check
	 if DeleteMob.Aimbot.IsAimKeyDown then
		 local _pos = CameraGetClosestToMouse(DeleteMob.Aimbot.Fov)
		 if _pos then
			 aimAt(_pos, DeleteMob.Aimbot.Smoothing)
		 end
	 end
 
	 -- Fov
	 local acc = DeleteMob.Aimbot.Smoothing / 2	
	 local posd = UIS:GetMouseLocation() 
	 FOVFFrame.Position = UDim2.new(0, posd.X, 0, posd.Y - 36)
	 FOVFFrame.Size = UDim2.new(0, DeleteMob.Aimbot.Fov + acc, 0, DeleteMob.Aimbot.Fov + acc)
	 FOVFFrame.Visible = DeleteMob.Aimbot.ShowFov
	 FOVFFrame.BackgroundColor3 = DeleteMob.Aimbot.FovFillColor
	 FOVFFrame.Transparency = DeleteMob.Aimbot.FovFillTransparency
 
	 UIStroke.Color = DeleteMob.Aimbot.FovFillColor
	 UIStroke.Transparency = DeleteMob.Aimbot.FovTransparenct
	 UIStroke.Thickness = DeleteMob.Aimbot.Thickness
	 
	 -- Colors 
	 
	 DeleteMob.ESP.Box.BoxColor = Color3.fromRGB(tonumber(Box_R.Text), tonumber(Box_G.Text), tonumber(Box_B.Text))
	 DeleteMob.ESP.OutLines.FillCollor = Color3.fromRGB(tonumber(FillOutlines_R.Text), tonumber(FillOutlines_G.Text), tonumber(FillOutlines_B.Text))
	 DeleteMob.ESP.OutLines.OutlineColor = Color3.fromRGB(tonumber(Outlines_R.Text), tonumber(Outlines_G.Text), tonumber(Outlines_B.Text))
	 DeleteMob.ESP.Tracers.Color = Color3.fromRGB(tonumber(Tracers_R.Text), tonumber(Tracers_G.Text), tonumber(Tracers_B.Text))
 end)
 
 
 task.wait()
 
 for i,plr in pairs(game.Players:GetChildren()) do
	 AddHighlight(plr)
	 AddBox(plr)
	 AddTracers(plr)
 end
 
 game.Players.PlayerAdded:Connect(function(plr)
	 AddHighlight(plr)
	 AddBox(plr)
	 AddTracers(plr)
 end)
 
	end,
 })
 



 local Button = FunTab:CreateButton({
	Name = "FE Bypass GUI",
	Callback = function()
	loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\103\48\48\108\88\112\108\111\105\116\101\114\47\103\48\48\108\88\112\108\111\105\116\101\114\47\109\97\105\110\47\70\101\37\50\48\98\121\112\97\115\115\34\44\32\116\114\117\101\41\41\40\41\10")()
 
	end,
 })





 local Button = FunTab:CreateButton({
	Name = "FE Animations",
	Callback = function()
	loadstring(game:HttpGet(("https://pastebin.com/raw/2vdmuhZT"), true))()
	end,
 })












































































local Button = VisualsTab:CreateButton({
   Name = "ESP",
   Callback = function()
   assert(Drawing, 'exploit not supported')

if not syn and not PROTOSMASHER_LOADED then print'Unnamed ESP only officially supports Synapse and Protosmasher! If you\'re an exploit developer and have added drawing API to your exploit, try setting syn as true then checking if that works, otherwise, DM me on discord @ cppbook.org#1968 or add an issue to the Unnamed ESP Github Repository and I\'ll see it through email!' end

if not cloneref then cloneref = function(o) return o end end

local UserInputService = cloneref(game:GetService'UserInputService')
local HttpService = cloneref(game:GetService'HttpService')
local TweenService = cloneref(game:GetService'TweenService')
local RunService = cloneref(game:GetService'RunService')
local Players = game:GetService'Players'
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local Mouse = LocalPlayer:GetMouse()
local V2New = Vector2.new
local V3New = Vector3.new
local WTVP = Camera.WorldToViewportPoint
local WorldToViewport = function(...) return WTVP(Camera, ...) end
local Menu = {}
local MouseHeld = false
local LastRefresh = 0
local OptionsFile = 'IC3_ESP_SETTINGS.dat'
local Binding = false
local BindedKey = nil
local OIndex = 0
local LineBox = {}
local UIButtons = {}
local Sliders = {}
local ColorPicker = { Loading = false, LastGenerated = 0 }
local Dragging = false
local DraggingUI = false
local Rainbow = false
local DragOffset = V2New()
local DraggingWhat = nil
local OldData = {}
local IgnoreList = {}
local EnemyColor = Color3.new(1, 0, 0)
local TeamColor = Color3.new(0, 1, 0)
local MenuLoaded = false
local ErrorLogging = false
local TracerPosition = V2New(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y - 135)
local DragTracerPosition = false
local SubMenu = {}
local IsSynapse = syn and not PROTOSMASHER_LOADED
local Connections = { Active = {} }
local Signal = {} Signal.__index = Signal
local GetCharacter, CurrentColorPicker, Spectating

local QUAD_SUPPORTED_EXPLOIT = pcall(function() Drawing.new('Quad'):Remove() end)

shared.MenuDrawingData = shared.MenuDrawingData or { Instances = {} }
shared.InstanceData = shared.InstanceData or {}
shared.RSName = shared.RSName or ('UnnamedESP_by_ic3-' .. HttpService:GenerateGUID(false))

local GetDataName = shared.RSName .. '-GetData'
local UpdateName = shared.RSName .. '-Update'

local Debounce = setmetatable({}, {
	__index = function(t, i)
		return rawget(t, i) or false
	end
})

if shared.UESP_InputChangedCon then shared.UESP_InputChangedCon:Disconnect() end
if shared.UESP_InputBeganCon then shared.UESP_InputBeganCon:Disconnect() end
if shared.UESP_InputEndedCon then shared.UESP_InputEndedCon:Disconnect() end
if shared.CurrentColorPicker then shared.CurrentColorPicker:Dispose() end

local function IsStringEmpty(String)
	if type(String) == 'string' then
		return String:match'^%s+$' ~= nil or #String == 0 or String == '' or false;
	end
	
	return false;
end

local function Set(t, i, v) t[i] = v end

local Teams = {};
local CustomTeams = { -- Games that don't use roblox's team system
	[2563455047] = {
		Initialize = function()
			Teams.Sheriffs = {}; -- prevent big error
			Teams.Bandits = {}; -- prevent big error
			local Func = game:GetService'ReplicatedStorage':WaitForChild('RogueFunc', 1);
			local Event = game:GetService'ReplicatedStorage':WaitForChild('RogueEvent', 1);
			local S, B = Func:InvokeServer'AllTeamData';

			Teams.Sheriffs = S;
			Teams.Bandits = B;

			Event.OnClientEvent:Connect(function(id, PlayerName, Team, Remove) -- stolen straight from decompiled src lul
				if id == 'UpdateTeam' then
					local TeamTable, NotTeamTable
					if Team == 'Bandits' then
						TeamTable = TDM.Bandits
						NotTeamTable = TDM.Sheriffs
					else
						TeamTable = TDM.Sheriffs
						NotTeamTable = TDM.Bandits
					end
					if Remove then
						TeamTable[PlayerName] = nil
					else
						TeamTable[PlayerName] = true
						NotTeamTable[PlayerName] = nil
					end
					if PlayerName == LocalPlayer.Name then
						TDM.Friendlys = TeamTable
						TDM.Enemies = NotTeamTable
					end
				end
			end)
		end;
		CheckTeam = function(Player)
			local LocalTeam = Teams.Sheriffs[LocalPlayer.Name] and Teams.Sheriffs or Teams.Bandits;
			
			return LocalTeam[Player.Name] and true or false;
		end;
	};
	[5208655184] = {
		CheckTeam = function(Player)
			local LocalLastName = LocalPlayer:GetAttribute'LastName' if not LocalLastName or IsStringEmpty(LocalLastName) then return true end
			local PlayerLastName = Player:GetAttribute'LastName' if not PlayerLastName then return false end

			return PlayerLastName == LocalLastName
		end
	};
	[3541987450] = {
		CheckTeam = function(Player)
			local LocalStats = LocalPlayer:FindFirstChild'leaderstats';
			local LocalLastName = LocalStats and LocalStats:FindFirstChild'LastName'; if not LocalLastName or IsStringEmpty(LocalLastName.Value) then return true; end
			local PlayerStats = Player:FindFirstChild'leaderstats';
			local PlayerLastName = PlayerStats and PlayerStats:FindFirstChild'LastName'; if not PlayerLastName then return false; end

			return PlayerLastName.Value == LocalLastName.Value;
		end;
	};
    [6032399813] = {
		CheckTeam = function(Player)
			local LocalStats = LocalPlayer:FindFirstChild'leaderstats';
			local LocalGuildName = LocalStats and LocalStats:FindFirstChild'Guild'; if not LocalGuildName or IsStringEmpty(LocalGuildName.Value) then return true; end
			local PlayerStats = Player:FindFirstChild'leaderstats';
			local PlayerGuildName = PlayerStats and PlayerStats:FindFirstChild'Guild'; if not PlayerGuildName then return false; end

			return PlayerGuildName.Value == LocalGuildName.Value;
		end;
	};
    [5735553160] = {
		CheckTeam = function(Player)
			local LocalStats = LocalPlayer:FindFirstChild'leaderstats';
			local LocalGuildName = LocalStats and LocalStats:FindFirstChild'Guild'; if not LocalGuildName or IsStringEmpty(LocalGuildName.Value) then return true; end
			local PlayerStats = Player:FindFirstChild'leaderstats';
			local PlayerGuildName = PlayerStats and PlayerStats:FindFirstChild'Guild'; if not PlayerGuildName then return false; end

			return PlayerGuildName.Value == LocalGuildName.Value;
		end;
	};
};

local RenderList = {Instances = {}};

function RenderList:AddOrUpdateInstance(Instance, Obj2Draw, Text, Color)
	RenderList.Instances[Instance] = { ParentInstance = Instance; Instance = Obj2Draw; Text = Text; Color = Color };
	return RenderList.Instances[Instance];
end

local CustomPlayerTag;
local CustomESP;
local CustomCharacter;
local GetHealth;
local GetAliveState;
local CustomRootPartName;

local Modules = {
	[292439477] = {
		Initialize = function()
			if not syn then return end -- only supports synapse cuz they got parallel lua support

			local EventID, Event = syn.create_comm_channel()
			Event:Connect(function(List)
				PF_CharList = List
			end)
			
			for Index, Actor in pairs(getactors()) do
				syn.run_on_actor(Actor, [[
					local Event = syn.get_comm_channel(...)

					if not getrenv().shared.require then return end
					
					local RunService = game:GetService'RunService'
					local Cache = debug.getupvalues(getrenv().shared.require)[1]._cache if not Cache then return end
					local ReplicationInterface = rawget(rawget(Cache, 'ReplicationInterface'), 'module') if not ReplicationInterface then return end
					local getEntry = rawget(ReplicationInterface, 'getEntry')

					if shared.UNPFHB then shared.UNPFHB:Disconnect() end

					shared.UNPFHB = RunService.Heartbeat:Connect(function()
						local CharacterList = {}
						
						for Player, Entry in pairs(debug.getupvalues(getEntry)[1]) do
							local TPO = rawget(Entry, '_thirdPersonObject') if not TPO then continue end
							local Character = rawget(TPO, '_characterHash') if not Character then continue end
							local Torso = rawget(Character, 'torso') if not Torso then continue end
							local HealthState = rawget(Entry, '_healthstate')

							CharacterList[Player.Name] = {
								Character = Torso.Parent,
								Health = HealthState and rawget(HealthState, 'health0') or 100,
								Alive = rawget(Entry, '_alive')
							}
						end

						Event:Fire(CharacterList)
					end)
				]], EventID)
			end
		end,

		CustomCharacter = function(Player)
			if PF_CharList and PF_CharList[Player.Name] then
				return PF_CharList[Player.Name].Character
			end
		end,

		GetHealth = function(Player)
			if PF_CharList and PF_CharList[Player.Name] then
				return PF_CharList[Player.Name].Health
			end
		end,

		GetAliveState = function(Player)
			if PF_CharList and PF_CharList[Player.Name] then
				return PF_CharList[Player.Name].Alive
			end
		end,

		CustomRootPartName = 'Torso',
	};
	[2950983942] = {
		CustomCharacter = function(Player)
			if workspace:FindFirstChild'Players' then
				return workspace.Players:FindFirstChild(Player.Name);
			end
		end
	};
	[2262441883] = {
		CustomPlayerTag = function(Player)
			return Player:FindFirstChild'Job' and (' [' .. Player.Job.Value .. ']') or '';
		end;
		CustomESP = function()
			if workspace:FindFirstChild'MoneyPrinters' then
				for i, v in pairs(workspace.MoneyPrinters:GetChildren()) do
					local Main	= v:FindFirstChild'Main';
					local Owner	= v:FindFirstChild'TrueOwner';
					local Money	= v:FindFirstChild'Int' and v.Int:FindFirstChild'Money' or nil;
					if Main and Owner and Money then
						local O = tostring(Owner.Value);
						local M = tostring(Money.Value);

						pcall(RenderList.AddOrUpdateInstance, RenderList, v, Main, string.format('Money Printer\nOwned by %s\n[%s]', O, M), Color3.fromRGB(13, 255, 227));
					end
				end
			end
		end;
	};
	-- [4581966615] = {
	-- 	CustomESP = function()
	-- 		if workspace:FindFirstChild'Entities' then
	-- 			for i, v in pairs(workspace.Entities:GetChildren()) do
	-- 				if not v.Name:match'Printer' then continue end

	-- 				local Properties = v:FindFirstChild'Properties' if not Properties then continue end
	-- 				local Main	= v:FindFirstChild'hitbox';
	-- 				local Owner	= Properties:FindFirstChild'Owner';
	-- 				local Money	= Properties:FindFirstChild'CurrentPrinted'
					
	-- 				if Main and Owner and Money then
	-- 					local O = Owner.Value and tostring(Owner.Value) or 'no one';
	-- 					local M = tostring(Money.Value);

	-- 					pcall(RenderList.AddOrUpdateInstance, RenderList, v, Main, string.format('Money Printer\nOwned by %s\n[%s]', O, M), Color3.fromRGB(13, 255, 227));
	-- 				end
	-- 			end
	-- 		end
	-- 	end;
	-- };
	[4801598506] = {
		CustomESP = function()
			if workspace:FindFirstChild'Mobs' and workspace.Mobs:FindFirstChild'Forest1' then
				for i, v in pairs(workspace.Mobs.Forest1:GetChildren()) do
					local Main	= v:FindFirstChild'Head';
					local Hum	= v:FindFirstChild'Mob';

					if Main and Hum then
						pcall(RenderList.AddOrUpdateInstance, RenderList, v, Main, string.format('[%s] [%s/%s]', v.Name, Hum.Health, Hum.MaxHealth), Color3.fromRGB(13, 255, 227));
					end
				end
			end
		end;
	};
	[2555873122] = {
		CustomESP = function()
			if workspace:FindFirstChild'WoodPlanks' then
				for i, v in pairs(workspace:GetChildren()) do
					if v.Name == 'WoodPlanks' then
						local Main = v:FindFirstChild'Wood';

						if Main then
							pcall(RenderList.AddOrUpdateInstance, RenderList, v, Main, 'Wood Planks', Color3.fromRGB(13, 255, 227));
						end
					end
				end
			end
		end;
	};
	[5208655184] = {
		CustomESP = function()
			-- if workspace:FindFirstChild'Live' then
			-- 	for i, v in pairs(workspace.Live:GetChildren()) do
			-- 		if v.Name:sub(1, 1) == '.' then
			-- 			local Main = v:FindFirstChild'Head';

			-- 			if Main then
			-- 				pcall(RenderList.AddOrUpdateInstance, RenderList, v, Main, v.Name:sub(2), Color3.fromRGB(250, 50, 40));
			-- 			end
			-- 		end
			-- 	end
			-- end
		end;
		CustomPlayerTag = function(Player)
			if game.PlaceVersion < 457 then return '' end

			local Name = '';
			local FirstName = Player:GetAttribute'FirstName'

			if typeof(FirstName) == 'string' and #FirstName > 0 then
				local Prefix = '';
				local Extra = {};
				Name = Name .. '\n[';

				if Player:GetAttribute'Prestige' > 0 then
					Name = Name .. '#' .. tostring(Player:GetAttribute'Prestige') .. ' ';
				end
				if not IsStringEmpty(Player:GetAttribute'HouseRank') then
					Prefix = Player:GetAttribute'HouseRank' == 'Owner' and (Player:GetAttribute'Gender' == 'Female' and 'Lady ' or 'Lord ') or '';
				end
				if not IsStringEmpty(FirstName) then
					Name = Name .. '' .. Prefix .. FirstName;
				end
				if not IsStringEmpty(Player:GetAttribute'LastName') then
					Name = Name .. ' ' .. Player:GetAttribute'LastName';
				end

				if not IsStringEmpty(Name) then Name = Name .. ']'; end

				local Character = GetCharacter(Player);

				if Character then
					if Character and Character:FindFirstChild'Danger' then table.insert(Extra, 'D'); end
					if Character:FindFirstChild'ManaAbilities' and Character.ManaAbilities:FindFirstChild'ManaSprint' then table.insert(Extra, 'D1'); end

					if Character:FindFirstChild'Mana'	 		then table.insert(Extra, 'M' .. math.floor(Character.Mana.Value)); end
					if Character:FindFirstChild'Vampirism' 		then table.insert(Extra, 'V'); end
					if Character:FindFirstChild'Observe'		then table.insert(Extra, 'ILL'); end
					if Character:FindFirstChild'Inferi'			then table.insert(Extra, 'NEC'); end
					if Character:FindFirstChild'World\'s Pulse' then table.insert(Extra, 'DZIN'); end
					if Character:FindFirstChild'Shift'		 	then table.insert(Extra, 'MAD'); end
					if Character:FindFirstChild'Head' and Character.Head:FindFirstChild'FacialMarking' then
						local FM = Character.Head:FindFirstChild'FacialMarking';
						if FM.Texture == 'http://www.roblox.com/asset/?id=4072968006' then
							table.insert(Extra, 'HEALER');
						elseif FM.Texture == 'http://www.roblox.com/asset/?id=4072914434' then
							table.insert(Extra, 'SEER');
						elseif FM.Texture == 'http://www.roblox.com/asset/?id=4094417635' then
							table.insert(Extra, 'JESTER');
						elseif FM.Texture == 'http://www.roblox.com/asset/?id=4072968656' then
							table.insert(Extra, 'BLADE');
						end
					end
				end
				if Player:FindFirstChild'Backpack' then
					if Player.Backpack:FindFirstChild'Observe' 			then table.insert(Extra, 'ILL');  end
					if Player.Backpack:FindFirstChild'Inferi'			then table.insert(Extra, 'NEC');  end
					if Player.Backpack:FindFirstChild'World\'s Pulse' 	then table.insert(Extra, 'DZIN'); end
					if Player.Backpack:FindFirstChild'Shift'		 	then table.insert(Extra, 'MAD'); end
				end

				if #Extra > 0 then Name = Name .. ' [' .. table.concat(Extra, '-') .. ']'; end
			end

			return Name;
		end;
	};
	[3541987450] = {
		CustomPlayerTag = function(Player)
			local Name = '';

			if Player:FindFirstChild'leaderstats' then
				Name = Name .. '\n[';
				local Prefix = '';
				local Extra = {};
				if Player.leaderstats:FindFirstChild'Prestige' and Player.leaderstats.Prestige.ClassName == 'IntValue' and Player.leaderstats.Prestige.Value > 0 then
					Name = Name .. '#' .. tostring(Player.leaderstats.Prestige.Value) .. ' ';
				end
				if Player.leaderstats:FindFirstChild'HouseRank' and Player.leaderstats:FindFirstChild'Gender' and Player.leaderstats.HouseRank.ClassName == 'StringValue' and not IsStringEmpty(Player.leaderstats.HouseRank.Value) then
					Prefix = Player.leaderstats.HouseRank.Value == 'Owner' and (Player.leaderstats.Gender.Value == 'Female' and 'Lady ' or 'Lord ') or '';
				end
				if Player.leaderstats:FindFirstChild'FirstName' and Player.leaderstats.FirstName.ClassName == 'StringValue' and not IsStringEmpty(Player.leaderstats.FirstName.Value) then
					Name = Name .. '' .. Prefix .. Player.leaderstats.FirstName.Value;
				end
				if Player.leaderstats:FindFirstChild'LastName' and Player.leaderstats.LastName.ClassName == 'StringValue' and not IsStringEmpty(Player.leaderstats.LastName.Value) then
					Name = Name .. ' ' .. Player.leaderstats.LastName.Value;
				end
				if Player.leaderstats:FindFirstChild'UberTitle' and Player.leaderstats.UberTitle.ClassName == 'StringValue' and not IsStringEmpty(Player.leaderstats.UberTitle.Value) then
					Name = Name .. ', ' .. Player.leaderstats.UberTitle.Value;
				end

				if not IsStringEmpty(Name) then Name = Name .. ']'; end

				local Character = GetCharacter(Player);

				if Character then
					if Character and Character:FindFirstChild'Danger' then table.insert(Extra, 'D'); end
					if Character:FindFirstChild'ManaAbilities' and Character.ManaAbilities:FindFirstChild'ManaSprint' then table.insert(Extra, 'D1'); end

					if Character:FindFirstChild'Mana'	 		then table.insert(Extra, 'M' .. math.floor(Character.Mana.Value)); end
					if Character:FindFirstChild'Vampirism' 		then table.insert(Extra, 'V');    end
					if Character:FindFirstChild'Observe'			then table.insert(Extra, 'ILL');  end
					if Character:FindFirstChild'Inferi'			then table.insert(Extra, 'NEC');  end
					
					if Character:FindFirstChild'World\'s Pulse' 	then table.insert(Extra, 'DZIN'); end
					if Character:FindFirstChild'Head' and Character.Head:FindFirstChild'FacialMarking' then
						local FM = Character.Head:FindFirstChild'FacialMarking';
						if FM.Texture == 'http://www.roblox.com/asset/?id=4072968006' then
							table.insert(Extra, 'HEALER');
						elseif FM.Texture == 'http://www.roblox.com/asset/?id=4072914434' then
							table.insert(Extra, 'SEER');
						elseif FM.Texture == 'http://www.roblox.com/asset/?id=4094417635' then
							table.insert(Extra, 'JESTER');
						end
					end
				end
				if Player:FindFirstChild'Backpack' then
					if Player.Backpack:FindFirstChild'Observe' 			then table.insert(Extra, 'ILL');  end
					if Player.Backpack:FindFirstChild'Inferi'			then table.insert(Extra, 'NEC');  end
					if Player.Backpack:FindFirstChild'World\'s Pulse' 	then table.insert(Extra, 'DZIN'); end
				end

				if #Extra > 0 then Name = Name .. ' [' .. table.concat(Extra, '-') .. ']'; end
			end

			return Name;
		end;
	};

	[4691401390] = { -- Vast Realm
		CustomCharacter = function(Player)
			if workspace:FindFirstChild'Players' then
				return workspace.Players:FindFirstChild(Player.Name);
			end
		end
	};

    [6032399813] = { -- Deepwoken [Etrean]
		CustomPlayerTag = function(Player)
			local Name = '';
            CharacterName = Player:GetAttribute'CharacterName'; -- could use leaderstats but lazy

            if not IsStringEmpty(CharacterName) then
                Name = ('\n[%s]'):format(CharacterName);
                local Character = GetCharacter(Player);
                local Extra = {};

                if Character then
                    local Blood, Armor = Character:FindFirstChild('Blood'), Character:FindFirstChild('Armor');

                    if Blood and Blood.ClassName == 'DoubleConstrainedValue' then
                        table.insert(Extra, ('B%d'):format(Blood.Value));
                    end

                    if Armor and Armor.ClassName == 'DoubleConstrainedValue' then
                        table.insert(Extra, ('A%d'):format(math.floor(Armor.Value / 10)));
                    end
                end

                local BackpackChildren = Player.Backpack:GetChildren()

                for index = 1, #BackpackChildren do
                    local Oath = BackpackChildren[index]
                    if Oath.ClassName == 'Folder' and Oath.Name:find('Talent:Oath') then
                        local OathName = Oath.Name:gsub('Talent:Oath: ', '')
                        table.insert(Extra, OathName);
                    end
                end

                if #Extra > 0 then Name = Name .. ' [' .. table.concat(Extra, '-') .. ']'; end
            end

			return Name;
		end;
	};

    [5735553160] = { -- Deepwoken [Depths]
		CustomPlayerTag = function(Player)
			local Name = '';
			CharacterName = Player:GetAttribute'CharacterName'; -- could use leaderstats but lazy

			if not IsStringEmpty(CharacterName) then
				Name = ('\n[%s]'):format(CharacterName);
				local Character = GetCharacter(Player);
				local Extra = {};

				if Character then
					local Blood, Armor = Character:FindFirstChild('Blood'), Character:FindFirstChild('Armor');

					if Blood and Blood.ClassName == 'DoubleConstrainedValue' then
						table.insert(Extra, ('B%d'):format(Blood.Value));
					end

					if Armor and Armor.ClassName == 'DoubleConstrainedValue' then
						table.insert(Extra, ('A%d'):format(math.floor(Armor.Value / 10)));
					end
				end

				local BackpackChildren = Player.Backpack:GetChildren()

				for index = 1, #BackpackChildren do
					local Oath = BackpackChildren[index]
					if Oath.ClassName == 'Folder' and Oath.Name:find('Talent:Oath') then
						local OathName = Oath.Name:gsub('Talent:Oath: ', '')
						table.insert(Extra, OathName);
					end
				end

				if #Extra > 0 then Name = Name .. ' [' .. table.concat(Extra, '-') .. ']'; end
			end

			return Name;
		end;
	};

	[3127094264] = {
		CustomCharacter = function(Player)
			if not _FIRST then
				_FIRST = true
				
				pcall(function()
					local GPM = rawget(require(LocalPlayer.PlayerScripts:WaitForChild('Client', 1e9):WaitForChild('Player', 1e9)), 'GetPlayerModel')
					PList = debug.getupvalue(GPM, 1)
				end)
			end

			if PList then
				local Player = rawget(PList, Player.UserId)

				if Player and Player.model then
					return Player.model
				end
			end
		end
	}
};

if Modules[game.PlaceId] ~= nil or Modules[game.GameId] ~= nil then
	local Module = Modules[game.PlaceId] or Modules[game.GameId]

	if Module.Initialize then
		Module.Initialize()
	end

	CustomPlayerTag = Module.CustomPlayerTag or nil
	CustomESP = Module.CustomESP or nil
	CustomCharacter = Module.CustomCharacter or nil
	GetHealth = Module.GetHealth or nil
	GetAliveState = Module.GetAliveState or nil
	CustomRootPartName = Module.CustomRootPartName or nil
end

function GetCharacter(Player)
	return CustomCharacter and CustomCharacter(Player) or Player.Character
end

function GetMouseLocation()
	return UserInputService:GetMouseLocation();
end

function MouseHoveringOver(Values)
	local X1, Y1, X2, Y2 = Values[1], Values[2], Values[3], Values[4]
	local MLocation = GetMouseLocation();
	return (MLocation.x >= X1 and MLocation.x <= (X1 + (X2 - X1))) and (MLocation.y >= Y1 and MLocation.y <= (Y1 + (Y2 - Y1)));
end

function GetTableData(t) -- basically table.foreach i dont even know why i made this
	if typeof(t) ~= 'table' then return end

	return setmetatable(t, {
		__call = function(t, func)
			if typeof(func) ~= 'function' then return end;
			for i, v in pairs(t) do
				pcall(func, i, v);
			end
		end;
	});
end
local function Format(format, ...)
	return string.format(format, ...);
end
function CalculateValue(Min, Max, Percent)
	return Min + math.floor(((Max - Min) * Percent) + .5);
end

function NewDrawing(InstanceName)
	local Instance = Drawing.new(InstanceName)

	return (function(Properties)
		for i, v in pairs(Properties) do
			pcall(Set, Instance, i, v)
		end

		return Instance
	end)
end

function Menu:AddMenuInstance(Name, DrawingType, Properties)
	local Instance;

	if shared.MenuDrawingData.Instances[Name] ~= nil then
		Instance = shared.MenuDrawingData.Instances[Name];
		for i, v in pairs(Properties) do
			pcall(Set, Instance, i, v);
		end
	else
		Instance = NewDrawing(DrawingType)(Properties);
	end

	shared.MenuDrawingData.Instances[Name] = Instance;

	return Instance;
end
function Menu:UpdateMenuInstance(Name)
	local Instance = shared.MenuDrawingData.Instances[Name];
	if Instance ~= nil then
		return (function(Properties)
			for i, v in pairs(Properties) do
				pcall(Set, Instance, i, v);
			end
			return Instance;
		end)
	end
end
function Menu:GetInstance(Name)
	return shared.MenuDrawingData.Instances[Name];
end

local Options = setmetatable({}, {
	__call = function(t, ...)
		local Arguments = {...};
		local Name = Arguments[1];
		OIndex = OIndex + 1;
		rawset(t, Name, setmetatable({
			Name			= Arguments[1];
			Text			= Arguments[2];
			Value			= Arguments[3];
			DefaultValue	= Arguments[3];
			AllArgs			= Arguments;
			Index			= OIndex;
		}, {
			__call = function(t, v, force)
				local self = t;

				if typeof(t.Value) == 'function' then
					t.Value();
				elseif typeof(t.Value) == 'EnumItem' then
					local BT = Menu:GetInstance(Format('%s_BindText', t.Name));
					if not force then
						Binding = true;
						local Val = 0
						while Binding do
							wait();
							Val = (Val + 1) % 17;
							BT.Text = Val <= 8 and '|' or '';
						end
					end
					t.Value = force and v or BindedKey;
					if BT and t.BasePosition and t.BaseSize then
						BT.Text = tostring(t.Value):match'%w+%.%w+%.(.+)';
						BT.Position = t.BasePosition + V2New(t.BaseSize.X - BT.TextBounds.X - 20, -10);
					end
				else
					local NewValue = v;
					if NewValue == nil then NewValue = not t.Value; end
					rawset(t, 'Value', NewValue);

					if Arguments[2] ~= nil and Menu:GetInstance'TopBar'.Visible then
						if typeof(Arguments[3]) == 'number' then
							local AMT = Menu:GetInstance(Format('%s_AmountText', t.Name));
							if AMT then
								AMT.Text = tostring(t.Value);
							end
						else
							local Inner = Menu:GetInstance(Format('%s_InnerCircle', t.Name));
							if Inner then Inner.Visible = t.Value; end
						end
					end
				end
			end;
		}));
	end;
})

function Load()
	local _, Result = pcall(readfile, OptionsFile);
	
	if _ then -- extremely ugly code yea i know but i dont care p.s. i hate pcall
		local _, Table = pcall(HttpService.JSONDecode, HttpService, Result);
		if _ and typeof(Table) == 'table' then
			for i, v in pairs(Table) do
				if typeof(Options[i]) == 'table' and Options[i].Value ~= nil and (typeof(Options[i].Value) == 'boolean' or typeof(Options[i].Value) == 'number') then
					Options[i].Value = v.Value;
					pcall(Options[i], v.Value);
				end
			end

			if Table.TeamColor then TeamColor = Color3.new(Table.TeamColor.R, Table.TeamColor.G, Table.TeamColor.B) end
			if Table.EnemyColor then EnemyColor = Color3.new(Table.EnemyColor.R, Table.EnemyColor.G, Table.EnemyColor.B) end

			if typeof(Table.MenuKey) == 'string' then Options.MenuKey(Enum.KeyCode[Table.MenuKey], true) end
			if typeof(Table.ToggleKey) == 'string' then Options.ToggleKey(Enum.KeyCode[Table.ToggleKey], true) end
		end
	end
end

Options('Enabled', 'ESP Enabled', true);
Options('ShowTeam', 'Show Team', true);
Options('ShowTeamColor', 'Show Team Color', false);
Options('ShowName', 'Show Names', true);
Options('ShowDistance', 'Show Distance', true);
Options('ShowHealth', 'Show Health', true);
Options('ShowBoxes', 'Show Boxes', true);
Options('ShowTracers', 'Show Tracers', true);
Options('ShowDot', 'Show Head Dot', false);
Options('VisCheck', 'Visibility Check', false);
Options('Crosshair', 'Crosshair', false);
Options('TextOutline', 'Text Outline', true);
-- Options('Rainbow', 'Rainbow Mode', false);
Options('TextSize', 'Text Size', syn and 18 or 14, 10, 24); -- cuz synapse fonts look weird???
Options('MaxDistance', 'Max Distance', 2500, 100, 25000);
Options('RefreshRate', 'Refresh Rate (ms)', 5, 1, 200);
Options('YOffset', 'Y Offset', 0, -200, 200);
Options('MenuKey', 'Menu Key', Enum.KeyCode.F4, 1);
Options('ToggleKey', 'Toggle Key', Enum.KeyCode.F3, 1);
Options('ChangeColors', SENTINEL_LOADED and 'Sentinel Unsupported' or 'Change Colors', function()
	if SENTINEL_LOADED then return end

	SubMenu:Show(GetMouseLocation(), 'Unnamed Colors', {
		{
			Type = 'Color'; Text = 'Team Color'; Color = TeamColor;

			Function = function(Circ, Position)
				if tick() - ColorPicker.LastGenerated < 1 then return; end

				if shared.CurrentColorPicker then shared.CurrentColorPicker:Dispose() end
				local ColorPicker = ColorPicker.new(Position - V2New(-10, 50));
				CurrentColorPicker = ColorPicker;
				shared.CurrentColorPicker = CurrentColorPicker;
				ColorPicker.ColorChanged:Connect(function(Color) Circ.Color = Color TeamColor = Color Options.TeamColor = Color end);
			end
		};
		{
			Type = 'Color'; Text = 'Enemy Color'; Color = EnemyColor;

			Function = function(Circ, Position)
				if tick() - ColorPicker.LastGenerated < 1 then return; end

				if shared.CurrentColorPicker then shared.CurrentColorPicker:Dispose() end
				local ColorPicker = ColorPicker.new(Position - V2New(-10, 50));
				CurrentColorPicker = ColorPicker;
				shared.CurrentColorPicker = CurrentColorPicker;
				ColorPicker.ColorChanged:Connect(function(Color) Circ.Color = Color EnemyColor = Color Options.EnemyColor = Color end);
			end
		};
		{
			Type = 'Button'; Text = 'Reset Colors';

			Function = function()
				EnemyColor = Color3.new(1, 0, 0);
				TeamColor = Color3.new(0, 1, 0);

				local C1 = Menu:GetInstance'Sub-ColorPreview.1'; if C1 then C1.Color = TeamColor end
				local C2 = Menu:GetInstance'Sub-ColorPreview.2'; if C2 then C2.Color = EnemyColor end
			end
		};
		{
			Type = 'Button'; Text = 'Rainbow Mode';

			Function = function()
				Rainbow = not Rainbow;
			end
		};
	});
end, 2);
Options('ResetSettings', 'Reset Settings', function()
	for i, v in pairs(Options) do
		if Options[i] ~= nil and Options[i].Value ~= nil and Options[i].Text ~= nil and (typeof(Options[i].Value) == 'boolean' or typeof(Options[i].Value) == 'number' or typeof(Options[i].Value) == 'EnumItem') then
			Options[i](Options[i].DefaultValue, true);
		end
	end
end, 5);
Options('LoadSettings', 'Load Settings', Load, 4);
Options('SaveSettings', 'Save Settings', function()
	local COptions = {};

	for i, v in pairs(Options) do
		COptions[i] = v;
	end
	
	if typeof(TeamColor) == 'Color3' then COptions.TeamColor = { R = TeamColor.R; G = TeamColor.G; B = TeamColor.B } end
	if typeof(EnemyColor) == 'Color3' then COptions.EnemyColor = { R = EnemyColor.R; G = EnemyColor.G; B = EnemyColor.B } end
	
	if typeof(COptions.MenuKey.Value) == 'EnumItem' then COptions.MenuKey = COptions.MenuKey.Value.Name end
	if typeof(COptions.ToggleKey.Value) == 'EnumItem' then COptions.ToggleKey = COptions.ToggleKey.Value.Name end

	writefile(OptionsFile, HttpService:JSONEncode(COptions));
end, 3);

Load(1);

Options('MenuOpen', nil, true);

local function Combine(...)
	local Output = {};
	for i, v in pairs{...} do
		if typeof(v) == 'table' then
			table.foreach(v, function(i, v)
				Output[i] = v;
			end)
		end
	end
	return Output
end

function LineBox:Create(Properties)
	local Box = { Visible = true }; -- prevent errors not really though dont worry bout the Visible = true thing

	local Properties = Combine({
		Transparency	= 1;
		Thickness		= 3;
		Visible			= true;
	}, Properties);

	if shared.am_ic3 then -- sory just my preference, dynamic boxes will be optional in unnamed esp v2
		Box['OutlineSquare']= NewDrawing'Square'(Properties);
		Box['Square'] 		= NewDrawing'Square'(Properties);
	elseif QUAD_SUPPORTED_EXPLOIT then
		Box['Quad']			= NewDrawing'Quad'(Properties);
	else
		Box['TopLeft']		= NewDrawing'Line'(Properties);
		Box['TopRight']		= NewDrawing'Line'(Properties);
		Box['BottomLeft']	= NewDrawing'Line'(Properties);
		Box['BottomRight']	= NewDrawing'Line'(Properties);
	end

	function Box:Update(CF, Size, Color, Properties, Parts)
		if not CF or not Size then return end

		if shared.am_ic3 and typeof(Parts) == 'table' then
			local AllCorners = {};
			
			for i, v in pairs(Parts) do
				-- if not v:IsA'BasePart' then continue end
				
				local CF, Size = v.CFrame, v.Size;
				-- CF, Size = v.Parent:GetBoundingBox();

				local Corners = {
					Vector3.new(CF.X + Size.X / 2, CF.Y + Size.Y / 2, CF.Z + Size.Z / 2);
					Vector3.new(CF.X - Size.X / 2, CF.Y + Size.Y / 2, CF.Z + Size.Z / 2);
					Vector3.new(CF.X - Size.X / 2, CF.Y - Size.Y / 2, CF.Z - Size.Z / 2);
					Vector3.new(CF.X + Size.X / 2, CF.Y - Size.Y / 2, CF.Z - Size.Z / 2);
					Vector3.new(CF.X - Size.X / 2, CF.Y + Size.Y / 2, CF.Z - Size.Z / 2);
					Vector3.new(CF.X + Size.X / 2, CF.Y + Size.Y / 2, CF.Z - Size.Z / 2);
					Vector3.new(CF.X - Size.X / 2, CF.Y - Size.Y / 2, CF.Z + Size.Z / 2);
					Vector3.new(CF.X + Size.X / 2, CF.Y - Size.Y / 2, CF.Z + Size.Z / 2);
				};

				for i, v in pairs(Corners) do
					table.insert(AllCorners, v);
				end

				-- break
			end

			local xMin, yMin = Camera.ViewportSize.X, Camera.ViewportSize.Y;
			local xMax, yMax = 0, 0;
			local Vs = true;

			for i, v in pairs(AllCorners) do				
				local Position, V = WorldToViewport(v);

				if VS and not V then Vs = false break end

				if Position.X > xMax then
					xMax = Position.X;
				end
				if Position.X < xMin then
					xMin = Position.X;
				end
				if Position.Y > yMax then
					yMax = Position.Y;
				end
				if Position.Y < yMin then
					yMin = Position.Y;
				end
			end

			local xSize, ySize = xMax - xMin, yMax - yMin;

			local Outline = Box['OutlineSquare'];
			local Square = Box['Square'];
			Outline.Visible = Vs;
			Square.Visible = Vs;
			Square.Position = V2New(xMin, yMin);
			Square.Color	= Color;
			Square.Thickness = math.floor(Outline.Thickness * 0.3);
			-- Square.Position = V2New(xMin, yMin);
			Square.Size = V2New(xSize, ySize);
			Outline.Position = Square.Position;
			Outline.Size = Square.Size;
			Outline.Color = Color3.new(0.12, 0.12, 0.12);
			Outline.Transparency = 0.75;

			return
		end
		
		local TLPos, Visible1	= WorldToViewport((CF * CFrame.new( Size.X,  Size.Y, 0)).Position);
		local TRPos, Visible2	= WorldToViewport((CF * CFrame.new(-Size.X,  Size.Y, 0)).Position);
		local BLPos, Visible3	= WorldToViewport((CF * CFrame.new( Size.X, -Size.Y, 0)).Position);
		local BRPos, Visible4	= WorldToViewport((CF * CFrame.new(-Size.X, -Size.Y, 0)).Position);

		local Quad = Box['Quad'];

		if QUAD_SUPPORTED_EXPLOIT then
			if Visible1 and Visible2 and Visible3 and Visible4 then
				Quad.Visible = true;
				Quad.Color	= Color;
				Quad.PointA = V2New(TLPos.X, TLPos.Y);
				Quad.PointB = V2New(TRPos.X, TRPos.Y);
				Quad.PointC = V2New(BRPos.X, BRPos.Y);
				Quad.PointD = V2New(BLPos.X, BLPos.Y);
			else
				Box['Quad'].Visible = false;
			end
		else
			Visible1 = TLPos.Z > 0 -- (commented | reason: random flashes);
			Visible2 = TRPos.Z > 0 -- (commented | reason: random flashes);
			Visible3 = BLPos.Z > 0 -- (commented | reason: random flashes);
			Visible4 = BRPos.Z > 0 -- (commented | reason: random flashes);

			-- ## BEGIN UGLY CODE
			if Visible1 then
				Box['TopLeft'].Visible		= true;
				Box['TopLeft'].Color		= Color;
				Box['TopLeft'].From			= V2New(TLPos.X, TLPos.Y);
				Box['TopLeft'].To			= V2New(TRPos.X, TRPos.Y);
			else
				Box['TopLeft'].Visible		= false;
			end
			if Visible2 then
				Box['TopRight'].Visible		= true;
				Box['TopRight'].Color		= Color;
				Box['TopRight'].From		= V2New(TRPos.X, TRPos.Y);
				Box['TopRight'].To			= V2New(BRPos.X, BRPos.Y);
			else
				Box['TopRight'].Visible		= false;
			end
			if Visible3 then
				Box['BottomLeft'].Visible	= true;
				Box['BottomLeft'].Color		= Color;
				Box['BottomLeft'].From		= V2New(BLPos.X, BLPos.Y);
				Box['BottomLeft'].To		= V2New(TLPos.X, TLPos.Y);
			else
				Box['BottomLeft'].Visible	= false;
			end
			if Visible4 then
				Box['BottomRight'].Visible	= true;
				Box['BottomRight'].Color	= Color;
				Box['BottomRight'].From		= V2New(BRPos.X, BRPos.Y);
				Box['BottomRight'].To		= V2New(BLPos.X, BLPos.Y);
			else
				Box['BottomRight'].Visible	= false;
			end
			if Properties and typeof(Properties) == 'table' then
				GetTableData(Properties)(function(i, v)
					pcall(Set, Box['TopLeft'],		i, v);
					pcall(Set, Box['TopRight'],		i, v);
					pcall(Set, Box['BottomLeft'],	i, v);
					pcall(Set, Box['BottomRight'],	i, v);
				end)
			end
			-- ## END UGLY CODE
		end
	end
	function Box:SetVisible(bool)
		if shared.am_ic3 then
			Box['Square'].Visible = bool;
			Box['OutlineSquare'].Visible = bool;
		elseif self.Quad then
			self.Quad.Visible = false
		elseif self.TopLeft and self.TopRight and self.BottomLeft and self.BottomRight then
			self.TopLeft.Visible = bool
			self.TopRight.Visible = bool
			self.BottomLeft.Visible = bool
			self.BottomRight.Visible = bool
		end
	end
	function Box:Remove()
		self:SetVisible(false)

		if shared.am_ic3 then
			Box['Square']:Remove()
			Box['OutlineSquare']:Remove()
		elseif self.Quad then
			Box['Quad']:Remove()
		elseif self.TopLeft and self.TopRight and self.BottomLeft and self.BottomRight then
			self.TopLeft:Remove()
			self.TopRight:Remove()
			self.BottomLeft:Remove()
			self.BottomRight:Remove()
		end
	end

	return Box;
end

local Colors = {
	White = Color3.fromHex'ffffff',
	Primary = {
		Main	= Color3.fromHex'424242',
		Light	= Color3.fromHex'6d6d6d',
		Dark	= Color3.fromHex'1b1b1b'
	},
	Secondary = {
		Main	= Color3.fromHex'e0e0e0',
		Light	= Color3.fromHex'ffffff',
		Dark	= Color3.fromHex'aeaeae'
	}
}

function Connections:Listen(Connection, Function)
    local NewConnection = Connection:Connect(Function);
    table.insert(self.Active, NewConnection);
    return NewConnection;
end

function Connections:DisconnectAll()
    for Index, Connection in pairs(self.Active) do
        if Connection.Connected then
            Connection:Disconnect();
        end
    end
    
    self.Active = {};
end

function Signal.new()
	local self = setmetatable({ _BindableEvent = Instance.new'BindableEvent' }, Signal);
    
	return self;
end

function Signal:Connect(Callback)
    assert(typeof(Callback) == 'function', 'function expected; got ' .. typeof(Callback));

	return self._BindableEvent.Event:Connect(function(...) Callback(...) end);
end

function Signal:Fire(...)
    self._BindableEvent:Fire(...);
end

function Signal:Wait()
    local Arguments = self._BindableEvent:Wait();

    return Arguments;
end

function Signal:Disconnect()
    if self._BindableEvent then
        self._BindableEvent:Destroy();
    end
end

local function GetMouseLocation()
	return UserInputService:GetMouseLocation();
end

local function IsMouseOverDrawing(Drawing, MousePosition)
	local TopLeft = Drawing.Position;
	local BottomRight = Drawing.Position + Drawing.Size;
    local MousePosition = MousePosition or GetMouseLocation();
    
    return MousePosition.X > TopLeft.X and MousePosition.Y > TopLeft.Y and MousePosition.X < BottomRight.X and MousePosition.Y < BottomRight.Y;
end

local ImageCache = {};

local function SetImage(Drawing, Url)
	local Data = IsSynapse and game:HttpGet(Url) or Url;

	Drawing[IsSynapse and 'Data' or 'Uri'] = ImageCache[Url] or Data;
	ImageCache[Url] = Data;
    
	if not IsSynapse then repeat wait() until Drawing.Loaded; end
end

-- oh god unnamed esp needs an entire rewrite, someone make a better one pls im too lazy
-- btw the color picker was made seperately so it doesnt fit with the code of unnamed esp

local function CreateDrawingsTable()
    local Drawings = { __Objects = {} };
    local Metatable = {};

    function Metatable.__index(self, Index)
        local Object = rawget(self.__Objects, Index);
        
        if not Object or (IsSynapse and not Object.__SELF.__OBJECT_EXISTS) then
            local Type = Index:sub(1, Index:find'-' - 1);

            Success, Object = pcall(Drawing.new, Type);

            if not Object or not Success then return function() end; end

            self.__Objects[Index] = setmetatable({ __SELF = Object; Type = Type }, {
                __call = function(self, Properties)
                    local Object = rawget(self, '__SELF'); if IsSynapse and not Object.__OBJECT_EXISTS then return false, 'render object destroyed'; end

                    if Properties == false then
                        Object.Visible = false;
                        Object.Transparency = 0;
                        Object:Remove();
                        
                        return true;
                    end
                    
                    if typeof(Properties) == 'table' then
                        for Property, Value in pairs(Properties) do
                            local CanSet = true;

                            if self.Type == 'Image' and not IsSynapse and Property == 'Size' and typeof(Value) == 'Vector2' then
                                CanSet = false;

                                spawn(function()
                                    repeat wait() until Object.Loaded;
                                    if not self.DefaultSize then rawset(self, 'DefaultSize', Object.Size) end

                                    Property = 'ScaleFactor';
                                    Value = Value.X / self.DefaultSize.X;

                                    Object[Property] = Value
                                end)
                            end
                            
                            if CanSet then Object[Property] = Value end
                        end
                    end

                    return Object;
                end
            });

            Object.Visible = true;
            Object.Transparency = 1; -- Transparency is really Opacity with drawing api (1 being visible, 0 being invisible)
            
            if Type == 'Text' then
                if Drawing.Fonts then Object.Font = Drawing.Fonts.Monospace end
                Object.Size = 20;
                Object.Color = Color3.new(1, 1, 1);
                Object.Center = true;
				Object.Outline = true;
				OutlineOpacity = 0.5;
            elseif Type == 'Square' or Type == 'Rectangle' then
                Object.Thickness = 2;
                Object.Filled = false;
            end

            return self.__Objects[Index];
        end

        return Object;
    end

    function Metatable.__call(self, Delete, ...)
        local Arguments = {Delete, ...};
        
        if Delete == false then
            for Index, Drawing in pairs(rawget(self, '__Objects')) do
                Drawing(false);
            end
        end
    end

    return setmetatable(Drawings, Metatable);
end

local Images = {}

spawn(function()
	Images.Ring = 'https://i.imgur.com/q4qx26f.png'
	Images.Overlay = 'https://i.imgur.com/gOCxbsR.png'
end)

function ColorPicker.new(Position, Size, Color)
	ColorPicker.LastGenerated = tick();
	ColorPicker.Loading = true;

    local self = { Color = Color or Color3.new(1, 1, 1); HSV = { H = 0, S = 1, V = 1 } };
    local Drawings = CreateDrawingsTable();
    local Position = Position or V2New();
    local Size = Size or 150;
    local Padding = { 10, 10, 10, 10 };
    
    self.ColorChanged = Signal.new();

    local Background = Drawings['Square-Background'] {
        Color = Color3.fromRGB(33, 33, 33);
		Filled = false;
		Visible = false;
        Position = Position - V2New(Padding[4], Padding[1]);
        Size = V2New(Size, Size) + V2New(Padding[4] + Padding[2], Padding[1] + Padding[3]);
    };
    local ColorPreview = Drawings['Circle-Preview'] {
        Position = Position + (V2New(Size, Size) / 2);
        Radius = Size / 2 - 8;
        Filled = true;
        Thickness = 0;
        NumSides = 20;
        Color = Color3.new(1, 0, 0);
    };
    local Main = Drawings['Image-Main'] {
        Position = Position;
        Size = V2New(Size, Size);
    }; SetImage(Main, Images.Ring);
    local Preview = Drawings['Square-Preview'] {
        Position = Main.Position + (Main.Size / 4.5);
        Size = Main.Size / 1.75;
        Color = Color3.new(1, 0, 0);
        Filled = true;
        Thickness = 0;
    };
    local Overlay = Drawings['Image-Overlay'] {
        Position = Preview.Position;
        Size = Preview.Size;
        Transparency = 1;
    }; SetImage(Overlay, Images.Overlay);
    local CursorOutline = Drawings['Circle-CursorOutline'] {
        Radius = 4;
        Thickness = 2;
        Filled = false;
        Color = Color3.new(0.2, 0.2, 0.2);
        Position = V2New(Main.Position.X + Main.Size.X - 10, Main.Position.Y + (Main.Size.Y / 2));
    };
    local Cursor = Drawings['Circle-Cursor'] {
        Radius = 3;
        Transparency = 1;
        Filled = true;
        Color = Color3.new(1, 1, 1);
        Position = CursorOutline.Position;
    };
    local CursorOutline = Drawings['Circle-CursorOutlineSquare'] {
        Radius = 4;
        Thickness = 2;
        Filled = false;
        Color = Color3.new(0.2, 0.2, 0.2);
        Position = V2New(Preview.Position.X + Preview.Size.X - 2, Preview.Position.Y + 2);
    };
    Drawings['Circle-CursorSquare'] {
        Radius = 3;
        Transparency = 1;
        Filled = true;
        Color = Color3.new(1, 1, 1);
        Position = CursorOutline.Position;
    };
    
    function self:UpdatePosition(Input)
        local MousePosition = V2New(Input.Position.X, Input.Position.Y + 33);

        if self.MouseHeld then
            if self.Item == 'Ring' then
                local Main = self.Drawings['Image-Main'] ();
                local Preview = self.Drawings['Square-Preview'] ();
                local Bounds = Main.Size / 2;
                local Center = Main.Position + Bounds;
                local Relative = MousePosition - Center;
                local Direction = Relative.unit;
                local Position = Center + Direction * Main.Size.X / 2.15;
                local H = (math.atan2(Position.Y - Center.Y, Position.X - Center.X)) * 60;
                if H < 0 then H = 360 + H; end
                H = H / 360;
                self.HSV.H = H;
                local EndColor = Color3.fromHSV(H, self.HSV.S, self.HSV.V); if EndColor ~= self.Color then self.ColorChanged:Fire(self.Color); end
                local Pointer = self.Drawings['Circle-Cursor'] { Position = Position };
                self.Drawings['Circle-CursorOutline'] { Position = Pointer.Position };
                Bounds = Bounds * 2;
                Preview.Color = Color3.fromHSV(H, 1, 1);
                self.Color = EndColor;
                self.Drawings['Circle-Preview'] { Color = EndColor };
            elseif self.Item == 'HL' then
                local Preview = self.Drawings['Square-Preview'] ();
                local HSV = self.HSV;
                local Position = V2New(math.clamp(MousePosition.X, Preview.Position.X, Preview.Position.X + Preview.Size.X), math.clamp(MousePosition.Y, Preview.Position.Y, Preview.Position.Y + Preview.Size.Y));
                HSV.S = (Position.X - Preview.Position.X) / Preview.Size.X;
                HSV.V = 1 - (Position.Y - Preview.Position.Y) / Preview.Size.Y;
                local EndColor = Color3.fromHSV(HSV.H, HSV.S, HSV.V); if EndColor ~= self.Color then self.ColorChanged:Fire(self.Color); end
                self.Color = EndColor;
                self.Drawings['Circle-Preview'] { Color = EndColor };
                local Pointer = self.Drawings['Circle-CursorSquare'] { Position = Position };
                self.Drawings['Circle-CursorOutlineSquare'] { Position = Pointer.Position };
            end
        end
    end

    function self:HandleInput(Input, P, Type)
        if Type == 'Began' then
            if Input.UserInputType.Name == 'MouseButton1' then
                local Main = self.Drawings['Image-Main'] ();
                local SquareSV = self.Drawings['Square-Preview'] ();
                local MousePosition = V2New(Input.Position.X, Input.Position.Y + 33);
                self.MouseHeld = true;
                local Bounds = Main.Size / 2;
                local Center = Main.Position + Bounds;
                local R = (MousePosition - Center);
        
                if R.Magnitude < Bounds.X and R.Magnitude > Bounds.X - 20 then
                    self.Item = 'Ring';
                end
                
                if MousePosition.X > SquareSV.Position.X and MousePosition.Y > SquareSV.Position.Y and MousePosition.X < SquareSV.Position.X + SquareSV.Size.X and MousePosition.Y < SquareSV.Position.Y + SquareSV.Size.Y then
                    self.Item = 'HL';
                end

                self:UpdatePosition(Input, P);
            end
        elseif Type == 'Changed' then
            if Input.UserInputType.Name == 'MouseMovement' then
                self:UpdatePosition(Input, P);
            end
        elseif Type == 'Ended' and Input.UserInputType.Name == 'MouseButton1' then
            self.Item = nil;
        end
	end
	
	function self:Dispose()
		self.Drawings(false);
		self.UpdatePosition = nil;
		self.HandleInput = nil;
		Connections:DisconnectAll(); -- scuffed tbh
	end

	Connections:Listen(UserInputService.InputBegan, function(Input, Process)
		self:HandleInput(Input, Process, 'Began');
	end);
	Connections:Listen(UserInputService.InputChanged, function(Input, Process)
		if Input.UserInputType.Name == 'MouseMovement' then
			local MousePosition = V2New(Input.Position.X, Input.Position.Y + 33);
			local Cursor = self.Drawings['Triangle-Cursor'] {
				Filled = true;
				Color = Color3.new(0.9, 0.9, 0.9);
				PointA = MousePosition + V2New(0, 0);
				PointB = MousePosition + V2New(12, 14);
				PointC = MousePosition + V2New(0, 18);
				Thickness = 0;
			};
		end
		self:HandleInput(Input, Process, 'Changed');
	end);
	Connections:Listen(UserInputService.InputEnded, function(Input, Process)
		self:HandleInput(Input, Process, 'Ended');
		
		if Input.UserInputType.Name == 'MouseButton1' then
			self.MouseHeld = false
		end
	end)

	ColorPicker.Loading = false

    self.Drawings = Drawings

    return self
end

function SubMenu:Show(Position, Title, Options)
	self.Open = true;

	local Visible = true;
	local BasePosition = Position;
	local BaseSize = V2New(200, 140);
	local End = BasePosition + BaseSize;

	self.Bounds = { BasePosition.X, BasePosition.Y, End.X, End.Y };

	delay(0.025, function()
		if not self.Open then return; end

		Menu:AddMenuInstance('Sub-Main', 'Square', {
			Size		= BaseSize;
			Position	= BasePosition;
			Filled		= false;
			Color		= Colors.Primary.Main;
			Thickness	= 3;
			Visible		= Visible;
		});
	end);
	Menu:AddMenuInstance('Sub-TopBar', 'Square', {
		Position	= BasePosition;
		Size		= V2New(BaseSize.X, 10);
		Color		= Colors.Primary.Dark;
		Filled		= true;
		Visible		= Visible;
	});
	Menu:AddMenuInstance('Sub-TopBarTwo', 'Square', {
		Position 	= BasePosition + V2New(0, 10);
		Size		= V2New(BaseSize.X, 20);
		Color		= Colors.Primary.Main;
		Filled		= true;
		Visible		= Visible;
	});
	Menu:AddMenuInstance('Sub-TopBarText', 'Text', {
		Size 		= 20;
		Position	= shared.MenuDrawingData.Instances['Sub-TopBarTwo'].Position + V2New(15, -3);
		Text		= Title or '';
		Color		= Colors.Secondary.Light;
		Visible		= Visible;
	});
	Menu:AddMenuInstance('Sub-Filling', 'Square', {
		Size		= BaseSize - V2New(0, 30);
		Position	= BasePosition + V2New(0, 30);
		Filled		= true;
		Color		= Colors.Secondary.Main;
		Transparency= .75;
		Visible		= Visible;
	});

	if Options then
		for Index, Option in pairs(Options) do -- currently only supports color and button(but color is a button so), planning on fully rewriting or something
			local function GetName(Name) return ('Sub-%s.%d'):format(Name, Index) end
			local Position = shared.MenuDrawingData.Instances['Sub-Filling'].Position + V2New(20, Index * 25 - 10);
			-- local BasePosition	= shared.MenuDrawingData.Instances.Filling.Position + V2New(30, v.Index * 25 - 10);

			if Option.Type == 'Color' then
				local ColorPreview = Menu:AddMenuInstance(GetName'ColorPreview', 'Circle', {
					Position = Position;
					Color = Option.Color;
					Radius = IsSynapse and 10 or 10;
					NumSides = 10;
					Filled = true;
					Visible = true;
				});
				local Text = Menu:AddMenuInstance(GetName'Text', 'Text', {
					Text = Option.Text;
					Position = ColorPreview.Position + V2New(15, -8);
					Size = 16;
					Color = Colors.Primary.Dark;
					Visible = true;
				});
				UIButtons[#UIButtons + 1] = {
					FromSubMenu = true;
					Option = function() return Option.Function(ColorPreview, BasePosition + V2New(BaseSize.X, 0)) end;
					Instance = Menu:AddMenuInstance(Format('%s_Hitbox', GetName'Button'), 'Square', {
						Position	= Position - V2New(20, 12);
						Size		= V2New(BaseSize.X, 25);
						Visible		= false;
					});
				};
			elseif Option.Type == 'Button' then
				UIButtons[#UIButtons + 1] = {
					FromSubMenu = true;
					Option = Option.Function;
					Instance = Menu:AddMenuInstance(Format('%s_Hitbox', GetName'Button'), 'Square', {
						Size		= V2New(BaseSize.X, 20) - V2New(20, 0);
						Visible		= true;
						Transparency= .5;
						Position	= Position - V2New(10, 10);
						Color		= Colors.Secondary.Light;
						Filled		= true;
					});
				};
				local Text		= Menu:AddMenuInstance(Format('%s_Text', GetName'Text'), 'Text', {
					Text		= Option.Text;
					Size		= 18;
					Position	= Position + V2New(5, -10);
					Visible		= true;
					Color		= Colors.Primary.Dark;
				});
			end
		end
	end
end

function SubMenu:Hide()
	self.Open = false;

	for i, v in pairs(shared.MenuDrawingData.Instances) do
		if i:sub(1, 3) == 'Sub' then
			v.Visible = false;

			if i:sub(4, 4) == ':' then -- ';' = Temporary so remove
				v:Remove();
				shared.MenuDrawingData.Instance[i] = nil;
			end
		end
	end

	for i, Button in pairs(UIButtons) do
		if Button.FromSubMenu then
			UIButtons[i] = nil;
		end
	end

	spawn(function() -- stupid bug happens if i dont use this
		for i = 1, 10 do
			if shared.CurrentColorPicker then -- dont know why 'CurrentColorPicker' isnt a variable in this
				shared.CurrentColorPicker:Dispose();
			end
			wait(0.1);
		end
	end)

	CurrentColorPicker = nil;
end

function CreateMenu(NewPosition) -- Create Menu
	MenuLoaded = false;
	UIButtons  = {};
	Sliders	   = {};

	local BaseSize = V2New(300, 625);
	local BasePosition = NewPosition or V2New(Camera.ViewportSize.X / 8 - (BaseSize.X / 2), Camera.ViewportSize.Y / 2 - (BaseSize.Y / 2));

	BasePosition = V2New(math.clamp(BasePosition.X, 0, Camera.ViewportSize.X), math.clamp(BasePosition.Y, 0, Camera.ViewportSize.Y));

	Menu:AddMenuInstance('CrosshairX', 'Line', {
		Visible			= false;
		Color			= Color3.new(0, 1, 0);
		Transparency	= 1;
		Thickness		= 1;
	});
	Menu:AddMenuInstance('CrosshairY', 'Line', {
		Visible			= false;
		Color			= Color3.new(0, 1, 0);
		Transparency	= 1;
		Thickness		= 1;
	});

	delay(.025, function() -- since zindex doesnt exist
		Menu:AddMenuInstance('Main', 'Square', {
			Size		= BaseSize;
			Position	= BasePosition;
			Filled		= false;
			Color		= Colors.Primary.Main;
			Thickness	= 3;
			Visible		= true;
		});
	end);
	Menu:AddMenuInstance('TopBar', 'Square', {
		Position	= BasePosition;
		Size		= V2New(BaseSize.X, 15);
		Color		= Colors.Primary.Dark;
		Filled		= true;
		Visible		= true;
	});
	Menu:AddMenuInstance('TopBarTwo', 'Square', {
		Position 	= BasePosition + V2New(0, 15);
		Size		= V2New(BaseSize.X, 45);
		Color		= Colors.Primary.Main;
		Filled		= true;
		Visible		= true;
	});
	Menu:AddMenuInstance('TopBarText', 'Text', {
		Size 		= 25;
		Position	= shared.MenuDrawingData.Instances.TopBarTwo.Position + V2New(25, 10);
		Text		= 'Unnamed ESP';
		Color		= Colors.Secondary.Light;
		Visible		= true;
		Transparency= 1; -- proto outline fix
		Outline 	= true;
		OutlineOpacity = 0.5;
	});
	Menu:AddMenuInstance('TopBarTextBR', 'Text', {
		Size 		= 18;
		Position	= shared.MenuDrawingData.Instances.TopBarTwo.Position + V2New(BaseSize.X - 75, 25);
		Text		= 'by ic3w0lf';
		Color		= Colors.Secondary.Light;
		Visible		= true;
		Transparency= 1;
		Outline 	= true;
		OutlineOpacity = 0.5;
	});
	Menu:AddMenuInstance('Filling', 'Square', {
		Size		= BaseSize - V2New(0, 60);
		Position	= BasePosition + V2New(0, 60);
		Filled		= true;
		Color		= Colors.Secondary.Main;
		Transparency= .35;
		Visible		= true;
	});

	local CPos = 0;

	GetTableData(Options)(function(i, v)
		if typeof(v.Value) == 'boolean' and not IsStringEmpty(v.Text) and v.Text ~= nil then
			CPos 				= CPos + 25;
			local BaseSize		= V2New(BaseSize.X, 30);
			local BasePosition	= shared.MenuDrawingData.Instances.Filling.Position + V2New(30, v.Index * 25 - 10);
			UIButtons[#UIButtons + 1] = {
				Option = v;
				Instance = Menu:AddMenuInstance(Format('%s_Hitbox', v.Name), 'Square', {
					Position	= BasePosition - V2New(30, 15);
					Size		= BaseSize;
					Visible		= false;
				});
			};
			Menu:AddMenuInstance(Format('%s_OuterCircle', v.Name), 'Circle', {
				Radius		= 10;
				Position	= BasePosition;
				Color		= Colors.Secondary.Light;
				Filled		= true;
				Visible		= true;
			});
			Menu:AddMenuInstance(Format('%s_InnerCircle', v.Name), 'Circle', {
				Radius		= 7;
				Position	= BasePosition;
				Color		= Colors.Secondary.Dark;
				Filled		= true;
				Visible		= v.Value;
			});
			Menu:AddMenuInstance(Format('%s_Text', v.Name), 'Text', {
				Text		= v.Text;
				Size		= 20;
				Position	= BasePosition + V2New(20, -10);
				Visible		= true;
				Color		= Colors.Secondary.Light;
				Transparency= 1;
				Outline		= true;
				OutlineOpacity = 0.5;
			});
		end
	end)
	GetTableData(Options)(function(i, v) -- just to make sure certain things are drawn before or after others, too lazy to actually sort table
		if typeof(v.Value) == 'number' then
			CPos 				= CPos + 25;

			local BaseSize		= V2New(BaseSize.X, 30);
			local BasePosition	= shared.MenuDrawingData.Instances.Filling.Position + V2New(0, CPos - 10);

			local Line			= Menu:AddMenuInstance(Format('%s_SliderLine', v.Name), 'Square', {
				Transparency	= 1;
				Color			= Colors.Secondary.Light;
				-- Thickness		= 3;
				Filled			= true;
				Visible			= true;
				Position 		= BasePosition + V2New(15, -5);
				Size 			= BaseSize - V2New(30, 10);
				Transparency	= 0.5;
			});
			local Slider		= Menu:AddMenuInstance(Format('%s_Slider', v.Name), 'Square', {
				Visible			= true;
				Filled			= true;
				Color			= Colors.Primary.Dark;
				Size			= V2New(5, Line.Size.Y);
				Transparency	= 0.5;
			});
			local Text			= Menu:AddMenuInstance(Format('%s_Text', v.Name), 'Text', {
				Text			= v.Text;
				Size			= 20;
				Center			= true;
				Transparency	= 1;
				Outline			= true;
				OutlineOpacity  = 0.5;
				Visible			= true;
				Color			= Colors.White;
			}); Text.Position	= Line.Position + (Line.Size / 2) - V2New(0, Text.TextBounds.Y / 1.75);
			local AMT			= Menu:AddMenuInstance(Format('%s_AmountText', v.Name), 'Text', {
				Text			= tostring(v.Value);
				Size			= 22;
				Center			= true;
				Transparency	= 1;
				Outline			= true;
				OutlineOpacity  = 0.5;
				Visible			= true;
				Color			= Colors.White;
				Position		= Text.Position;
			});

			local CSlider = {Slider = Slider; Line = Line; Min = v.AllArgs[4]; Max = v.AllArgs[5]; Option = v};
			local Dummy = Instance.new'NumberValue';

			Dummy:GetPropertyChangedSignal'Value':Connect(function()
				Text.Transparency = Dummy.Value;
				-- Text.OutlineTransparency = 1 - Dummy.Value;
				AMT.Transparency = 1 - Dummy.Value;
			end);

			Dummy.Value = 1;

			function CSlider:ShowValue(Bool)
				self.ShowingValue = Bool;

				TweenService:Create(Dummy, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Value = Bool and 0 or 1 }):Play();
			end

			Sliders[#Sliders + 1] = CSlider;

			-- local Percent = (v.Value / CSlider.Max) * 100;
			-- local Size = math.abs(Line.From.X - Line.To.X);
			-- local Value = Size * (Percent / 100); -- this shit's inaccurate but fuck it i'm not even gonna bother fixing it

			Slider.Position = Line.Position + V2New(35, 0);
			
			v.BaseSize = BaseSize;
			v.BasePosition = BasePosition;
			-- AMT.Position = BasePosition + V2New(BaseSize.X - AMT.TextBounds.X - 10, -10)
		end
	end)
	local FirstItem = false;
	GetTableData(Options)(function(i, v) -- just to make sure certain things are drawn before or after others, too lazy to actually sort table
		if typeof(v.Value) == 'EnumItem' then
			CPos 				= CPos + (not FirstItem and 30 or 25);
			FirstItem			= true;

			local BaseSize		= V2New(BaseSize.X, FirstItem and 30 or 25);
			local BasePosition	= shared.MenuDrawingData.Instances.Filling.Position + V2New(0, CPos - 10);

			UIButtons[#UIButtons + 1] = {
				Option = v;
				Instance = Menu:AddMenuInstance(Format('%s_Hitbox', v.Name), 'Square', {
					Size		= V2New(BaseSize.X, 20) - V2New(30, 0);
					Visible		= true;
					Transparency= .5;
					Position	= BasePosition + V2New(15, -10);
					Color		= Colors.Secondary.Light;
					Filled		= true;
				});
			};
			local Text		= Menu:AddMenuInstance(Format('%s_Text', v.Name), 'Text', {
				Text		= v.Text;
				Size		= 20;
				Position	= BasePosition + V2New(20, -10);
				Visible		= true;
				Color		= Colors.Secondary.Light;
				Transparency= 1;
				Outline		= true;
				OutlineOpacity = 0.5;
			});
			local BindText	= Menu:AddMenuInstance(Format('%s_BindText', v.Name), 'Text', {
				Text		= tostring(v.Value):match'%w+%.%w+%.(.+)';
				Size		= 20;
				Position	= BasePosition;
				Visible		= true;
				Color		= Colors.Secondary.Light;
				Transparency= 1;
				Outline		= true;
				OutlineOpacity = 0.5;
			});

			Options[i].BaseSize = BaseSize;
			Options[i].BasePosition = BasePosition;
			BindText.Position = BasePosition + V2New(BaseSize.X - BindText.TextBounds.X - 20, -10);
		end
	end)
	GetTableData(Options)(function(i, v) -- just to make sure certain things are drawn before or after others, too lazy to actually sort table
		if typeof(v.Value) == 'function' then
			local BaseSize		= V2New(BaseSize.X, 30);
			local BasePosition	= shared.MenuDrawingData.Instances.Filling.Position + V2New(0, CPos + (25 * v.AllArgs[4]) - 35);

			UIButtons[#UIButtons + 1] = {
				Option = v;
				Instance = Menu:AddMenuInstance(Format('%s_Hitbox', v.Name), 'Square', {
					Size		= V2New(BaseSize.X, 20) - V2New(30, 0);
					Visible		= true;
					Transparency= .5;
					Position	= BasePosition + V2New(15, -10);
					Color		= Colors.Secondary.Light;
					Filled		= true;
				});
			};
			local Text		= Menu:AddMenuInstance(Format('%s_Text', v.Name), 'Text', {
				Text		= v.Text;
				Size		= 20;
				Position	= BasePosition + V2New(20, -10);
				Visible		= true;
				Color		= Colors.Secondary.Light;
				Transparency= 1;
				Outline		= true;
				OutlineOpacity = 0.5;
			});

			-- BindText.Position = BasePosition + V2New(BaseSize.X - BindText.TextBounds.X - 10, -10);
		end
	end)

	delay(.1, function()
		MenuLoaded = true;
	end);

	-- this has to be at the bottom cuz proto drawing api doesnt have zindex :triumph:	
	Menu:AddMenuInstance('Cursor1', 'Line', {
		Visible			= false;
		Color			= Color3.new(1, 0, 0);
		Transparency	= 1;
		Thickness		= 2;
	});
	Menu:AddMenuInstance('Cursor2', 'Line', {
		Visible			= false;
		Color			= Color3.new(1, 0, 0);
		Transparency	= 1;
		Thickness		= 2;
	});
	Menu:AddMenuInstance('Cursor3', 'Line', {
		Visible			= false;
		Color			= Color3.new(1, 0, 0);
		Transparency	= 1;
		Thickness		= 2;
	});
end

CreateMenu();
delay(0.1, function()
	SubMenu:Show(V2New()); -- Create the submenu
	SubMenu:Hide();
end);

shared.UESP_InputChangedCon = UserInputService.InputChanged:Connect(function(input)
	if input.UserInputType.Name == 'MouseMovement' and Options.MenuOpen.Value then
		for i, v in pairs(Sliders) do
			local Values = {
				v.Line.Position.X;
				v.Line.Position.Y;
				v.Line.Position.X + v.Line.Size.X;
				v.Line.Position.Y + v.Line.Size.Y;
			};
			if MouseHoveringOver(Values) then
				v:ShowValue(true);
			else
				if not MouseHeld then v:ShowValue(false); end
			end
		end
	end
end)
shared.UESP_InputBeganCon = UserInputService.InputBegan:Connect(function(input)
	if input.UserInputType.Name == 'MouseButton1' and Options.MenuOpen.Value then
		MouseHeld = true;
		local Bar = Menu:GetInstance'TopBar';
		local Values = {
			Bar.Position.X;
			Bar.Position.Y;
			Bar.Position.X + Bar.Size.X;
			Bar.Position.Y + Bar.Size.Y;
		}
		if MouseHoveringOver(Values) then
			DraggingUI = true;
			DragOffset = Menu:GetInstance'Main'.Position - GetMouseLocation();
		else
			for i, v in pairs(Sliders) do
				local Values = {
					v.Line.Position.X;
					v.Line.Position.Y;
					v.Line.Position.X + v.Line.Size.X;
					v.Line.Position.Y + v.Line.Size.Y;
					-- v.Line.From.X	- (v.Slider.Radius);
					-- v.Line.From.Y	- (v.Slider.Radius);
					-- v.Line.To.X		+ (v.Slider.Radius);
					-- v.Line.To.Y		+ (v.Slider.Radius);
				};
				if MouseHoveringOver(Values) then
					DraggingWhat = v;
					Dragging = true;
					break
				end
			end

			if not Dragging then
				local Values = {
					TracerPosition.X - 10;
					TracerPosition.Y - 10;
					TracerPosition.X + 10;
					TracerPosition.Y + 10;
				};
				if MouseHoveringOver(Values) then
					DragTracerPosition = true;
				end
			end
		end
	end
end)
shared.UESP_InputEndedCon = UserInputService.InputEnded:Connect(function(input)
	if input.UserInputType.Name == 'MouseButton1' and Options.MenuOpen.Value then
		MouseHeld = false;
		DragTracerPosition = false;
		local IgnoreOtherInput = false;

		if SubMenu.Open and not MouseHoveringOver(SubMenu.Bounds) then
			if CurrentColorPicker and IsMouseOverDrawing(CurrentColorPicker.Drawings['Square-Background']()) then IgnoreOtherInput = true; end
			if not IgnoreOtherInput then SubMenu:Hide() end
		end

		if not IgnoreOtherInput then
			for i, v in pairs(UIButtons) do
				if SubMenu.Open and MouseHoveringOver(SubMenu.Bounds) and not v.FromSubMenu then continue end

				local Values = {
					v.Instance.Position.X;
					v.Instance.Position.Y;
					v.Instance.Position.X + v.Instance.Size.X;
					v.Instance.Position.Y + v.Instance.Size.Y;
				};
				if MouseHoveringOver(Values) then
					v.Option();
					IgnoreOtherInput = true;
					break -- prevent clicking 2 options
				end
			end
			for i, v in pairs(Sliders) do
				if IgnoreOtherInput then break end

				local Values = {
					v.Line.Position.X;
					v.Line.Position.Y;
					v.Line.Position.X + v.Line.Size.X;
					v.Line.Position.Y + v.Line.Size.Y;
				};
				if not MouseHoveringOver(Values) then
					v:ShowValue(false);
				end
			end
		end
	elseif input.UserInputType.Name == 'MouseButton2' and Options.MenuOpen.Value and not DragTracerPosition then
		local Values = {
			TracerPosition.X - 10;
			TracerPosition.Y - 10;
			TracerPosition.X + 10;
			TracerPosition.Y + 10;
		}
		if MouseHoveringOver(Values) then
			DragTracerPosition = false;
			TracerPosition = V2New(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y - 135);
		end
	elseif input.UserInputType.Name == 'Keyboard' then
		if Binding then
			BindedKey = input.KeyCode;
			Binding = false;
		elseif input.KeyCode == Options.MenuKey.Value or (input.KeyCode == Enum.KeyCode.Home and UserInputService:IsKeyDown(Enum.KeyCode.LeftControl)) then
			Options.MenuOpen();
		elseif input.KeyCode == Options.ToggleKey.Value then
			Options.Enabled();
		elseif input.KeyCode.Name == 'F1' and UserInputService:IsMouseButtonPressed(1) and shared.am_ic3 then -- hehe hiden spectate feature cuz why not
			local HD, LPlayer, LCharacter = 0.95;

			for i, Player in pairs(Players:GetPlayers()) do
				local Character = GetCharacter(Player);

				if Player ~= LocalPlayer and Player ~= Spectating and Character and Character:FindFirstChild'HumanoidRootPart' then
					local Head = Character:FindFirstChild'Head';
					local Humanoid = Character:FindFirstChildOfClass'Humanoid';
					
					if Head then
						local Distance  = (Camera.CFrame.Position - Head.Position).Magnitude;
						
						if Distance > Options.MaxDistance.Value then continue; end

						local Direction = -(Camera.CFrame.Position - Mouse.Hit.Position).unit;
						local Relative  = Character.Head.Position - Camera.CFrame.Position;
						local Unit      = Relative.unit;

						local DP = Direction:Dot(Unit);

						if DP > HD then
							HD = DP;
							LPlayer = Player;
							LCharacter = Character;
						end
					end
				end
			end
			
			if LPlayer and LPlayer ~= Spectating and LCharacter then
				Camera.CameraSubject = LCharacter.Head;
				Spectating = LPlayer;
			else
				if LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass'Humanoid' then
					Camera.CameraSubject = LocalPlayer.Character:FindFirstChildOfClass'Humanoid';
					Spectating = nil;
				end
			end
		end
	end
end)

local function CameraCon() -- unnamed esp v1 sucks
	workspace.CurrentCamera:GetPropertyChangedSignal'ViewportSize':Connect(function()
		TracerPosition = V2New(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y - 135);
	end);
end

CameraCon();

local function ToggleMenu()
	if Options.MenuOpen.Value then
		GetTableData(shared.MenuDrawingData.Instances)(function(i, v)
			if OldData[v] then
				pcall(Set, v, 'Visible', true);
			end
		end)
	else
		GetTableData(shared.MenuDrawingData.Instances)(function(i, v)
			OldData[v] = v.Visible;
			if v.Visible then
				pcall(Set, v, 'Visible', false);
			end
		end)
	end
end

local LastRayIgnoreUpdate, RayIgnoreList = 0, {}

local function CheckRay(Instance, Distance, Position, Unit)
	local Pass = true;
	local Model = Instance;

	if Distance > 999 then return false; end

	if Instance.ClassName == 'Player' then
		Model = GetCharacter(Instance);
	end

	if not Model then
		Model = Instance.Parent;

		if Model.Parent == workspace then
			Model = Instance;
		end
	end

	if not Model then return false end

	local _Ray = Ray.new(Position, Unit * Distance)

	if tick() - LastRayIgnoreUpdate > 3 then
		LastRayIgnoreUpdate = tick()

		table.clear(RayIgnoreList)

		table.insert(RayIgnoreList, LocalPlayer.Character)
		table.insert(RayIgnoreList, Camera)
		
		if Mouse.TargetFilter then table.insert(RayIgnoreList, Mouse.TargetFilter) end

		if #IgnoreList > 64 then
			while #IgnoreList > 64 do
				table.remove(IgnoreList, 1)
			end
		end

		for i, v in pairs(IgnoreList) do table.insert(RayIgnoreList, v) end
	end

	local Hit = workspace:FindPartOnRayWithIgnoreList(_Ray, RayIgnoreList)

	if Hit and not Hit:IsDescendantOf(Model) then
		Pass = false;
		if Hit.Transparency >= .3 or not Hit.CanCollide and Hit.ClassName ~= Terrain then -- Detect invisible walls
			table.insert(IgnoreList, Hit)
			-- IgnoreList[#IgnoreList + 1] = Hit;
		end
	end

	return Pass;
end

local function CheckTeam(Player)
	if Player.Neutral and LocalPlayer.Neutral then return true; end
	return Player.TeamColor == LocalPlayer.TeamColor;
end

local CustomTeam = CustomTeams[game.PlaceId];

if CustomTeam ~= nil then
	if CustomTeam.Initialize then ypcall(CustomTeam.Initialize) end

	CheckTeam = CustomTeam.CheckTeam;
end

local function CheckPlayer(Player, Character)
	if not Options.Enabled.Value then return false end

	local Pass = true;
	local Distance = 0;

	if Player ~= LocalPlayer and Character then
		if not Options.ShowTeam.Value and CheckTeam(Player) then
			Pass = false;
		end

		local Head = Character:FindFirstChild'Head';

		if Pass and Character and Head then
			Distance = (Camera.CFrame.Position - Head.Position).Magnitude;
			if Options.VisCheck.Value then
				Pass = CheckRay(Player, Distance, Camera.CFrame.Position, (Head.Position - Camera.CFrame.Position).unit);
			end
			if Distance > Options.MaxDistance.Value then
				Pass = false;
			end
		end
	else
		Pass = false;
	end

	return Pass, Distance;
end

local function CheckDistance(Instance)
	if not Options.Enabled.Value then return false end

	local Pass = true;
	local Distance = 0;

	if Instance ~= nil then
		Distance = (Camera.CFrame.Position - Instance.Position).Magnitude;
		if Options.VisCheck.Value then
			Pass = CheckRay(Instance, Distance, Camera.CFrame.Position, (Instance.Position - Camera.CFrame.Position).unit);
		end
		if Distance > Options.MaxDistance.Value then
			Pass = false;
		end
	else
		Pass = false;
	end

	return Pass, Distance;
end

local function UpdatePlayerData()
	if (tick() - LastRefresh) > (Options.RefreshRate.Value / 1000) then
		LastRefresh = tick();
		if CustomESP and Options.Enabled.Value then
			local a, b = pcall(CustomESP);
		end
		for i, v in pairs(RenderList.Instances) do
			if v.Instance ~= nil and v.Instance.Parent ~= nil and v.Instance:IsA'BasePart' then
				local Data = shared.InstanceData[v.Instance:GetDebugId()] or { Instances = {}; DontDelete = true };

				Data.Instance = v.Instance;

				Data.Instances['OutlineTracer'] = Data.Instances['OutlineTracer'] or NewDrawing'Line'{
					Transparency	= 0.75;
					Thickness		= 5;
					Color 			= Color3.new(0.1, 0.1, 0.1);
				}
				Data.Instances['Tracer'] = Data.Instances['Tracer'] or NewDrawing'Line'{
					Transparency	= 1;
					Thickness		= 2;
				}
				Data.Instances['NameTag'] = Data.Instances['NameTag'] or NewDrawing'Text'{
					Size			= Options.TextSize.Value;
					Center			= true;
					Outline			= Options.TextOutline.Value;
					Visible			= true;
				};
				Data.Instances['DistanceTag'] = Data.Instances['DistanceTag'] or NewDrawing'Text'{
					Size			= Options.TextSize.Value - 1;
					Center			= true;
					Outline			= Options.TextOutline.Value;
					Visible			= true;
				};

				local NameTag		= Data.Instances['NameTag'];
				local DistanceTag	= Data.Instances['DistanceTag'];
				local Tracer		= Data.Instances['Tracer'];
				local OutlineTracer	= Data.Instances['OutlineTracer'];

				local Pass, Distance = CheckDistance(v.Instance);

				if Pass then
					local ScreenPosition, Vis = WorldToViewport(v.Instance.Position);
					local Color = v.Color;
					local OPos = Camera.CFrame:pointToObjectSpace(v.Instance.Position);
					
					if ScreenPosition.Z < 0 then
						local AT = math.atan2(OPos.Y, OPos.X) + math.pi;
						OPos = CFrame.Angles(0, 0, AT):vectorToWorldSpace((CFrame.Angles(0, math.rad(89.9), 0):vectorToWorldSpace(V3New(0, 0, -1))));
					end
					
					local Position = WorldToViewport(Camera.CFrame:pointToWorldSpace(OPos));

					if Options.ShowTracers.Value then
						Tracer.Transparency = math.clamp(Distance / 200, 0.45, 0.8);
						Tracer.Visible	= true;
						Tracer.From		= TracerPosition;
						Tracer.To		= V2New(Position.X, Position.Y);
						Tracer.Color	= Color;
						OutlineTracer.Visible = true;
						OutlineTracer.Transparency = Tracer.Transparency - 0.1;
						OutlineTracer.From = Tracer.From;
						OutlineTracer.To = Tracer.To;
						OutlineTracer.Color	= Color3.new(0.1, 0.1, 0.1);
					else
						Tracer.Visible = false;
						OutlineTracer.Visible = false;
					end

					if ScreenPosition.Z > 0 then
						local ScreenPositionUpper = ScreenPosition;
						
						if Options.ShowName.Value then
							LocalPlayer.NameDisplayDistance = 0;
							NameTag.Visible		= true;
							NameTag.Text		= v.Text;
							NameTag.Size		= Options.TextSize.Value;
							NameTag.Outline		= Options.TextOutline.Value;
							NameTag.Position	= V2New(ScreenPositionUpper.X, ScreenPositionUpper.Y);
							NameTag.Color		= Color;
							if Drawing.Fonts and shared.am_ic3 then -- CURRENTLY SYNAPSE ONLY :MEGAHOLY:
								NameTag.Font	= Drawing.Fonts.Monospace;
							end
						else
							LocalPlayer.NameDisplayDistance = 100;
							NameTag.Visible = false;
						end
						if Options.ShowDistance.Value or Options.ShowHealth.Value then
							DistanceTag.Visible		= true;
							DistanceTag.Size		= Options.TextSize.Value - 1;
							DistanceTag.Outline		= Options.TextOutline.Value;
							DistanceTag.Color		= Color3.new(1, 1, 1);
							if Drawing.Fonts and shared.am_ic3 then -- CURRENTLY SYNAPSE ONLY :MEGAHOLY:
								NameTag.Font	= Drawing.Fonts.Monospace;
							end

							local Str = '';

							if Options.ShowDistance.Value then
								Str = Str .. Format('[%d] ', Distance);
							end

							DistanceTag.Text = Str;
							DistanceTag.Position = V2New(ScreenPositionUpper.X, ScreenPositionUpper.Y) + V2New(0, NameTag.TextBounds.Y);
						else
							DistanceTag.Visible = false;
						end
					else
						NameTag.Visible			= false;
						DistanceTag.Visible		= false;
					end
				else
					NameTag.Visible			= false;
					DistanceTag.Visible		= false;
					Tracer.Visible			= false;
					OutlineTracer.Visible	= false;
				end

				Data.Instances['NameTag'] 		= NameTag;
				Data.Instances['DistanceTag']	= DistanceTag;
				Data.Instances['Tracer']		= Tracer;
				Data.Instances['OutlineTracer']	= OutlineTracer;

				shared.InstanceData[v.Instance:GetDebugId()] = Data;
			end
		end
		for i, v in pairs(Players:GetPlayers()) do
			local Data = shared.InstanceData[v.Name] or { Instances = {}; };

			Data.Instances['Box'] = Data.Instances['Box'] or LineBox:Create{Thickness = 4};
			Data.Instances['OutlineTracer'] = Data.Instances['OutlineTracer'] or NewDrawing'Line'{
				Transparency	= 1;
				Thickness		= 3;
				Color			= Color3.new(0.1, 0.1, 0.1);
			}
			Data.Instances['Tracer'] = Data.Instances['Tracer'] or NewDrawing'Line'{
				Transparency	= 1;
				Thickness		= 1;
			}
			Data.Instances['HeadDot'] = Data.Instances['HeadDot'] or NewDrawing'Circle'{
				Filled			= true;
				NumSides		= 30;
			}
			Data.Instances['NameTag'] = Data.Instances['NameTag'] or NewDrawing'Text'{
				Size			= Options.TextSize.Value;
				Center			= true;
				Outline			= Options.TextOutline.Value;
				OutlineOpacity	= 1;
				Visible			= true;
			};
			Data.Instances['DistanceHealthTag'] = Data.Instances['DistanceHealthTag'] or NewDrawing'Text'{
				Size			= Options.TextSize.Value - 1;
				Center			= true;
				Outline			= Options.TextOutline.Value;
				OutlineOpacity	= 1;
				Visible			= true;
			};

			local NameTag		= Data.Instances['NameTag'];
			local DistanceTag	= Data.Instances['DistanceHealthTag'];
			local Tracer		= Data.Instances['Tracer'];
			local OutlineTracer	= Data.Instances['OutlineTracer'];
			local HeadDot		= Data.Instances['HeadDot'];
			local Box			= Data.Instances['Box'];

			local Character = GetCharacter(v);
			local Pass, Distance = CheckPlayer(v, Character);

			if Pass and Character then
				local Humanoid = Character:FindFirstChildOfClass'Humanoid';
				local Head = Character:FindFirstChild'Head';
				local HumanoidRootPart = Character:FindFirstChild(CustomRootPartName or 'HumanoidRootPart')

				local Dead = (Humanoid and Humanoid:GetState().Name == 'Dead')
				if type(GetAliveState) == 'function' then
					Dead = (not GetAliveState(v, Character))
				end

				if Character ~= nil and Head and HumanoidRootPart and not Dead then
					local ScreenPosition, Vis = WorldToViewport(Head.Position);
					local Color = Rainbow and Color3.fromHSV(tick() * 128 % 255/255, 1, 1) or (CheckTeam(v) and TeamColor or EnemyColor); Color = Options.ShowTeamColor.Value and v.TeamColor.Color or Color;
					local OPos = Camera.CFrame:pointToObjectSpace(Head.Position);
					
					if ScreenPosition.Z < 0 then
						local AT = math.atan2(OPos.Y, OPos.X) + math.pi;
						OPos = CFrame.Angles(0, 0, AT):vectorToWorldSpace((CFrame.Angles(0, math.rad(89.9), 0):vectorToWorldSpace(V3New(0, 0, -1))));
					end
					
					local Position = WorldToViewport(Camera.CFrame:pointToWorldSpace(OPos));

					if Options.ShowTracers.Value then
						if TracerPosition.X >= Camera.ViewportSize.X or TracerPosition.Y >= Camera.ViewportSize.Y or TracerPosition.X < 0 or TracerPosition.Y < 0 then
							TracerPosition = V2New(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y - 135);
						end

						Tracer.Visible	= true;
						Tracer.Transparency = math.clamp(1 - (Distance / 200), 0.25, 0.75);
						Tracer.From		= TracerPosition;
						Tracer.To		= V2New(Position.X, Position.Y);
						Tracer.Color	= Color;
						OutlineTracer.From = Tracer.From;
						OutlineTracer.To = Tracer.To;
						OutlineTracer.Transparency = Tracer.Transparency - 0.15;
						OutlineTracer.Visible = true;
					else
						Tracer.Visible = false;
						OutlineTracer.Visible = false;
					end
					
					if ScreenPosition.Z > 0 then
						local ScreenPositionUpper	= WorldToViewport((HumanoidRootPart:GetRenderCFrame() * CFrame.new(0, Head.Size.Y + HumanoidRootPart.Size.Y + (Options.YOffset.Value / 25), 0)).Position);
						local Scale					= Head.Size.Y / 2;

						if Options.ShowName.Value then
							NameTag.Visible		= true;
							NameTag.Text		= v.Name .. (CustomPlayerTag and CustomPlayerTag(v) or '');
							NameTag.Size		= Options.TextSize.Value;
							NameTag.Outline		= Options.TextOutline.Value;
							NameTag.Position	= V2New(ScreenPositionUpper.X, ScreenPositionUpper.Y) - V2New(0, NameTag.TextBounds.Y);
							NameTag.Color		= Color;
							NameTag.Color		= Color;
							NameTag.OutlineColor= Color3.new(0.05, 0.05, 0.05);
							NameTag.Transparency= 0.85;
							if Drawing.Fonts and shared.am_ic3 then -- CURRENTLY SYNAPSE ONLY :MEGAHOLY:
								NameTag.Font	= Drawing.Fonts.Monospace;
							end
						else
							NameTag.Visible = false;
						end
						if Options.ShowDistance.Value or Options.ShowHealth.Value then
							DistanceTag.Visible		= true;
							DistanceTag.Size		= Options.TextSize.Value - 1;
							DistanceTag.Outline		= Options.TextOutline.Value;
							DistanceTag.Color		= Color3.new(1, 1, 1);
							DistanceTag.Transparency= 0.85;
							if Drawing.Fonts and shared.am_ic3 then -- CURRENTLY SYNAPSE ONLY :MEGAHOLY:
								NameTag.Font	= Drawing.Fonts.Monospace;
							end

							local Str = '';

							if Options.ShowDistance.Value then
								Str = Str .. Format('[%d] ', Distance);
							end
							if Options.ShowHealth.Value then								
								if typeof(Humanoid) == 'Instance' then
									Str = Str .. Format('[%d/%d] [%s%%]', Humanoid.Health, Humanoid.MaxHealth, math.floor(Humanoid.Health / Humanoid.MaxHealth * 100));
								elseif type(GetHealth) == 'function' then
									local health, maxHealth = GetHealth(v)
									
									if type(health) == 'number' and type(maxHealth) == 'number' then
										Str = Str .. Format('[%d/%d] [%s%%]', health, maxHealth, math.floor(health / maxHealth * 100))
									end
								end
							end

							DistanceTag.Text = Str;
							DistanceTag.OutlineColor = Color3.new(0.05, 0.05, 0.05);
							DistanceTag.Position = (NameTag.Visible and NameTag.Position + V2New(0, NameTag.TextBounds.Y) or V2New(ScreenPositionUpper.X, ScreenPositionUpper.Y));
						else
							DistanceTag.Visible = false;
						end
						if Options.ShowDot.Value and Vis then
							local Top			= WorldToViewport((Head.CFrame * CFrame.new(0, Scale, 0)).Position);
							local Bottom		= WorldToViewport((Head.CFrame * CFrame.new(0, -Scale, 0)).Position);
							local Radius		= math.abs((Top - Bottom).Y);

							HeadDot.Visible		= true;
							HeadDot.Color		= Color;
							HeadDot.Position	= V2New(ScreenPosition.X, ScreenPosition.Y);
							HeadDot.Radius		= Radius;
						else
							HeadDot.Visible = false;
						end
						if Options.ShowBoxes.Value and Vis and HumanoidRootPart then
							local Body = {
								Head;
								Character:FindFirstChild'Left Leg' or Character:FindFirstChild'LeftLowerLeg';
								Character:FindFirstChild'Right Leg' or Character:FindFirstChild'RightLowerLeg';
								Character:FindFirstChild'Left Arm' or Character:FindFirstChild'LeftLowerArm';
								Character:FindFirstChild'Right Arm' or Character:FindFirstChild'RightLowerArm';
							}
							Box:Update(HumanoidRootPart.CFrame, V3New(2, 3, 1) * (Scale * 2), Color, nil, shared.am_ic3 and Body);
						else
							Box:SetVisible(false);
						end
					else
						NameTag.Visible			= false;
						DistanceTag.Visible		= false;
						HeadDot.Visible			= false;
						
						Box:SetVisible(false);
					end
				else
					NameTag.Visible			= false;
					DistanceTag.Visible		= false;
					HeadDot.Visible			= false;
					Tracer.Visible			= false;
					OutlineTracer.Visible 	= false;
					
					Box:SetVisible(false);
				end
			else
				NameTag.Visible			= false;
				DistanceTag.Visible		= false;
				HeadDot.Visible			= false;
				Tracer.Visible			= false;
				OutlineTracer.Visible 	= false;

				Box:SetVisible(false);
			end

			shared.InstanceData[v.Name] = Data;
		end
	end
end

local LastInvalidCheck = 0;

local function Update()
	if tick() - LastInvalidCheck > 0.3 then
		LastInvalidCheck = tick();

		if Camera.Parent ~= workspace then
			Camera = workspace.CurrentCamera;
			CameraCon();
			WTVP = Camera.WorldToViewportPoint;
		end

		for i, v in pairs(shared.InstanceData) do
			if not Players:FindFirstChild(tostring(i)) then
				if not shared.InstanceData[i].DontDelete then
					GetTableData(v.Instances)(function(i, obj)
						obj.Visible = false;
						obj:Remove();
						v.Instances[i] = nil;
					end)
					shared.InstanceData[i] = nil;
				else
					if shared.InstanceData[i].Instance == nil or shared.InstanceData[i].Instance.Parent == nil then
						GetTableData(v.Instances)(function(i, obj)
							obj.Visible = false;
							obj:Remove();
							v.Instances[i] = nil;
						end)
						shared.InstanceData[i] = nil;
					end
				end
			end
		end
	end

	local CX = Menu:GetInstance'CrosshairX';
	local CY = Menu:GetInstance'CrosshairY';
	
	if Options.Crosshair.Value then
		CX.Visible = true;
		CY.Visible = true;

		CX.To = V2New((Camera.ViewportSize.X / 2) - 8, (Camera.ViewportSize.Y / 2));
		CX.From = V2New((Camera.ViewportSize.X / 2) + 8, (Camera.ViewportSize.Y / 2));
		CY.To = V2New((Camera.ViewportSize.X / 2), (Camera.ViewportSize.Y / 2) - 8);
		CY.From = V2New((Camera.ViewportSize.X / 2), (Camera.ViewportSize.Y / 2) + 8);
	else
		CX.Visible = false;
		CY.Visible = false;
	end

	if Options.MenuOpen.Value and MenuLoaded then
		local MLocation = GetMouseLocation();
		shared.MenuDrawingData.Instances.Main.Color = Color3.fromHSV(tick() * 24 % 255/255, 1, 1);
		local MainInstance = Menu:GetInstance'Main';
		
		local Values = {
			MainInstance.Position.X;
			MainInstance.Position.Y;
			MainInstance.Position.X + MainInstance.Size.X;
			MainInstance.Position.Y + MainInstance.Size.Y;
		};
		
		if MainInstance and (MouseHoveringOver(Values) or (SubMenu.Open and MouseHoveringOver(SubMenu.Bounds))) then
			Debounce.CursorVis = true;
			
			Menu:UpdateMenuInstance'Cursor1'{
				Visible	= true;
				From	= V2New(MLocation.x, MLocation.y);
				To		= V2New(MLocation.x + 5, MLocation.y + 6);
			}
			Menu:UpdateMenuInstance'Cursor2'{
				Visible	= true;
				From	= V2New(MLocation.x, MLocation.y);
				To		= V2New(MLocation.x, MLocation.y + 8);
			}
			Menu:UpdateMenuInstance'Cursor3'{
				Visible	= true;
				From	= V2New(MLocation.x, MLocation.y + 6);
				To		= V2New(MLocation.x + 5, MLocation.y + 5);
			}
		else
			if Debounce.CursorVis then
				Debounce.CursorVis = false;
				
				Menu:UpdateMenuInstance'Cursor1'{Visible = false};
				Menu:UpdateMenuInstance'Cursor2'{Visible = false};
				Menu:UpdateMenuInstance'Cursor3'{Visible = false};
			end
		end
		if MouseHeld then
			local MousePos = GetMouseLocation();

			if Dragging then
				DraggingWhat.Slider.Position = V2New(math.clamp(MLocation.X - DraggingWhat.Slider.Size.X / 2, DraggingWhat.Line.Position.X, DraggingWhat.Line.Position.X + DraggingWhat.Line.Size.X - DraggingWhat.Slider.Size.X), DraggingWhat.Slider.Position.Y);
				local Percent	= (DraggingWhat.Slider.Position.X - DraggingWhat.Line.Position.X) / ((DraggingWhat.Line.Position.X + DraggingWhat.Line.Size.X - DraggingWhat.Line.Position.X) - DraggingWhat.Slider.Size.X);
				local Value		= CalculateValue(DraggingWhat.Min, DraggingWhat.Max, Percent);
				DraggingWhat.Option(Value);
			elseif DraggingUI then
				Debounce.UIDrag = true;
				local Main = Menu:GetInstance'Main';
				Main.Position = MousePos + DragOffset;
			elseif DragTracerPosition then
				TracerPosition = MousePos;
			end
		else
			Dragging = false;
			DragTracerPosition = false;
			if DraggingUI and Debounce.UIDrag then
				Debounce.UIDrag = false;
				DraggingUI = false;
				CreateMenu(Menu:GetInstance'Main'.Position);
			end
		end
		if not Debounce.Menu then
			Debounce.Menu = true;
			ToggleMenu();
		end
	elseif Debounce.Menu and not Options.MenuOpen.Value then
		Debounce.Menu = false;
		ToggleMenu();
	end
end

RunService:UnbindFromRenderStep(GetDataName);
RunService:UnbindFromRenderStep(UpdateName);

RunService:BindToRenderStep(GetDataName, 300, UpdatePlayerData);
RunService:BindToRenderStep(UpdateName, 199, Update);
   end,
})




















 
 local Slider = PlayerTab:CreateSlider({
    Name = "JumpPower",
    Range = {0, 100},
    Increment = 10,
    Suffix = "JumpPower",
    CurrentValue = 1,
    Flag = "Slider2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.JumpPower = Value
        end
    end,
})

local Button = PlayerTab:CreateButton({
    Name = "Fly (Toggle with E)",
    Callback = function()
    -- Press E to toggle flying

local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local flying = false
local speed = 50  -- Adjust flying speed as desired
local character = player.Character or player.CharacterAdded:Wait()

-- Initialize control table
local ctrl = {f = 0, b = 0, l = 0, r = 0}

-- Function to handle flying
local function fly()
    local humanoid = character:WaitForChild("Humanoid")
    local torso = character:WaitForChild("Torso")
    local bodyGyro = Instance.new("BodyGyro", torso)
    bodyGyro.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
    bodyGyro.CFrame = torso.CFrame

    local bodyVelocity = Instance.new("BodyVelocity", torso)
    bodyVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)
    bodyVelocity.Velocity = Vector3.new(0, 0.1, 0)

    flying = true
    while flying and character:IsDescendantOf(game.Workspace) do
        humanoid.PlatformStand = true

        local moveVector = Vector3.new()
        if ctrl.f + ctrl.b ~= 0 or ctrl.l + ctrl.r ~= 0 then
            speed = speed + 0.5 + (speed / 50)
            if speed > 50 then
                speed = 50
            end
        elseif ctrl.f + ctrl.b == 0 and ctrl.l + ctrl.r == 0 and speed ~= 0 then
            speed = speed - 1
            if speed < 0 then
                speed = 0
            end
        end

        if ctrl.f == 1 then
            moveVector = moveVector + game.Workspace.CurrentCamera.CFrame.lookVector
        elseif ctrl.b == -1 then
            moveVector = moveVector - game.Workspace.CurrentCamera.CFrame.lookVector
        end
        if ctrl.l == -1 then
            moveVector = moveVector - game.Workspace.CurrentCamera.CFrame.rightVector
        elseif ctrl.r == 1 then
            moveVector = moveVector + game.Workspace.CurrentCamera.CFrame.rightVector
        end

        bodyVelocity.Velocity = moveVector * speed
        bodyGyro.CFrame = game.Workspace.CurrentCamera.CFrame * CFrame.Angles(-math.rad(speed * (ctrl.f + ctrl.b)), 0, 0)

        wait()
    end

    bodyGyro:Destroy()
    bodyVelocity:Destroy()
    humanoid.PlatformStand = false
end

-- Toggle flying on/off with E key
mouse.KeyDown:Connect(function(key)
    if key:lower() == "e" then
        if flying then
            flying = false
        else
            flying = true
            fly()
        end
    elseif key:lower() == "w" then
        ctrl.f = 1
    elseif key:lower() == "s" then
        ctrl.b = -1
    elseif key:lower() == "a" then
        ctrl.l = -1
    elseif key:lower() == "d" then
        ctrl.r = 1
    end
end)

mouse.KeyUp:Connect(function(key)
    if key:lower() == "w" then
        ctrl.f = 0
    elseif key:lower() == "s" then
        ctrl.b = 0
    elseif key:lower() == "a" then
        ctrl.l = 0
    elseif key:lower() == "d" then
        ctrl.r = 0
    end
end)

-- Handle character respawn or change
player.CharacterAdded:Connect(function(char)
    character = char
    -- Re-initialize flying state and controls
    flying = false
    ctrl = {f = 0, b = 0, l = 0, r = 0}
    fly()
end)

-- Initial setup
fly()

    end,
 })




 
 
      





local Button = PlayerTab:CreateButton({
    Name = "Reset Character",
    Callback = function()
 -- Function to reset the character by reducing health to zero
local function ResetCharacter()
    -- Get the player's character
    local character = game.Players.LocalPlayer.Character

    -- Check if the character and humanoid exist
    if character and character:FindFirstChild("Humanoid") then
        -- Set the humanoid's health to zero
        character.Humanoid.Health = 0
    end
end

-- Example: Reset character after a certain delay (can be triggered by any event)
  -- Example delay, replace with your event trigger
ResetCharacter()



    end,
 })
 
 













































local Button = PlayerTab:CreateButton({
    Name = "Noclip (Toggle with F)",
    Callback = function()
        local Noclip = nil
        local Clip = true -- Initialize Clip to true, meaning no noclip initially
        
        -- Function to enable noclip
        function noclip()
            Clip = false -- Set Clip to false indicating noclip mode
            local function Nocl()
                if not Clip and game.Players.LocalPlayer.Character then
                    for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                        if v:IsA('BasePart') and v.CanCollide then
                            v.CanCollide = false
                        end
                    end
                end
                wait(0.21) -- Basic optimization
            end
            Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
        end
        
        -- Function to disable noclip
        function clip()
            if Noclip then
                Noclip:Disconnect() -- Disconnect the Stepped connection
                Noclip = nil -- Reset Noclip variable
                -- Reset collision for player's character
                local character = game.Players.LocalPlayer.Character
                if character then
                    for _, v in pairs(character:GetDescendants()) do
                        if v:IsA('BasePart') then
                            v.CanCollide = true
                        end
                    end
                end
            end
            Clip = true -- Set Clip to true indicating regular collision mode
        end
        
        -- Function to toggle noclip mode
        function toggleNoclip()
            if Clip then
                noclip() -- Enable noclip
                print("Noclip enabled")
            else
                clip() -- Disable noclip
                print("Noclip disabled")
            end
        end
        
        -- Example usage of toggling noclip with a key press
        game:GetService('UserInputService').InputBegan:Connect(function(input)
            if input.KeyCode == Enum.KeyCode.F then
                toggleNoclip() -- Toggle noclip mode
            end
        end)
        
        

    end,
 })

local Button = VisualsTab:CreateButton({
   Name = "X-Ray (X to Toggle)",
   Callback = function()
  local xrayEnabled = false
local transparencyValue = 0.3 -- Adjust this value to set the level of transparency

local function setTransparency(transparency)
    for _, part in pairs(workspace:GetDescendants()) do
        if part:IsA("BasePart") and not part:IsDescendantOf(game.Players.LocalPlayer.Character) then
            part.Transparency = transparency
        end
    end
end

local function toggleXray()
    if xrayEnabled then
        setTransparency(0) -- Reset transparency to normal
        xrayEnabled = false
        print("X-ray disabled")
    else
        setTransparency(transparencyValue) -- Set transparency for X-ray vision
        xrayEnabled = true
        print("X-ray enabled")
    end
end

-- Key press event listener to toggle X-ray (using "X" key)
game:GetService('UserInputService').InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.X then
        toggleXray()
    end
end)

   end,
})



local Button = VisualsTab:CreateButton({
   Name = "Crosshair",
   Callback = function()
   local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
screenGui.Name = "CrosshairGUI"

-- Define the size and color for the crosshair lines
local lineThickness = 4
local lineLength = 20
local lineColor = Color3.new(1, 1, 1) -- White color

-- Vertical Line
local verticalLine = Instance.new("Frame", screenGui)
verticalLine.Size = UDim2.new(0, lineThickness, 0, lineLength)
verticalLine.Position = UDim2.new(0.5, -lineThickness / 2, 0.5, -lineLength / 2)
verticalLine.BackgroundColor3 = lineColor
verticalLine.BorderSizePixel = 0

-- Horizontal Line
local horizontalLine = Instance.new("Frame", screenGui)
horizontalLine.Size = UDim2.new(0, lineLength, 0, lineThickness)
horizontalLine.Position = UDim2.new(0.5, -lineLength / 2, 0.5, -lineThickness / 2)
horizontalLine.BackgroundColor3 = lineColor
horizontalLine.BorderSizePixel = 0





   end,
})



local minFOV = 50
local maxFOV = 120

local player = game.Players.LocalPlayer
local camera = game.Workspace.CurrentCamera

-- Create the slider
local Slider = VisualsTab:CreateSlider({
    Name = "FOV Adjuster",
    Range = {minFOV, maxFOV},
    Increment = 1, -- Adjust the FOV increment as desired
    Suffix = " FOV",
    CurrentValue = camera.FieldOfView,
    Flag = "FOVSlider",
    Callback = function(Value)
        -- Update the camera's FOV based on the slider value
        camera.FieldOfView = Value
        print("FOV: " .. camera.FieldOfView)
    end,
})















 















 local Slider = PlayerTab:CreateSlider({
    Name = "Walkspeed",
    Range = {0, 100},
    Increment = 10,
    Suffix = "Speed",
    CurrentValue = 1,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.WalkSpeed = Value
        end
    end,
})


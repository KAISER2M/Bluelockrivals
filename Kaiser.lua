local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local PhantomForcesWindow = Library:NewWindow("Kaiser✨")

local Bladeball = PhantomForcesWindow:NewSection("Main=))")

---------------------------------------------------------------------------------------------------------------------------------------------------------
local Bllladeball = PhantomForcesWindow:NewSection("Main2=))")

------------------------------------------------------------------------------------------------------------------------------------
Bladeball:CreateButton("Grall Ball", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(38.44727325439453, 11.166534423828125, -48.344566345214844)
end)
---------------------------------------------------------------------------------------------------------------------------------------
Bladeball:CreateButton("Auto GoaL 1", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-243.94134521484375, 11.166532516479492, -46.96743392944336)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
Bladeball:CreateButton("Auto GoaL 2", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(320.45465087890625, 11.166534423828125, -44.71014404296875)
end)
------------------------------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------------------------
Bladeball:CreateButton("Shoot Gui", function()
-- Create the GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
 
-- Create a frame to hold the draggable UI elements
local DraggableFrame = Instance.new("Frame")
DraggableFrame.Parent = ScreenGui
DraggableFrame.Size = UDim2.new(0, 300, 0, 200)
DraggableFrame.Position = UDim2.new(0.5, -150, 0.5, -100) -- Centered
DraggableFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
DraggableFrame.BorderSizePixel = 0
DraggableFrame.Draggable = true
DraggableFrame.Active = true
 
-- Create the Shoot button
local ShootButton = Instance.new("TextButton")
ShootButton.Parent = DraggableFrame
ShootButton.Text = "Sút =))"
ShootButton.Size = UDim2.new(0, 150, 0, 50)
ShootButton.Position = UDim2.new(0.5, -75, 0, 10) -- Positioned inside DraggableFrame
ShootButton.BackgroundColor3 = Color3.fromRGB(0, 128, 255)
ShootButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ShootButton.Font = Enum.Font.SourceSansBold
ShootButton.TextSize = 20
 
-- Create a TextBox for custom shot speed input
local SpeedTextBox = Instance.new("TextBox")
SpeedTextBox.Parent = DraggableFrame
SpeedTextBox.Size = UDim2.new(0, 200, 0, 40)
SpeedTextBox.Position = UDim2.new(0.5, -100, 0.6, 0) -- Below the button
SpeedTextBox.Text = "150" -- Default value
SpeedTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
SpeedTextBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
SpeedTextBox.BorderSizePixel = 0
SpeedTextBox.Font = Enum.Font.SourceSans
SpeedTextBox.PlaceholderText = "Enter Speed (e.g., 300)"
SpeedTextBox.TextSize = 20
 
-- Create a label for showing the shot speed
local SpeedLabel = Instance.new("TextLabel")
SpeedLabel.Parent = DraggableFrame
SpeedLabel.Size = UDim2.new(0, 200, 0, 50)
SpeedLabel.Position = UDim2.new(0.5, -100, 0.7, 0) -- Below the textbox
SpeedLabel.Text = "Shot Speed: " .. SpeedTextBox.Text
SpeedLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
SpeedLabel.BackgroundTransparency = 1
SpeedLabel.TextSize = 20
 
-- Update the shot speed label whenever the text changes
SpeedTextBox.FocusLost:Connect(function()
    local inputValue = tonumber(SpeedTextBox.Text)
    if inputValue then
        SpeedLabel.Text = "Shot Speed: " .. inputValue
    else
        SpeedLabel.Text = "Invalid Speed"
    end
end)
 
-- Define the shooting functionality
local function shootFastDown()
    -- Define the target direction for shooting downwards like a goal
    local downwardDirection = Vector3.new(0, -50, -100) -- Aim downward and forward
 
    -- Get the shot speed from the text box (converted to a number)
    local shotPower = tonumber(SpeedTextBox.Text) or 150 -- Default to 150 if input is invalid
 
    -- Fire the server to shoot the ball downward and forward
    local args = {
        [1] = shotPower, -- Shot power
        [4] = downwardDirection -- Target direction (downward)
    }
 
    game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("BallService"):WaitForChild("RE"):WaitForChild("Shoot"):FireServer(unpack(args))
 
    print("Ball shot downward with speed: " .. shotPower)
end
 
-- Connect the button to the function
ShootButton.MouseButton1Click:Connect(shootFastDown)
 
-- Add drag functionality for mobile/PC
local dragging, dragInput, dragStart, startPos
 
-- Function to start dragging
DraggableFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = DraggableFrame.Position
    end
end)
 
-- Function to drag the frame
DraggableFrame.InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - dragStart
        DraggableFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)
 
-- Function to stop dragging
DraggableFrame.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)
end)
-------------------------------------------------------------------------------------------------------------------------------------------------
Bladeball:CreateButton("INFNITY STAMINA", function()
local args = {
    [1] = 0/0
}

game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("StaminaService"):WaitForChild("RE"):WaitForChild("DecreaseStamina"):FireServer(unpack(args))
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------

Bladeball:CreateButton("Speeds", function()
function isNumber(str)
  if tonumber(str) ~= nil or str == 'inf' then
    return true
  end
end
local tspeed = 1
local hb = game:GetService("RunService").Heartbeat
local tpwalking = true
local player = game:GetService("Players")
local lplr = player.LocalPlayer
local chr = lplr.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
while tpwalking and hb:Wait() and chr and hum and hum.Parent do
  if hum.MoveDirection.Magnitude > 0 then
    if tspeed and isNumber(tspeed) then
      chr:TranslateBy(hum.MoveDirection * tonumber(tspeed))
    else
      chr:TranslateBy(hum.MoveDirection)
    end
  end
end
end)

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
Bladeball:CreateButton("Brings Gui", function()
getgenv().TeleportBall = false 
getgenv().onoffgui = true 


local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")


local LocalPlayer = Players.LocalPlayer


local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ToggleButton = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local OnOffToggleButton = Instance.new("TextButton")


ScreenGui.Name = "BallTeleportGUI"
ScreenGui.Parent = game.CoreGui
ScreenGui.ResetOnSpawn = false

Frame.Name = "MainFrame"
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Frame.BorderSizePixel = 2
Frame.Position = UDim2.new(0.4, 0, 0.3, 0)
Frame.Size = UDim2.new(0, 200, 0, 130)
Frame.Active = true
Frame.Draggable = true 

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Title.Size = UDim2.new(1, 0, 0.2, 0)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "Bring ball"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 20

ToggleButton.Name = "ToggleButton"
ToggleButton.Parent = Frame
ToggleButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
ToggleButton.Position = UDim2.new(0.1, 0, 0.3, 0)
ToggleButton.Size = UDim2.new(0.8, 0, 0.25, 0)
ToggleButton.Font = Enum.Font.SourceSansBold
ToggleButton.Text = "Teleport: OFF"
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.TextSize = 18

OnOffToggleButton.Name = "OnOffToggleButton"
OnOffToggleButton.Parent = Frame
OnOffToggleButton.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
OnOffToggleButton.Position = UDim2.new(0.1, 0, 0.6, 0)
OnOffToggleButton.Size = UDim2.new(0.8, 0, 0.25, 0)
OnOffToggleButton.Font = Enum.Font.SourceSansBold
OnOffToggleButton.Text = "Delete gui"
OnOffToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
OnOffToggleButton.TextSize = 18


ToggleButton.MouseButton1Click:Connect(function()
    getgenv().TeleportBall = not getgenv().TeleportBall
    ToggleButton.Text = getgenv().TeleportBall and "Bring: ON" or "Bring: OFF"
end)

OnOffToggleButton.MouseButton1Click:Connect(function()
    getgenv().onoffgui = not getgenv().onoffgui
    Frame.Visible = getgenv().onoffgui
    OnOffToggleButton.Text = getgenv().onoffgui and "Hide GUI" or "Show GUI"
    OnOffToggleButton.BackgroundColor3 = getgenv().onoffgui and Color3.fromRGB(150, 0, 0) or Color3.fromRGB(0, 150, 0)
end)


function teleportToBall()
    local ball = workspace:FindFirstChild("Football") or workspace:FindFirstChild("Ball")
    if ball and ball:IsA("BasePart") then
        LocalPlayer.Character.HumanoidRootPart.CFrame = ball.CFrame + Vector3.new(0, 3, 0) 
    end
end


RunService.RenderStepped:Connect(function()
    if getgenv().TeleportBall then
        teleportToBall()
    end
end)
end)
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
Bladeball:CreateButton("Ball To", function()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character:WaitForChild("HumanoidRootPart")
local ball = game.Workspace:WaitForChild("Football")

-- Define Goal Boxes
local homeBox = game.Workspace.AI.Home.DiveBox
local awayBox = game.Workspace.AI.Away.DiveBox
local originalBallSize = ball.Size  

-- Create GUI
local gui = Instance.new("ScreenGui")
gui.Parent = player:WaitForChild("PlayerGui")

-- Toggle Button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 150, 0, 50)
button.Position = UDim2.new(0, 10, 0.5, -25)
button.Text = "GK Mode: OFF"
button.Parent = gui

-- GK Mode Variables
local gkMode = false
local gkLoop = nil

-- Get Player's Team
local function getTeam()
    if player.Team and player.Team.Name == "Home" then
        return "Home", homeBox
    elseif player.Team and player.Team.Name == "Away" then
        return "Away", awayBox
    else
        return nil, nil
    end
end

-- **Diving Function**
local function dive(direction)
    if direction == "Left" then
        game:GetService("ReplicatedStorage").Controllers.AnimatonController.DiveL:Fire()
    elseif direction == "Right" then
        game:GetService("ReplicatedStorage").Controllers.AnimatonController.DiveR:Fire()
    elseif direction == "Forward" then
        game:GetService("ReplicatedStorage").Controllers.AnimatonController.DiveF:Fire()
    end
end

-- **Increase Ball Hitbox**
local function modifyHitbox(enable)
    if enable then
        ball.Size = Vector3.new(originalBallSize.X * 4, originalBallSize.Y * 4, originalBallSize.Z * 4) -- **4x Bigger**
    else
        ball.Size = originalBallSize -- Reset to normal size
    end
end

-- **Main GK Function**
local function autoGK()
    while gkMode do
        if not character or not character.Parent then
            character = player.Character or player.CharacterAdded:Wait()
            humanoid = character:WaitForChild("Humanoid")
            rootPart = character:WaitForChild("HumanoidRootPart")
        end

        if not ball or not ball.Parent then
            ball = game.Workspace:WaitForChild("Football")
        end

        local team, diveBox = getTeam()
        if team and diveBox and ball then
            local ballPos = ball.Position
            local boxPos = diveBox.Position
            local distance = (ballPos - boxPos).Magnitude

            -- **Stop Ball if it's about to enter the goal**
            if distance < 15 then
                ball.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                ball.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
            end
            
            -- **Teleport to intercept & dive instantly**
            if distance < 25 then
                rootPart.Position = Vector3.new(ballPos.X, rootPart.Position.Y, boxPos.Z)  -- Move to block the shot
                
                -- **Decide which way to dive based on ball direction**
                local ballDirection = ball.AssemblyLinearVelocity
                if math.abs(ballDirection.X) > math.abs(ballDirection.Z) then
                    if ballDirection.X > 0 then
                        dive("Right")
                    else
                        dive("Left")
                    end
                else
                    dive("Forward")
                end
            end
        end
        task.wait(0.01) -- **Ultra-fast reaction time**
    end
end

-- **Button Click Event**
button.MouseButton1Click:Connect(function()
    gkMode = not gkMode
    button.Text = gkMode and "GK Mode: ON" or "GK Mode: OFF"

    if gkMode then
        gkLoop = task.spawn(autoGK)
        modifyHitbox(true)  -- **Bigger hitbox**
    else
        if gkLoop then
            task.cancel(gkLoop)
        end
        modifyHitbox(false)  -- **Reset hitbox**
    end
end)
end)
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
Bladeball:CreateButton("Bóng Magic", function()
L=game:service'Players'.LocalPlayer;game:service'RunService'.Heartbeat:Connect(function()if L.Character and L.Character:FindFirstChild'HumanoidRootPart'then local B=workspace:FindFirstChild'Football'if B and B.AssemblyLinearVelocity.Magnitude<40 then B:ApplyImpulse((L.Character.HumanoidRootPart.Position+Vector3.new(0,-2.5,0)-B.Position).Unit*18)end end end)
end)
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
Bladeball:CreateButton("Auto Dẽ Banh", function()
if not getgenv().AutoDribbleSettings then 
    getgenv().AutoDribbleSettings={
        Enabled=true, -- ik what this is
        range=22} -- change the range if it doesnt work good for you
end;

local S=getgenv().AutoDribbleSettings;
local R=game:GetService("ReplicatedStorage");
local P=game:GetService("Players");
local U=game:GetService("RunService");
local B=R.Packages.Knit.Services.BallService.RE.Dribble;
local A=require(R.Assets.Animations);

if not B or not A then return end;

local L=P.LocalPlayer;
local C=L.Character or L.CharacterAdded:Wait();
local H=C:WaitForChild("HumanoidRootPart");
local M=C:WaitForChild("Humanoid");

local function G(s)
    if not A.Dribbles[s]then return nil end;
    local I=Instance.new("Animation");
    I.AnimationId=A.Dribbles[s];
    return M:LoadAnimation(I)
end;

local function T(p)
    if p==L then return false end;
    local c=p.Character;
    if not c then return false end;
    local V=c.Values and c.Values.Sliding;
    if V and V.Value==true then return true end;
    local h=c:FindFirstChildOfClass("Humanoid");
    if h and h.MoveDirection.Magnitude>0 and h.WalkSpeed==0 then return true end;
    return false
end;

local function O(p)
    if not L.Team or not p.Team then return false end;
    return L.Team~=p.Team
end;

local function D(d)
    if not S.Enabled or not C.Values.HasBall.Value then return end;
    B:FireServer();
    local s=L.PlayerStats.Style.Value;
    local t=G(s);
    if t then t:Play();t:AdjustSpeed(math.clamp(1+(10-d)/10,1,2))end;
    local F=workspace:FindFirstChild("Football");
    if F then F.AssemblyLinearVelocity=Vector3.new(0,0,0);
    F.CFrame=C.HumanoidRootPart.CFrame*CFrame.new(0,-2.5,0)end
end;

U.Heartbeat:Connect(function()
    if not S.Enabled or not C or not H then return end;
    for _,p in pairs(P:GetPlayers())do 
        if O(p)and T(p)then 
            local r=p.Character and p.Character:FindFirstChild("HumanoidRootPart")
            if r then 
                local d=(r.Position-H.Position).Magnitude;
                if d<S.range then 
                    D(d);
                    break 
                end 
            end 
        end 
    end 
end);

-- GUI Code (Added at the End)
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local RangeLabel = Instance.new("TextLabel")
local RangeInput = Instance.new("TextBox")
local OnLabel = Instance.new("TextLabel") -- Green "ON" Label

-- Parent GUI to PlayerGui
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Frame Properties
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Frame.Size = UDim2.new(0, 200, 0, 120) -- Increased height for "ON" label
Frame.Position = UDim2.new(0, 50, 0, 100)
Frame.BorderSizePixel = 2
Frame.BorderColor3 = Color3.fromRGB(255, 255, 255)

-- Title
Title.Parent = Frame
Title.Text = "Legit Auto Dribble"
Title.Size = UDim2.new(1, 0, 0, 30)
Title.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 18

-- Range Label
RangeLabel.Parent = Frame
RangeLabel.Position = UDim2.new(0, 10, 0, 40)
RangeLabel.Size = UDim2.new(0, 180, 0, 20)
RangeLabel.Text = "Range: " .. tostring(S.range)
RangeLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
RangeLabel.BackgroundTransparency = 1
RangeLabel.Font = Enum.Font.SourceSansBold
RangeLabel.TextSize = 16

-- Range Input
RangeInput.Parent = Frame
RangeInput.Position = UDim2.new(0, 10, 0, 60)
RangeInput.Size = UDim2.new(0, 180, 0, 30)
RangeInput.Text = tostring(S.range)
RangeInput.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
RangeInput.TextColor3 = Color3.fromRGB(255, 255, 255)
RangeInput.Font = Enum.Font.SourceSansBold
RangeInput.TextSize = 18
RangeInput.ClearTextOnFocus = false

-- Green "ON" Label
OnLabel.Parent = Frame
OnLabel.Position = UDim2.new(0, 10, 0, 95) -- Positioned below input
OnLabel.Size = UDim2.new(0, 180, 0, 20)
OnLabel.Text = "ON"
OnLabel.TextColor3 = Color3.fromRGB(0, 255, 0) -- Green color
OnLabel.BackgroundTransparency = 1
OnLabel.Font = Enum.Font.SourceSansBold
OnLabel.TextSize = 18

-- Update Range on Input Change
RangeInput.FocusLost:Connect(function()
    local newRange = tonumber(RangeInput.Text)
    if newRange and newRange > 0 then
        S.range = newRange
        RangeLabel.Text = "Range: " .. tostring(newRange)
    else
        RangeInput.Text = tostring(S.range) -- Reset if invalid input
    end
end)
end)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Bllladeball:CreateButton("AUTO GK", function()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character:WaitForChild("HumanoidRootPart")
local ball = game.Workspace:WaitForChild("Football")

-- Define DiveBoxes
local homeBox = game.Workspace.AI.Home.DiveBox
local awayBox = game.Workspace.AI.Away.DiveBox

-- Create GUI
local gui = Instance.new("ScreenGui")
gui.Parent = player:WaitForChild("PlayerGui")

-- Create Button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 150, 0, 50)
button.Position = UDim2.new(0, 10, 0.5, -25)
button.Text = "GK Mode: OFF"
button.Parent = gui

-- GK mode toggle
local gkMode = false
local gkLoop = nil

-- Detect Player's Team
local function getTeam()
    if player.Team and player.Team.Name == "Home" then
        return "Home", homeBox
    elseif player.Team and player.Team.Name == "Away" then
        return "Away", awayBox
    else
        return nil, nil
    end
end

-- Function to Save Shots
local function autoGK()
    while gkMode do
        if not character or not character.Parent then
            character = player.Character or player.CharacterAdded:Wait()
            humanoid = character:WaitForChild("Humanoid")
            rootPart = character:WaitForChild("HumanoidRootPart")
        end

        if not ball or not ball.Parent then
            ball = game.Workspace:WaitForChild("Football")
        end

        local team, diveBox = getTeam()
        if team and diveBox and ball then
            local ballPos = ball.Position
            local boxPos = diveBox.Position
            local distance = (ballPos - boxPos).Magnitude

            -- **If the ball is about to enter the goal, stop it completely**
            if distance < 10 then
                ball.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                ball.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
            end
        end
        task.wait(0.02) -- Fast reaction time
    end
end

-- Button Click Event
button.MouseButton1Click:Connect(function()
    gkMode = not gkMode
    button.Text = gkMode and "GK Mode: ON" or "GK Mode: OFF"

    if gkMode then
        gkLoop = task.spawn(autoGK)
    else
        if gkLoop then
            task.cancel(gkLoop) -- Stop the function completely
        end
    end
end)
end)
------------------------------------------------------------------------------------------------------------------------------------
Bllladeball:CreateButton("Menu2", function()
-- Create the GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create a draggable frame
local DraggableFrame = Instance.new("Frame")
DraggableFrame.Parent = ScreenGui
DraggableFrame.Size = UDim2.new(0, 300, 0, 250)
DraggableFrame.Position = UDim2.new(0.5, -150, 0.5, -125) -- Centered
DraggableFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
DraggableFrame.BorderSizePixel = 0
DraggableFrame.Draggable = true
DraggableFrame.Active = true

-- Create "Grab Ball" button (Top Center)
local GrabBallButton = Instance.new("TextButton")
GrabBallButton.Parent = DraggableFrame
GrabBallButton.Text = "Grab Ball"
GrabBallButton.Size = UDim2.new(0, 120, 0, 40)
GrabBallButton.Position = UDim2.new(0.5, -60, 0.1, 0) -- Top Center
GrabBallButton.BackgroundColor3 = Color3.fromRGB(0, 200, 100)
GrabBallButton.TextColor3 = Color3.fromRGB(255, 255, 255)
GrabBallButton.Font = Enum.Font.SourceSansBold
GrabBallButton.TextSize = 20

-- Create "SCORE (HOME)" button (Top Left) with (Y) for PC users
local HomeGoalButton = Instance.new("TextButton")
HomeGoalButton.Parent = ScreenGui
HomeGoalButton.Text = "SCORE (HOME) (Y)"
HomeGoalButton.Size = UDim2.new(0, 180, 0, 40)
HomeGoalButton.Position = UDim2.new(0, 10, 0, 10) -- Top Left Corner
HomeGoalButton.BackgroundColor3 = Color3.fromRGB(0, 128, 255)
HomeGoalButton.TextColor3 = Color3.fromRGB(255, 255, 255)
HomeGoalButton.Font = Enum.Font.SourceSansBold
HomeGoalButton.TextSize = 18

-- Create "SCORE (AWAY)" button (Top Right) with (T) for PC users
local AwayGoalButton = Instance.new("TextButton")
AwayGoalButton.Parent = ScreenGui
AwayGoalButton.Text = "SCORE (AWAY) (T)"
AwayGoalButton.Size = UDim2.new(0, 180, 0, 40)
AwayGoalButton.Position = UDim2.new(1, -190, 0, 10) -- Top Right Corner
AwayGoalButton.BackgroundColor3 = Color3.fromRGB(0, 128, 255)
AwayGoalButton.TextColor3 = Color3.fromRGB(255, 255, 255)
AwayGoalButton.Font = Enum.Font.SourceSansBold
AwayGoalButton.TextSize = 18

-- Label for status
local StatusLabel = Instance.new("TextLabel")
StatusLabel.Parent = DraggableFrame
StatusLabel.Text = "Waiting for action..."
StatusLabel.Size = UDim2.new(1, 0, 0.2, 0)
StatusLabel.Position = UDim2.new(0, 0, 0.7, 0)
StatusLabel.BackgroundTransparency = 1
StatusLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
StatusLabel.TextSize = 16
StatusLabel.Font = Enum.Font.SourceSansBold

-- Label for "Made by Truong"
local CreditLabel = Instance.new("TextLabel")
CreditLabel.Parent = DraggableFrame
CreditLabel.Text = "Made by @Elnanocruz2"
CreditLabel.Size = UDim2.new(1, 0, 0.2, 0)
CreditLabel.Position = UDim2.new(0, 0, 0.9, 0)
CreditLabel.BackgroundTransparency = 1
CreditLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
CreditLabel.TextSize = 14
CreditLabel.Font = Enum.Font.SourceSansBold

-- Function to grab the ball
local function grabBall()
    local position = Vector3.new(38.3548, 11.1665, -48.4440) -- Ball's spawn position
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local hrp = character:WaitForChild("HumanoidRootPart")
    hrp.CFrame = CFrame.new(position) -- Teleport to the ball's position
    StatusLabel.Text = "Ball grabbed!"
end

-- Function to calculate shooting power dynamically with even more precision
local function calculateShotPower(goalPosition)
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local hrp = character:WaitForChild("HumanoidRootPart")

    -- Calculate the distance between the player and the goal
    local distance = (goalPosition - hrp.Position).Magnitude

    -- Improved formula for shot power calculation
    local shotPower = math.clamp(distance * 0.7, 200, 1000) -- Adjusted multiplier for more precise power calculation

    return shotPower
end

-- Function to shoot the ball directly toward a goal with precision
local function autoShoot(goalPosition)
    local shotPower = calculateShotPower(goalPosition) -- Calculate the required power

    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local hrp = character:WaitForChild("HumanoidRootPart")

    -- Calculate the direction to the goal
    local shootDirection = (goalPosition - hrp.Position).Unit -- Direction to goal

    -- Make sure the shot is horizontal (flat) by setting Y component to 0
    shootDirection = Vector3.new(shootDirection.X, 0, shootDirection.Z).Unit

    -- Fire the shot with the calculated power and adjusted direction
    local args = {
        [1] = shotPower, -- Dynamic shot power (200 - 1000)
        [4] = shootDirection * 100 -- Direction towards the goal (horizontal)
    }

    -- Trigger the server to make the shot
    game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("BallService"):WaitForChild("RE"):WaitForChild("Shoot"):FireServer(unpack(args))
    print("Shot made towards goal with power: " .. shotPower)

    StatusLabel.Text = "Shot made with power: " .. shotPower
end

-- SCORE (HOME) logic for mobile and PC
HomeGoalButton.MouseButton1Click:Connect(function()
    local homeGoalPosition = Vector3.new(-243.3819, 11.1665, -50.3188) -- Replace with the actual position of the home goal
    StatusLabel.Text = "Shooting at Home Goal..."
    autoShoot(homeGoalPosition)
end)

-- SCORE (AWAY) logic for mobile and PC
AwayGoalButton.MouseButton1Click:Connect(function()
    local awayGoalPosition = Vector3.new(319.6294, 11.1665, -62.0231) -- Replace with the actual position of the away goal
    StatusLabel.Text = "Shooting at Away Goal..."
    autoShoot(awayGoalPosition)
end)

-- Connect the "Grab Ball" button
GrabBallButton.MouseButton1Click:Connect(grabBall)

-- Add drag functionality for mobile/PC
local dragging, dragInput, dragStart, startPos

DraggableFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = DraggableFrame.Position
    end
end)

DraggableFrame.InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - dragStart
        DraggableFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

DraggableFrame.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)

-- PC Keyboard logic to trigger shooting using keys (Y for Home and T for Away)
local UserInputService = game:GetService("UserInputService")

UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if gameProcessedEvent then return end

    if input.KeyCode == Enum.KeyCode.Y then
        local homeGoalPosition = Vector3.new(-243.3819, 11.1665, -50.3188)
        StatusLabel.Text = "Shooting at Home Goal (via Keyboard)..."
        autoShoot(homeGoalPosition)
    elseif input.KeyCode == Enum.KeyCode.T then
        local awayGoalPosition = Vector3.new(319.6294, 11.1665, -62.0231)
        StatusLabel.Text = "Shooting at Away Goal (via Keyboard)..."
        autoShoot(awayGoalPosition)
    end
end)
end)
------------------------------------------------------------------------------------------------------------------------------------
Bllladeball:CreateButton("Bring Ball V2", function()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")
local humanoid = character:FindFirstChildOfClass("Humanoid")
local ball = game.Workspace:FindFirstChild("Football")

-- GUI Setup
local gui = Instance.new("ScreenGui")
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- Function to create buttons
local function createButton(name, position, text)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 150, 0, 50)
    button.Position = position
    button.Text = text
    button.Parent = gui
    button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.BorderSizePixel = 2
    button.Font = Enum.Font.SourceSansBold
    button.TextScaled = true
    return button
end

-- Create GUI Buttons
local attractBallButton = createButton("AttractBall", UDim2.new(0, 10, 0.5, -25), "Attract Ball: OFF")
local defenseAssistButton = createButton("DefenseAssist", UDim2.new(0, 10, 0.5, -80), "Defense Assist: OFF")

local attractBall = false
local defenseAssist = false

-- Function to move the ball towards the player
local function moveBallToPlayer()
    while attractBall do
        ball = game.Workspace:FindFirstChild("Football")
        if ball then
            local playerPosition = rootPart.Position
            local ballPosition = ball.Position
            local distance = (playerPosition - ballPosition).Magnitude

            -- Stop movement once the ball reaches the player
            if distance < 3 then
                attractBall = false
                attractBallButton.Text = "Attract Ball: OFF"
                ball.AssemblyLinearVelocity = Vector3.zero
                ball.AssemblyAngularVelocity = Vector3.zero
                return
            end

            -- Strong pull towards player
            local direction = (playerPosition - ballPosition).Unit
            ball.AssemblyLinearVelocity = direction * 350  

            -- Opponent avoidance
            for _, opponent in ipairs(game.Players:GetPlayers()) do
                if opponent.Team ~= player.Team and opponent.Character and opponent.Character:FindFirstChild("HumanoidRootPart") then
                    local opponentPos = opponent.Character.HumanoidRootPart.Position
                    if (ballPosition - opponentPos).Magnitude < 15 then
                        local avoidance = (ballPosition - opponentPos).Unit * 200
                        ball.AssemblyLinearVelocity = ball.AssemblyLinearVelocity + avoidance
                    end
                end
            end
        end
        task.wait(0.01)
    end
end

-- Function for defense assist
local function defenseAssistFunction()
    while defenseAssist do
        local closestOpponent = nil
        local closestDistance = math.huge  

        for _, opponent in ipairs(game.Players:GetPlayers()) do
            if opponent ~= player and opponent.Team ~= player.Team and opponent.Character and opponent.Character:FindFirstChild("HumanoidRootPart") then
                local opponentPos = opponent.Character.HumanoidRootPart.Position
                local distance = (rootPart.Position - opponentPos).Magnitude

                if distance < closestDistance then
                    closestDistance = distance
                    closestOpponent = opponent.Character.HumanoidRootPart
                end
            end
        end

        if closestOpponent then
            local direction = (closestOpponent.Position - rootPart.Position).Unit
            local newPosition = rootPart.Position + direction * 1.5  -- Slower movement
            rootPart.CFrame = CFrame.lookAt(rootPart.Position, closestOpponent.Position)
            humanoid:Move(Vector3.new(direction.X, 0, direction.Z), true)
        end

        task.wait(0.1)
    end
end

-- Button Toggles
attractBallButton.MouseButton1Click:Connect(function()
    attractBall = not attractBall
    attractBallButton.Text = attractBall and "Attract Ball: ON" or "Attract Ball: OFF"
    if attractBall then task.spawn(moveBallToPlayer) end
end)

defenseAssistButton.MouseButton1Click:Connect(function()
    defenseAssist = not defenseAssist
    defenseAssistButton.Text = defenseAssist and "Defense Assist: ON" or "Defense Assist: OFF"
    if defenseAssist then task.spawn(defenseAssistFunction) end
end)
end)
---------------------------------------------------------------------------------------------------------------------------------------------------------
Bllladeball:CreateButton("Auto Gk V2", function()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character:WaitForChild("HumanoidRootPart")
local ball = game.Workspace:WaitForChild("Football")

-- GUI Setup
local gui = Instance.new("ScreenGui")
gui.Parent = player:WaitForChild("PlayerGui")

-- Ensure GUI is visible
gui.ResetOnSpawn = false

-- Create "Lock to Ball (GK)" Button
local lockToBallButton = Instance.new("TextButton")
lockToBallButton.Size = UDim2.new(0, 150, 0, 50)
lockToBallButton.Position = UDim2.new(0, 10, 0, 10)
lockToBallButton.Text = "Lock to Ball (GK): OFF"
lockToBallButton.Parent = gui
lockToBallButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
lockToBallButton.TextColor3 = Color3.fromRGB(255, 255, 255)
lockToBallButton.BorderSizePixel = 1

-- States
local lockToBall = false
local originalBallSize = ball.Size
local hitboxMultiplier = 3

-- Your Goal Position
local myGoal = game.Workspace.AI.Home.DiveBox.Position

-- Stop Ball Function
local function stopBallCompletely()
    if ball then
        ball.AssemblyLinearVelocity = Vector3.zero
        ball.AssemblyAngularVelocity = Vector3.zero
        ball.Velocity = Vector3.zero
        ball.RotVelocity = Vector3.zero
        ball.Anchored = true
        task.wait(0.1)
        ball.Anchored = false
    end
end

-- Modify Ball Hitbox
local function modifyBallSize(enable)
    if enable then
        ball.Size = originalBallSize * hitboxMultiplier
    else
        ball.Size = originalBallSize
    end
end

-- Lock to Ball (GK) + Improved Diving System
local function lockToBallFunction()
    local animController = game:GetService("ReplicatedStorage").Controllers.AnimatonController
    while lockToBall do
        if ball then
            rootPart.CFrame = CFrame.lookAt(rootPart.Position, ball.Position)

            -- If the ball is near **your** goal, teleport & dive
            if (ball.Position - myGoal).Magnitude < 40 then
                rootPart.CFrame = CFrame.new(ball.Position + Vector3.new(0, 3, 0))
                
                -- **Prevent Unwanted Jumping**
                humanoid.JumpPower = 0
                humanoid:Move(Vector3.new(0, -10, 0)) -- Forces the player downward to stop extra jump

                stopBallCompletely()

                -- Detect where the ball is going
                local ballVelocity = ball.AssemblyLinearVelocity
                local ballSpeed = ballVelocity.Magnitude
                local ballDirection = ballVelocity.Unit

                -- **Instant Reaction Diving**
                if ballSpeed > 0 then
                    if ballDirection.X > 0.5 then
                        animController.DiveR:Play() -- Dive Right
                    elseif ballDirection.X < -0.5 then
                        animController.DiveL:Play() -- Dive Left
                    elseif ballDirection.Y > 0.5 then
                        animController.DiveF:Play() -- Dive Forward
                    else
                        animController.DiveF:Play() -- Default to Forward
                    end
                end

                -- **Re-enable Jump after Catching**
                task.wait(0.5)
                humanoid.JumpPower = 50 -- Reset to normal jump power
            end
        end
        task.wait(0.01) -- **Super Fast Reaction Time**
    end
end

-- "Lock to Ball (GK)" Button Toggle
lockToBallButton.MouseButton1Click:Connect(function()
    lockToBall = not lockToBall
    lockToBallButton.Text = lockToBall and "Lock to Ball (GK): ON" or "Lock to Ball (GK): OFF"
    
    -- **Modify Hitbox Properly**
    modifyBallSize(lockToBall)

    -- **Start/Stop the Lock-to-Ball Function**
    if lockToBall then 
        task.spawn(lockToBallFunction) 
    end
end)
end)
---------------------------------------------------------------------------------------------------------------------------------------------------------
Bllladeball:CreateButton("Hitbox GK", function()
-- Variables
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
local hitboxButton = Instance.new("TextButton")
local tpButton = Instance.new("TextButton")
local watermark = Instance.new("TextLabel") -- เพิ่มลายน้ำ
local isHitboxEnabled = false

-- Find the Hitbox MeshPart
local function findHitbox()
    local character = player.Character or player.CharacterAdded:Wait()
    local hitbox = character:FindFirstChild("Hitbox")
    
    if not hitbox then
        -- If Hitbox doesn't exist, create it
        hitbox = Instance.new("MeshPart")
        hitbox.Name = "Hitbox"
        hitbox.Transparency = 0.5
        hitbox.CanCollide = false
        hitbox.Material = Enum.Material.Neon
        hitbox.Color = Color3.fromRGB(255, 0, 0) -- Red color for visibility
        hitbox.Size = Vector3.new(3.5, 3.5, 3.5)
        hitbox.Parent = character
    end
    
    return hitbox
end

-- Find the Football MeshPart
local function findFootball()
    local football = workspace:FindFirstChild("Football")
    if football and football:IsA("MeshPart") then
        return football
    end
    return nil
end

-- Setup GUI
gui.Name = "GameGUI"
gui.ResetOnSpawn = false
gui.Parent = player.PlayerGui

-- Create Hitbox Button - ปรับขนาดให้เล็กลง
hitboxButton.Name = "Hitbox15"
hitboxButton.Size = UDim2.new(0, 80, 0, 40) -- ลดขนาดจาก 100x50 เป็น 80x40
hitboxButton.Position = UDim2.new(0, 10, 0.5, -20) -- ปรับตำแหน่งให้เหมาะสม
hitboxButton.Text = "Hitbox: OFF"
hitboxButton.BackgroundColor3 = Color3.new(0, 0, 0) -- Black when off
hitboxButton.TextColor3 = Color3.new(1, 1, 1) -- White text
hitboxButton.Font = Enum.Font.SourceSansBold
hitboxButton.TextSize = 16 -- ลดขนาดตัวอักษรจาก 18 เป็น 16
hitboxButton.BorderSizePixel = 2
hitboxButton.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
hitboxButton.Parent = gui

-- Create TP Button - ปรับขนาดให้เล็กลง
tpButton.Name = "tpButton"
tpButton.Size = UDim2.new(0, 80, 0, 40) -- ลดขนาดจาก 100x50 เป็น 80x40
tpButton.Position = UDim2.new(0, 10, 0.5, -70) -- ปรับตำแหน่งให้เหมาะสม
tpButton.Text = "tp"
tpButton.BackgroundColor3 = Color3.new(0, 0, 1) -- Blue button
tpButton.TextColor3 = Color3.new(1, 1, 1) -- White text
tpButton.Font = Enum.Font.SourceSansBold
tpButton.TextSize = 16 -- ลดขนาดตัวอักษรจาก 18 เป็น 16
tpButton.BorderSizePixel = 2
tpButton.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
tpButton.Parent = gui



-- Toggle Hitbox Function
local function toggleHitbox()
    local hitbox = findHitbox()
    
    if isHitboxEnabled then
        -- Disable hitbox
        hitbox.Size = Vector3.new(2.5, 2.5, 2.5)
        hitbox.Transparency = 1 -- Hide hitbox
        hitboxButton.Text = "Hitbox: OFF"
        hitboxButton.BackgroundColor3 = Color3.new(0, 0, 0) -- Black
        isHitboxEnabled = false
    else
        -- Enable hitbox
        hitbox.Size = Vector3.new(15, 15, 15)
        hitbox.Transparency = 0.5 -- Show hitbox
        hitboxButton.Text = "Hitbox: ON"
        hitboxButton.BackgroundColor3 = Color3.new(1, 1, 1) -- White
        isHitboxEnabled = true
    end
end

-- Teleport to Football Function
local function teleportToFootball()
    local character = player.Character
    if not character then return end
    
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart then return end
    
    local football = findFootball()
    if football then
        humanoidRootPart.CFrame = football.CFrame
    else
        -- Show notification if football not found
        local notification = Instance.new("TextLabel")
        notification.Size = UDim2.new(0, 200, 0, 50)
        notification.Position = UDim2.new(0.5, -100, 0.8, 0)
        notification.Text = "Football not found!"
        notification.BackgroundColor3 = Color3.new(1, 0, 0)
        notification.TextColor3 = Color3.new(1, 1, 1)
        notification.Font = Enum.Font.SourceSansBold
        notification.TextSize = 18
        notification.Parent = gui
        
        -- Remove notification after 2 seconds
        spawn(function()
            wait(2)
            notification:Destroy()
        end)
    end
end

-- Connect button clicks
hitboxButton.MouseButton1Click:Connect(toggleHitbox)
tpButton.MouseButton1Click:Connect(teleportToFootball)

-- Handle character respawn
player.CharacterAdded:Connect(function()
    wait(1) -- Wait for character to fully load
    if isHitboxEnabled then
        local hitbox = findHitbox()
        hitbox.Size = Vector3.new(15, 15, 15)
        hitbox.Transparency = 0.5
    end
end)

-- Mobile compatibility
if game:GetService("UserInputService").TouchEnabled then
    hitboxButton.Size = UDim2.new(0, 100, 0, 50) -- ลดขนาดจาก 120x60 เป็น 100x50
    hitboxButton.TextSize = 22 -- ลดขนาดตัวอักษรจาก 24 เป็น 22
    tpButton.Size = UDim2.new(0, 100, 0, 50) -- ลดขนาดจาก 120x60 เป็น 100x50
    tpButton.TextSize = 22 -- ลดขนาดตัวอักษรจาก 24 เป็น 22
    watermark.Size = UDim2.new(0, 180, 0, 40) -- คงเดิม
    watermark.TextSize = 26 -- คงเดิม
end

print("Nahi Hub loaded successfully!")
end)
---------------------------------------------------------------------------------------------------------------------------------------------------------
Bllladeball:CreateButton("Control ball", function()
-- Football Control Script (Fixed version)
-- Creates a toggle button that allows the player to control a Football object
-- Naxin Hub
 
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
 
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
 
-- Remove existing GUI if it exists (prevents duplicate buttons)
if playerGui:FindFirstChild("FootballControlGui") then
    playerGui:FindFirstChild("FootballControlGui"):Destroy()
end
 
-- Create GUI elements
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "FootballControlGui"
screenGui.Parent = playerGui
 
local controlButton = Instance.new("TextButton")
controlButton.Name = "FootballControlButton"
controlButton.Size = UDim2.new(0, 100, 0, 30) -- Smaller button size
controlButton.Position = UDim2.new(0, 10, 0.5, 0) -- Left edge of screen, vertically centered
controlButton.AnchorPoint = Vector2.new(0, 0.5) -- Anchor to ensure proper positioning
controlButton.BackgroundColor3 = Color3.fromRGB(0, 170, 255) -- Blue color
controlButton.Text = "OFF"
controlButton.TextColor3 = Color3.fromRGB(255, 255, 255)
controlButton.TextScaled = true
controlButton.BorderSizePixel = 2
controlButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
controlButton.Parent = screenGui
 

 
-- Variables for control state
local controllingFootball = false
local football = workspace:FindFirstChild("Football") -- Find the Football MeshPart
local debounce = false -- Prevent button spam
 
-- Check if Football exists and create it if not
if not football then
    football = Instance.new("MeshPart")
    football.Name = "Football"
    football.MeshId = "rbxassetid://5785886369" -- Basic ball mesh
    football.Size = Vector3.new(2, 2, 2)
    football.Material = Enum.Material.Plastic
    football.Position = workspace.CurrentCamera.CFrame.Position + Vector3.new(0, 5, -10)
    football.Anchored = false
    football.CanCollide = true
    football.Parent = workspace
 
    -- Add necessary physics properties
    local bodyForce = Instance.new("BodyForce")
    bodyForce.Name = "HoverForce"
    bodyForce.Force = Vector3.new(0, football:GetMass() * workspace.Gravity * 0.98, 0) -- Slight hover effect
    bodyForce.Parent = football
end
 
-- Function to handle button toggle with debounce
local function toggleFootballControl()
    if debounce then return end
    debounce = true
 
    controllingFootball = not controllingFootball
 
    if controllingFootball then
        controlButton.Text = "ON"
        controlButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0) -- Green when ON
 
        -- Move camera to football immediately
        workspace.CurrentCamera.CameraSubject = football
 
        -- Make sure football is not anchored
        football.Anchored = false
    else
        controlButton.Text = "à¸„à¸§à¸à¸„à¸¸à¸¡à¸¥à¸¹à¸à¸à¸­à¸¥OFF"
        controlButton.BackgroundColor3 = Color3.fromRGB(0, 170, 255) -- Blue when OFF
 
        -- Reset camera to player
        local humanoid = player.Character and player.Character:FindFirstChild("Humanoid")
        if humanoid then
            workspace.CurrentCamera.CameraSubject = humanoid
        end
 
        -- Reset football velocity
        football.Velocity = Vector3.new(0, 0, 0)
    end
 
    -- Reset debounce after a short delay
    wait(0.3) -- Prevent rapid toggling but not too slow
    debounce = false
end
 
-- Connect button to toggle function
controlButton.MouseButton1Click:Connect(toggleFootballControl)
controlButton.TouchTap:Connect(toggleFootballControl)
 
-- Function to get proper movement direction
local function getMovementDirection()
    local character = player.Character
    if not character then return Vector3.new(0, 0, 0) end
 
    local humanoid = character:FindFirstChild("Humanoid")
    if not humanoid then return Vector3.new(0, 0, 0) end
 
    local moveDir = humanoid.MoveDirection
 
    -- If moveDir is zero but we have input, use camera direction instead
    if moveDir.Magnitude < 0.1 then
        local camera = workspace.CurrentCamera
        local _, _, look = camera.CFrame:ToOrientation()
 
        -- Check directional input
        local moveVector = Vector3.new(0, 0, 0)
 
        -- Check for movement keys and touchscreen movement thumbstick
        if UserInputService:IsKeyDown(Enum.KeyCode.W) or humanoid.MoveDirection.Z < 0 then
            moveVector = moveVector + (Vector3.new(0, 0, -1))
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.S) or humanoid.MoveDirection.Z > 0 then
            moveVector = moveVector + (Vector3.new(0, 0, 1))
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.A) or humanoid.MoveDirection.X < 0 then
            moveVector = moveVector + (Vector3.new(-1, 0, 0))
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.D) or humanoid.MoveDirection.X > 0 then
            moveVector = moveVector + (Vector3.new(1, 0, 0))
        end
 
        if moveVector.Magnitude > 0 then
            -- Normalize the movement vector
            moveVector = moveVector.Unit
 
            -- Rotate the movement vector according to the camera's orientation
            local cf = CFrame.Angles(0, look, 0)
            moveDir = cf:VectorToWorldSpace(moveVector)
        end
    end
 
    return moveDir
end
 
-- Handle Football movement when controlled
local speed = 100 -- Increased speed as requested
 
RunService:BindToRenderStep("FootballControl", Enum.RenderPriority.Character.Value + 1, function()
    if controllingFootball and football then
        -- Set camera to follow football
        workspace.CurrentCamera.CameraSubject = football
 
        -- Get movement direction
        local moveDirection = getMovementDirection()
 
        -- Apply movement to the football with improved height control
        if moveDirection.Magnitude > 0 then
            -- Add upward force to make the ball fly a bit
            local flyVector = moveDirection * speed
            flyVector = Vector3.new(flyVector.X, math.max(0.5, flyVector.Y), flyVector.Z)
 
            -- Apply the velocity
            football.Velocity = Vector3.new(flyVector.X, football.Velocity.Y + 2, flyVector.Z)
 
            -- Make sure it stays slightly above ground
            local rayParams = RaycastParams.new()
            rayParams.FilterType = Enum.RaycastFilterType.Exclude
            rayParams.FilterDescendantsInstances = {football}
 
            local rayResult = workspace:Raycast(football.Position, Vector3.new(0, -5, 0), rayParams)
            if rayResult and rayResult.Distance < 2 then
                football.Velocity = Vector3.new(football.Velocity.X, 10, football.Velocity.Z)
            end
        else
            -- Apply small drag when not actively moving
            football.Velocity = football.Velocity * 0.98
        end
    end
end)
 
-- Show initial message
local function createInfoMessage()
    local infoFrame = Instance.new("Frame")
    infoFrame.Size = UDim2.new(0.6, 0, 0.2, 0)
    infoFrame.Position = UDim2.new(0.2, 0, 0.3, 0)
    infoFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    infoFrame.BackgroundTransparency = 0.5
    infoFrame.BorderSizePixel = 2
    infoFrame.Parent = screenGui
 
    local infoText = Instance.new("TextLabel")
    infoText.Size = UDim2.new(1, -20, 1, -20)
    infoText.Position = UDim2.new(0, 10, 0, 10)
    infoText.BackgroundTransparency = 1
    infoText.TextColor3 = Color3.fromRGB(255, 255, 255)
    infoText.TextScaled = true
    infoText.Text = "OFF' "
    infoText.Parent = infoFrame
 
    game:GetService("Debris"):AddItem(infoFrame, 5) -- Remove after 5 seconds
end
 
createInfoMessage()
end)
---------------------------------------------------------------------------------------------------------------------------------------------------------
Bllladeball:CreateButton("Không Hồi Chiêu", function()
local C=require(game:GetService("ReplicatedStorage").Controllers.AbilityController)
local o=C.AbilityCooldown C.AbilityCooldown=function(s,n,...)return o(s,n,0,...)end
end)
---------------------------------------------------------------------------------------------------------------------------------------------------------
Bllladeball:CreateButton("Controll ball", function()
--[[
 .____                  ________ ___.    _____                           __
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|
         \/          \/         \/    \/                \/     \/     \/
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib
]]--

local players = game:GetService("Players")
local runService = game:GetService("RunService")
local userInputService = game:GetService("UserInputService")
local localPlayer = players.LocalPlayer
local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local currentCamera = workspace.CurrentCamera
local animator = humanoid:WaitForChild("Animator")
local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://125865269944406"
local loadedAnimation = animator:LoadAnimation(animation)

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = localPlayer:WaitForChild("PlayerGui")

local ascendButton = Instance.new("TextButton")
ascendButton.Size = UDim2.new(586.2 - (103 + 483), 0, 235.1 - (23 + 212), 0)
ascendButton.Position = UDim2.new(1846.02 - (1228 + 618), 0, 0.2, 0)
ascendButton.Text = "ASCEND"
ascendButton.Parent = screenGui

local controlButton = Instance.new("TextButton")
controlButton.Size = UDim2.new(0.15, 0, 0.08, 0)
controlButton.Position = UDim2.new(0.1, 0, 0.8, 997 - (915 + 82))
controlButton.Text = "CONTROL"
controlButton.Parent = screenGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.3, 0, 1187.12 - (1069 + 118), 0)
frame.Position = UDim2.new(0.35, 0, 0.6, 0)
frame.BackgroundColor3 = Color3.fromRGB(44 - 19, 25, 25)
frame.Visible = false
frame.Parent = screenGui

local speedLabel = Instance.new("TextLabel")
speedLabel.Size = UDim2.new(1, 0, 0.3, 791 - (368 + 423))
speedLabel.BackgroundTransparency = 3 - 2
speedLabel.Text = "Speed: 70"
speedLabel.TextColor3 = Color3.fromRGB(255, 255, 273 - (10 + 8))
speedLabel.TextScaled = true
speedLabel.Parent = frame

local innerFrame = Instance.new("Frame")
innerFrame.Size = UDim2.new(0.9, 0, 0.4, 442 - (416 + 26))
innerFrame.Position = UDim2.new(0.05, 0, 0.5, 0)
innerFrame.BackgroundColor3 = Color3.fromRGB(693 - (145 + 293), 255, 685 - (44 + 386))
innerFrame.Parent = frame

local statusFrame = Instance.new("Frame")
statusFrame.Size = UDim2.new(1486.05 - (998 + 488), 0, 1, 0)
statusFrame.Position = UDim2.new(772.07 - (201 + 571), 0, 1138 - (116 + 1022), 0)
statusFrame.BackgroundColor3 = Color3.fromRGB(150 + 105, 0, 0)
statusFrame.Parent = innerFrame

local madeByLabel = Instance.new("TextLabel")
madeByLabel.Size = UDim2.new(0.3, 859 - (814 + 45), 0.1, 0)
madeByLabel.Position = UDim2.new(0.35, 0, 885.35 - (261 + 624), 0)
madeByLabel.BackgroundTransparency = 1081 - (1020 + 60)
madeByLabel.Text = "Made by Pahotfgo"
madeByLabel.TextColor3 = Color3.fromRGB(1678 - (630 + 793), 863 - 608, 1207 - 952)
madeByLabel.TextScaled = true
madeByLabel.Parent = screenGui
madeByLabel.Visible = false

local isAscendActive = false
local isControlActive = false
local defaultSpeed = 14 + 21
local ball
local bodyVelocity
local ballConnection

-- Updated findFootball function -  "Football" Part directly in Workspace
local function findFootball()
    local football = workspace:FindFirstChild("Football")
    if football then
        return football  -- Return the Part directly
    else
        warn("Football Part not found in workspace.")
        return nil -- Football Part not found
    end
    warn("Football was not found.")
    return nil
end

local function controlBall()
    local state = 1747 - (760 + 987)
    while true do
        if state == (1914 - (1789 + 124)) then
            bodyVelocity = Instance.new("BodyVelocity")
            bodyVelocity.Velocity = Vector3.new(766 - (745 + 21), 25, 0)
            state = 2
        end
        if state == (7 - 4) then
            ballConnection = runService.Heartbeat:Connect(function(step)
                local velocity = 0
                local x, y, z
                while true do
                    if velocity == (0 + 0) then
                        if not isAscendActive or not ball or not ball.Parent or isControlActive then
                            local count = 0
                            while true do
                                if count == (0 + 0) then
                                    if bodyVelocity then
                                        local waitCount = 1055 - (87 + 968)
                                        while true do
                                            if waitCount == (0 - 0) then
                                                bodyVelocity:Destroy()
                                                bodyVelocity = nil
                                                break
                                            end
                                        end
                                    end
                                    if ballConnection then
                                        local innerCount = 0 + 0
                                        while true do
                                            if innerCount == (0 - 0) then
                                                ballConnection:Disconnect()
                                                ballConnection = nil
                                                break
                                            end
                                        end
                                    end
                                    count = 1
                                end
                                if count == (1414 - (447 + 966)) then
                                    return
                                end
                            end
                        end
                        x = x + (85 * step)
                        velocity = 1
                    end
                    if velocity == 3 then
                        ball.Velocity = z * (232 - 147)
                        break
                    end
                    if velocity == (1819 - (1703 + 114)) then
                        x = Vector3.new(humanoidRootPart.Position.X + x, defaultSpeed + (713 - (376 + 325)), humanoidRootPart.Position.Z + z)
                        z = (x - ball.Position).unit
                        velocity = 4 - 1
                    end
                    if velocity == 1 then
                        x = math.cos(x) * 5
                        z = math.sin(x) * (15 - 10)
                        velocity = 1 + 1
                    end
                end
            end)
            break
        end
        if state == (0 - 0) then
            if not ball or isControlActive then return end
            x = 0
            state = 15 - (9 + 5)
        end
        if state == (378 - (85 + 291)) then
            bodyVelocity.MaxForce = Vector3.new(5265 - (243 + 1022), 15220 - 11220, 4000)
            bodyVelocity.Parent = ball
            state = 3 + 0
        end
    end
end

runService.Heartbeat:Connect(function()
    if isAscendActive then
        if humanoidRootPart.Position.Y < defaultSpeed then
            humanoidRootPart.Velocity = Vector3.new(0, 25, 1180 - (1123 + 57))
        else
            humanoidRootPart.Velocity = Vector3.new(0, 254 - (163 + 91), 1930 - (1869 + 61))
            local direction = humanoid.MoveDirection
            if direction.Magnitude > (0 + 0) then
                humanoidRootPart.Position = humanoidRootPart.Position + ((direction * defaultSpeed) / 10)
            end
        end
    end
end)

local function stopControl()
    if not ball then return end
    if ballConnection then
        ballConnection:Disconnect()
        ballConnection = nil
    end
    if bodyVelocity then
        bodyVelocity:Destroy()
        bodyVelocity = nil
    end
    currentCamera.CameraSubject = ball
    local velocity = Instance.new("BodyVelocity")
    velocity.MaxForce = Vector3.new(1535952 - 535952, 136839 + 863161, 1374247 - 374247)
    velocity.Parent = ball
    local ballConnection
    ballConnection = runService.Heartbeat:Connect(function()
        local count = 0 + 0
        while true do
            if count == (1474 - (1329 + 145)) then
                if not isControlActive or not ball or not ball.Parent then
                    velocity:Destroy()
                    currentCamera.CameraSubject = character
                    if ballConnection then
                        ballConnection:Disconnect()
                    end
                    return
                end
                velocity.Velocity = currentCamera.CFrame.LookVector * defaultSpeed
                break
            end
        end
    end)
end

ascendButton.MouseButton1Click:Connect(function()
    if isAscendActive then
        isAscendActive = false
        ascendButton.Text = "ASCEND"
        loadedAnimation:Stop()
        if ballConnection then
            ballConnection:Disconnect()
            ballConnection = nil
        end
        if bodyVelocity then
            bodyVelocity:Destroy()
            bodyVelocity = nil
        end
    else
        local count = 0
        while true do
            if count == (971 - (140 + 831)) then
                isAscendActive = true
                ascendButton.Text = "STOP"
                count = 1851 - (1409 + 441)
            end
            if count == (720 - (15 + 703)) then
                if ball then
                    controlBall()
                end
                break
            end
            if count == (1 + 0) then
                loadedAnimation:Play()
                ball = findFootball()
                count = 440 - (262 + 176)
            end
        end
    end
end)

controlButton.MouseButton1Click:Connect(function()
    local count = 0
    while true do
        if count == 0 then
            if not ball then
                ball = findFootball()
                if not ball then
                    warn("No Ball Found!")
                    return
                end
            end
            isControlActive = not isControlActive
            count = 1
        end
        if count == (1722 - (345 + 1376)) then
            controlButton.BackgroundColor3 = (isControlActive and Color3.fromRGB(688 - (198 + 490), 1126 - 871, 0)) or Color3.fromRGB(255, 1206 - (696 + 510), 0)
            frame.Visible = isControlActive
            count = 2
        end
        if count == (1264 - (1091 + 171)) then
            if isControlActive then
                stopControl()
            elseif isAscendActive then
                controlBall()
            end
            break
        end
    end
end)

local inputActive = false
statusFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        inputActive = true
    end
end)

userInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        inputActive = false
    end
end)

runService.RenderStepped:Connect(function()
    if inputActive then
        local mouseX = userInputService:GetMouseLocation().X
        local frameX = innerFrame.AbsolutePosition.X
        local frameXEnd = frameX + innerFrame.AbsoluteSize.X
        local relativePos = (mouseX - frameX) / (frameXEnd - frameX)
        statusFrame.Position = UDim2.new(math.clamp(relativePos, 0, 3 - 2) - (0.025 - 0), 374 - (123 + 251), 0, 0)
        defaultSpeed = math.floor((708 - (208 + 490)) + (relativePos * (21 + 219)))
        speedLabel.Text = "Speed: " .. tostring(defaultSpeed)
    end
end)

userInputService.InputBegan:Connect(function(input, processed)
    if processed then return end
    if input.KeyCode == Enum.KeyCode.Y then
        ascendButton.MouseButton1Click:Fire()
    elseif input.KeyCode == Enum.KeyCode.U then
        controlButton.MouseButton1Click:Fire()
    end
end)

madeByLabel.Visible = true
wait(1 + 1)
madeByLabel.Visible = false


-- Style the ascendButton
ascendButton.Font = Enum.Font.SourceSansBold
ascendButton.TextSize = 24
ascendButton.TextColor3 = Color3.new(1, 1, 1) -- White text
ascendButton.BackgroundColor3 = Color3.new(0.2, 0.6, 0.9) -- A nice blue
ascendButton.BorderSizePixel = 2
ascendButton.BorderColor3 = Color3.new(0, 0, 0) -- Black border
ascendButton.ClipsDescendants = true

-- Add a subtle gradient to the background using UI gradients (if desired)
local ascendButtonGradient = Instance.new("UIGradient")
ascendButtonGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.new(0.2, 0.6, 0.9)),
    ColorSequenceKeypoint.new(1, Color3.new(0.1, 0.4, 0.7))
})
ascendButtonGradient.Rotation = 90
ascendButtonGradient.Parent = ascendButton

-- Rounded corners with UICorner (for a modern look)
local ascendButtonCorner = Instance.new("UICorner")
ascendButtonCorner.CornerRadius = UDim.new(0, 8) -- Adjust radius as needed
ascendButtonCorner.Parent = ascendButton

-- Add a hover effect (slightly lighten the background)
ascendButton.MouseEnter:Connect(function()
    ascendButton.BackgroundColor3 = Color3.new(0.3, 0.7, 1)
end)

ascendButton.MouseLeave:Connect(function()
    ascendButton.BackgroundColor3 = Color3.new(0.2, 0.6, 0.9)
end)

-- Style the controlButton (similar styling to ascendButton)
controlButton.Font = Enum.Font.SourceSansBold
controlButton.TextSize = 20
controlButton.TextColor3 = Color3.new(1, 1, 1)
controlButton.BackgroundColor3 = Color3.new(0.9, 0.3, 0.3) -- Red color
controlButton.BorderSizePixel = 2
controlButton.BorderColor3 = Color3.new(0, 0, 0)
controlButton.ClipsDescendants = true

-- Gradient for controlButton
local controlButtonGradient = Instance.new("UIGradient")
controlButtonGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.new(0.9, 0.3, 0.3)),
    ColorSequenceKeypoint.new(1, Color3.new(0.7, 0.2, 0.2))
})
controlButtonGradient.Rotation = 90
controlButtonGradient.Parent = controlButton

-- Rounded corners for controlButton
local controlButtonCorner = Instance.new("UICorner")
controlButtonCorner.CornerRadius = UDim.new(0, 8)
controlButtonCorner.Parent = controlButton

-- Hover effect for controlButton
controlButton.MouseEnter:Connect(function()
    controlButton.BackgroundColor3 = Color3.new(1, 0.4, 0.4)
end)

controlButton.MouseLeave:Connect(function()
    controlButton.BackgroundColor3 = Color3.new(0.9, 0.3, 0.3)
end)

--Style frame
frame.BorderSizePixel = 2
frame.BorderColor3 = Color3.new(0, 0, 0)

-- Style innerFrame
innerFrame.BorderSizePixel = 2
innerFrame.BorderColor3 = Color3.new(0, 0, 0)

--Style statusFrame
statusFrame.BorderSizePixel = 2
statusFrame.BorderColor3 = Color3.new(0, 0, 0)
statusFrame.ClipsDescendants = true
local statusFrameCorner = Instance.new("UICorner")
statusFrameCorner.CornerRadius = UDim.new(0, 8)
statusFrameCorner.Parent = statusFrame

-- Style speedLabel
speedLabel.Font = Enum.Font.SourceSansBold
speedLabel.TextSize = 20
speedLabel.TextColor3 = Color3.new(1, 1, 1)
--speedLabel.BackgroundColor3 = Color3.new(0.9, 0.3, 0.3) -- Red color
--speedLabel.BackgroundTransparency = 0

-- Style madeByLabel
madeByLabel.Font = Enum.Font.SourceSansBold
madeByLabel.TextSize = 16
madeByLabel.TextColor3 = Color3.new(1, 1, 1)
--madeByLabel.BackgroundColor3 = Color3.new(0.9, 0.3, 0.3) -- Red color
--madeByLabel.BackgroundTransparency = 0
end)
---------------------------------------------------------------------------------------------------------------------------------------------------------
Bllladeball:CreateButton("Hixbot V2", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/RedJDarks/MAIN/refs/heads/main/HitboxExpander"))()
end)
---------------------------------------------------------------------------------------------------------------------------------------------------------
Bllladeball:CreateButton("Hixbot New UPDATE", function()

end)
------------------------------------------------------------------------------------------------------------------------------------//
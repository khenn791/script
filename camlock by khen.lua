-- Define the ScreenGui, Frame, and TextLabel for the intro
local screenGui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local textLabel = Instance.new("TextLabel")

-- Parent the GUI elements
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
frame.Parent = screenGui
textLabel.Parent = frame

-- Set Frame properties to cover the whole screen and apply blur
frame.Size = UDim2.new(1, 0, 1, 0)
frame.BackgroundTransparency = 1
frame.ZIndex = 1

-- Create a BlurEffect
local blurEffect = Instance.new("BlurEffect", game.Lighting)
blurEffect.Size = 24

-- ProperTies
textLabel.Size = UDim2.new(1, 0, 0.2, 0)
textLabel.Position = UDim2.new(0, 0, 0.4, 0)
textLabel.BackgroundTransparency = 1
textLabel.TextScaled = true
textLabel.Text = "SO LOVE NINI :3"
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.Font = Enum.Font.LuckiestGuy

-- Wait
wait(4)

-- Destroy
blurEffect:Destroy()
screenGui:Destroy()


-- script


local Prediction = 0.1624286
local Smoothness = 0.472
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Mouse = game.Players.LocalPlayer:GetMouse()
local CamlockState = false
local SmoothEnabled = true
local AutoAir = true
local EnemyAir = true
local AirshotMaterial = Jump -- Move, Around, Jumps, Nothing
local JumpCheck = true
local Jump = -0.92
local Fall = -1.91
-- Function to remove ESP chams
local function removeCham(cham)
    if cham then
        cham:Destroy()
    end
end
local currentCham
function FindNearestEnemy()
    local ClosestDistance, ClosestPlayer = math.huge, nil
    local CenterPosition = Vector2.new(game:GetService("GuiService"):GetScreenResolution().X / 2, game:GetService("GuiService"):GetScreenResolution().Y / 2)
    for _, Player in ipairs(game:GetService("Players"):GetPlayers()) do
        if Player ~= LocalPlayer then
            local Character = Player.Character
            if Character and Character:FindFirstChild("HumanoidRootPart") and Character.Humanoid.Health > 0 then
                local Position, IsVisibleOnViewport = game:GetService("Workspace").CurrentCamera:WorldToViewportPoint(Character.HumanoidRootPart.Position)
                if IsVisibleOnViewport then
                    local Distance = (CenterPosition - Vector2.new(Position.X, Position.Y)).Magnitude
                    if Distance < ClosestDistance then
                        ClosestPlayer = Character.HumanoidRootPart
                        ClosestDistance = Distance
                    end
                end
            end
        end
    end
    return ClosestPlayer
end
local enemy = nil
-- Function to aim the camera at the nearest enemy's HumanoidRootPart
RunService.Heartbeat:Connect(function()
    if CamlockState == true then
        if enemy then
            local camera = workspace.CurrentCamera
            local targetCFrame = CFrame.new(camera.CFrame.p, enemy.Position + enemy.Velocity * Prediction)
            if SmoothEnabled then
                camera.CFrame = camera.CFrame:Lerp(targetCFrame, Smoothness)
            else
                camera.CFrame = targetCFrame
            end
        end
    end
end)
 

local khen = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local negar = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")

khen.Name = "khen"
khen.Parent = game.CoreGui
khen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local UICorner_2 = Instance.new("UICorner")
UICorner_2.CornerRadius = UDim.new(0, 10)
UICorner_2.Parent = negar

-- goody ahh button
negar.Parent = khen
negar.Name = "negar"
negar.BorderSizePixel = 0
negar.Active = true
negar.Draggable = true
negar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
negar.BackgroundTransparency = 0.0
negar.BorderColor3 = Color3.fromRGB(255, 255, 255)
negar.Position = UDim2.new(0.133798108, 0, 0.20107238, 0)
negar.Size = UDim2.new(0, 100, 0, 40)
negar.Font = Enum.Font.Code
negar.Text = "Camlock"
negar.TextColor3 = Color3.fromRGB(255, 255, 255)
negar.TextScaled = true
negar.TextSize = 12.000
negar.TextWrapped = true
local state = true

negar.MouseButton1Click:Connect(function()
    state = not state
    if not state then
        negar.Text = "On"
negar.TextColor3 = Color3.new(0, 255, 255)
        getgenv().SilentAimEnabled = true
        CamlockState = true
        enemy = FindNearestEnemy()
        if enemy then
            Air.Parent = true
            enabled = true
            Plr = LockToPlayer()
        end
    else
        negar.Text = "Off"
negar.TextColor3 = Color3.new(0, 255, 255)
        getgenv().SilentAimEnabled = false
        CamlockState = false
        enabled = false
        if AutoAir then
            AirMaterial(Material.Auto.Air)
            Airshot = nil
            enemyair = nil
        end
        enemy = nil
    end
    
end)

getgenv().HitPart = "HumanoidRootPart"
getgenv().Prediction_SilentAim = 0.1201
getgenv().SilentAimEnabled = false  -- Default to disabled
getgenv().SilentAimShowFOV = false  -- Default to showing FOV
getgenv().SilentAimFOVSize = 90
getgenv().SilentAimFOVTransparency = 1
getgenv().SilentAimFOVThickness = 2.0
getgenv().SilentAimFOVColor = Color3.new(255, 0, 0)
local SilentAimFOVCircle = Drawing.new("Circle")
SilentAimFOVCircle.Color = getgenv().SilentAimFOVColor
SilentAimFOVCircle.Visible = getgenv().SilentAimShowFOV
SilentAimFOVCircle.Filled = false
SilentAimFOVCircle.Radius = getgenv().SilentAimFOVSize
SilentAimFOVCircle.Transparency = getgenv().SilentAimFOVTransparency
SilentAimFOVCircle.Thickness = getgenv().SilentAimFOVThickness
local function updateFOVCirclePosition()
    local centerScreenPosition = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2)
    SilentAimFOVCircle.Position = centerScreenPosition
end
local function getClosestPlayerToCenter()
    local centerScreenPosition = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2)
    local closestPlayer
    local closestDistance = math.huge
    local localPlayer = game.Players.LocalPlayer
    local camera = workspace.CurrentCamera
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player ~= localPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local playerRootPart = player.Character.HumanoidRootPart
            local screenPosition, onScreen = camera:WorldToViewportPoint(playerRootPart.Position)
            if onScreen then
                local KOd = player.Character:FindFirstChild("BodyEffects") and player.Character.BodyEffects["K.O"].Value
                local Grabbed = player.Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil
                if not KOd and not Grabbed then
                    local ray = Ray.new(camera.CFrame.Position, playerRootPart.Position - camera.CFrame.Position)
                    local part, position = workspace:FindPartOnRay(ray, localPlayer.Character, false, true)
                    if part and part:IsDescendantOf(player.Character) then
                        local distance = (centerScreenPosition - Vector2.new(screenPosition.X, screenPosition.Y)).Magnitude
                        if distance < closestDistance and distance <= SilentAimFOVCircle.Radius then
                            closestPlayer = player
                            closestDistance = distance
                        end
                    end
                end
            end
        end
    end
    return closestPlayer
end
local SilentAimTarget = nil
game:GetService("RunService").RenderStepped:Connect(function()
    SilentAimTarget = getClosestPlayerToCenter()
end)
game:GetService("RunService").RenderStepped:Connect(function()
    updateFOVCirclePosition()
end)
local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt, false)
mt.__namecall = newcclosure(function(...)
    local args = {...}
    if getgenv().SilentAimEnabled and SilentAimTarget ~= nil and SilentAimTarget.Character and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
    args[3] = SilentAimTarget.Character[getgenv().HitPart].Position + (SilentAimTarget.Character[getgenv().HitPart].Velocity * getgenv().Prediction_SilentAim)
        return old(unpack(args))
    end
    return old(...)
end)
setreadonly(mt, true)
local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt, false)
mt.__namecall = newcclosure(function(...)
    local args = {...}
    if getgenv().SilentAimEnabled and SilentAimTarget ~= nil and SilentAimTarget.Character and getnamecallmethod() == "FireServer" then
        if args[2] == "UpdateMousePos" or args[2] == "MOUSE" or args[2] == "UpdateMousePosI" or args[2] == "MousePosUpdate" then
            args[3] = SilentAimTarget.Character[getgenv().HitPart].Position + (SilentAimTarget.Character[getgenv().HitPart].Velocity * getgenv().Prediction_SilentAim)
            return old(unpack(args))
        end
    end
    return old(...)
end)
setreadonly(mt, true)
-- expand hitbox by khen
local function randomizeHitbox(player)
    local character = player.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        local HitBoxGram = character.HumanoidRootPart
        local randomSize = Vector3.new(math.random(7, 30), math.random(7, 30), math.random(7, 30))
        HitBoxGram.Size = randomSize
        HitBoxGram.Massless = true
        HitBoxGram.CanCollide = false
        HitBoxGram.Anchored = true
        wait(0.1)
        hrp.Anchored = false
    end
end


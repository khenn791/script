loadstring(game:HttpGet("https://pastefy.app/tKOg6klJ/raw", true))();
task.wait(1)




local ThugId = {
    [0] = true,
}

local StarId = {
    [0] = true,
    [0] = true,
    [0] = true,
    [0] = true,
    [0] = true,
    [0] = true,
    [0] = true,
    [0] = true,
    [0] = true,
    [0] = true,
    [0] = true,
    [0] = true,
    [0] = true,
    [0] = true,
    [0] = true,
    [0] = true,
    [0] = true,
    [0] = ture,
    [0] = true,
    [0] = true,
    [0] = true,
    [0] = true,
    [0] = true,
    [0] = true,
}

local DetectiveId = {
    [0] = true,
}

local OwnerId = {
    [3802680567] = true,
    [7465089619] = true,
    [6017580976] = true,
}



for _, v in pairs(game:GetService('Players'):GetChildren()) do
	if StarId[v.UserId] then
		if v.Character and v.Character.Parent.Name == 'Players' then
			v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐] ' .. v.DisplayName)
		end
	elseif DetectiveId[v.UserId] then
		if v.Character and v.Character.Parent.Name == 'Players' then
			v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[🕵️‍♂️] ' .. v.DisplayName)
		end
	elseif ThugId[v.UserId] then
		if v.Character and v.Character.Parent.Name == 'Players' then
			v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[🛡️] ' .. v.DisplayName)
		end
	elseif OwnerId[v.UserId] then
		if v.Character and v.Character.Parent.Name == 'Players' then
			v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] ' .. v.DisplayName)
		end
	elseif v.Character and v.Character.Parent.Name == 'Players' then
		if not v.Character:FindFirstChild('UpperTorso'):FindFirstChild('BodyBackAttachment') then
			v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[😎] ' .. v.DisplayName)
		end
	end
end


loadstring([[
    function LPH_NO_VIRTUALIZE(f) return f end;
]])(); 
if (not LPH_OBFUSCATED) then
    LPH_NO_VIRTUALIZE = function(...) return (...) end;
    LPH_JIT_MAX = function(...) return (...) end;
    LPH_JIT_ULTRA = function(...) return (...) end;
end

getgenv().khen = {
    ["Aimbot"] = {
        ["Enabled"] = false,
        ["Future"] = 0.14829,
        ["Keybind"] = Enum.KeyCode.C,
        ["Target"] = "UpperTorso",
        ["ShakeValue"] = 0,
    },
    ["CamOrientation"] = {
        ["Enabled"] = false,
        ["GroundPrediction"] = 0.14829,
        ["AirPrediction"] = 0.1,
        ["GroundSmoothness"] = 0.9,
        ["AirSmoothness"] = 0.2,
        ["EasingStyle"] = Enum.EasingStyle.Linear,
    },
    ["Visuals"] = {
        ["Box"] = {
            ["Enabled"] = false,
            ["Size"] = Vector3.new(10, 10, 10),
            ["Transparency"] = 0.8,
            ["Color"] = Color3.fromRGB(255, 255, 255),
        },
        ["Circle"] = {
            ["Enabled"] = false,
            ["Radius"] = 5,
            ["Color"] = Color3.fromRGB(255, 255, 255),
            ["Thickness"] = 1,
        },
        ["Tracer"] = {
            ["Enabled"] = false,
            ["Color"] = Color3.fromRGB(255, 255, 255),
            ["Thickness"] = 1,
            ["StartPosition"] = "Center", 
        },
    },
    ["Strafer"] = {
        ["Enable"] = false,
        ["X"] = 5, 
        ["Y"] = 0, 
        ["Z"] = 10, 
    },
    ["Random"] = {
        ["AutoAir"] = false,
        ["AutoAirDelay"] = 0.13,
    }
}
local a,b,c=getconnections,game,hookfunction
local d=function(e)for _,f in pairs(a(e))do print(f.Function)f:Disable()end end
d(b.LogService.MessageOut)d(b:GetService("ScriptContext").Error)
c(b.LogService.MessageOut.Connect,function()end)
c(b:GetService("ScriptContext").Error.Connect,function()end)

task.wait(2)





Script = {
    Table = getgenv().khen,
    Target = nil,
    MainEvent = nil,
    Argument = "",
    Functions = {},
    Connections = {},
    Tool = nil
}
Script.Table = getgenv().khen
local function PlayThatBitch()
        local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")

        local screenGui = Instance.new("ScreenGui")
        screenGui.Name = "IntroScreen"
        screenGui.Parent = playerGui

        local frame = Instance.new("Frame")
        frame.Name = "IntroFrame"
        frame.Parent = screenGui
        frame.Size = UDim2.new(1, 0, 1, 0)
        frame.BackgroundTransparency = 1

        local imageLabel = Instance.new("ImageLabel")
        imageLabel.Name = "IntroImage"
        imageLabel.Parent = frame
        imageLabel.Size = UDim2.new(0.01, 0, 0.01, 0)  
        imageLabel.Position = UDim2.new(0.5, -0.1, 0.5, -0.1) 
        imageLabel.Image = "rbxassetid://94306191778376"
        imageLabel.BackgroundTransparency = 1
        imageLabel.ImageTransparency = 1
        imageLabel.AnchorPoint = Vector2.new(0.5, 0.5)

        local sound = Instance.new("Sound")
        sound.Name = "IntroSound"
        sound.Parent = frame
        sound.SoundId = "rbxassetid://6580172940"
        sound.Volume = 50
        sound:Play()

        local tweenService = game:GetService("TweenService")

        local blurEffect = Instance.new("BlurEffect")
        blurEffect.Parent = game.Lighting
        blurEffect.Size = 60

        local zoomTweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)  
        local blurTweenInfo = TweenInfo.new(4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)  

        local fadeIn = tweenService:Create(imageLabel, zoomTweenInfo, {ImageTransparency = 0.5})
        local fadeOut = tweenService:Create(imageLabel, zoomTweenInfo, {ImageTransparency = 1})
        local blurTween = tweenService:Create(blurEffect, blurTweenInfo, {Size = 0})  
        local zoomTween = tweenService:Create(imageLabel, zoomTweenInfo, {Size = UDim2.new(0.35, 0, 0.35, 0)})

        fadeIn:Play()
        fadeIn.Completed:Wait()

        zoomTween:Play()
        blurTween:Play()

        wait(3)  

        fadeOut:Play()
        fadeOut.Completed:Wait()

        blurTween:Play()
        blurTween.Completed:Wait()

        blurEffect:Destroy()
        screenGui:Destroy()
    end

    PlayThatBitch()
task.wait(0.5)

LPH_NO_VIRTUALIZE(function()
    for i, v in pairs(getgc()) do
        if type(v) == 'table' then
            if type(rawget(v, "Detected")) == "function" then
                local func = rawget(v, "Detected")

                for index, value in debug.getupvalues(func) do
                    if value == pcall then
                        debug.setupvalue(func, index, function(func)
                            rconsoleprint("[alysum - BLOCKED] tried sending the adonis detection remotes to the server");
                            return;
                        end)
                    end
                end
            end

            if type(v) == "function" and debug.getinfo(v).name == "compareTables" then
                local old
                old = hookfunction(v, function(...)
                    rconsoleprint(`[alwkkw - BLOCKED] called compareTables ? detected: {not old(...)}`);
                    return true;
                end)
            end
        end
    end
end)()

task.wait(1)

local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenService = game:GetService("TweenService")

local Client = Players.LocalPlayer
local Mouse = Client:GetMouse()
local Camera = Workspace.CurrentCamera



local Circle = Drawing.new("Circle")
Circle.Radius = getgenv().khen["Visuals"]["Circle"]["Radius"]
Circle.Filled = false
Circle.Color = getgenv().khen["Visuals"]["Circle"]["Color"]
Circle.Thickness = getgenv().khen["Visuals"]["Circle"]["Thickness"]
Circle.Visible = false

local Tracer = Drawing.new("Line")
Tracer.Color = getgenv().khen["Visuals"]["Tracer"]["Color"]
Tracer.Thickness = getgenv().khen["Visuals"]["Tracer"]["Thickness"]
Tracer.Visible = false

Script.Connections.CircleLoop = RunService.RenderStepped:Connect(LPH_NO_VIRTUALIZE(function(s)
    if Script.Target and Script.Target.Character then
        local predictedPosition = Script.Functions.Future()
        if predictedPosition then
            local PartPos, OnScreen = Camera:WorldToViewportPoint(predictedPosition)
            local mousePos = UserInputService:GetMouseLocation()
            local screenCenter = Vector2.new(game:GetService("Workspace").CurrentCamera.ViewportSize.X / 2, game:GetService("Workspace").CurrentCamera.ViewportSize.Y / 2)

            Circle.Position = Vector2.new(PartPos.X, PartPos.Y)
            Circle.Visible = getgenv().khen["Visuals"]["Circle"]["Enabled"] and OnScreen

            local tracerStart = mousePos
            if getgenv().khen["Visuals"]["Tracer"]["StartPosition"] == "Center" then
                tracerStart = screenCenter
            end

            Tracer.From = tracerStart
            Tracer.To = Circle.Position
            Tracer.Visible = getgenv().khen["Visuals"]["Tracer"]["Enabled"] and OnScreen
        else
            Circle.Visible = false
            Tracer.Visible = false
        end
    else
        Circle.Visible = false
        Tracer.Visible = false
    end
end))





local function Arguments()
    if game.PlaceId == 2788229376 or 16033173781 then return end

    local placeIds = {
        [5602055394] = "MousePos",
        [7951883376] = "MousePos",
        [17403265390] = "MOUSE",
        [14412601883] = "MOUSE",
        [18111448661] = "MOUSE",
        [14487637618] = "MOUSE",
        [14413712255] = "MOUSE",
        [15186202290] = "MOUSE",
        [18111451594] = "MOUSE",
        [17836920497] = "Mouse",
    }
    return placeIds[game.PlaceId] or "UpdateMousePos"
end

task.spawn(function()
    if game.PlaceId ~= 2788229376 or 16033173781 then
        for _, Remote in pairs(ReplicatedStorage:GetDescendants()) do
            if Remote.Name == "MainEvent" then
                Script.MainEvent = Remote
                break
            end
        end
    end
end)


Script.Argument = Arguments()


local Box = nil
if khen.Visuals.Box.Enabled then
    Box = Instance.new("Part")
    Box.Anchored = true
    Box.Name = "dang"
    Box.Parent = Workspace
    Box.Size = Script.Table["Visuals"].Box.Size
    Box.CanCollide = false
    Box.Transparency = Script.Table["Visuals"].Box.Transparency
    Box.Color = Script.Table["Visuals"].Box.Color
    Box.Position = Vector3.new(9999, 9999, 9999)
end


Script.Connections = Script.Connections or {} 

Script.Connections.BoxLoop = RunService.Heartbeat:Connect(function(Delta)
    if Script.Target and Script.Target.Character and khen["Visuals"].Box.Enabled then
        Box.Position = Script.Target.Character.HumanoidRootPart.Position
    end
end)


Script.Functions.Future = function()
    if Script.Target and Script.Target.Character then
        return Script.Target.Character[Script.Table["Aimbot"].Target].Position +
               Script.Target.Character[Script.Table["Aimbot"].Target].Velocity * Script.Table["Aimbot"].Future
    end
end

Script.Functions.Access = function(Character)
    Character.ChildAdded:Connect(function(Child)
        if Child:IsA("Tool") then
            Child.Activated:Connect(function()
                if Script.Table["Aimbot"].Enabled then
                    Script.MainEvent:FireServer(Script.Argument, Script.Functions.Future())
                end
            end)
        end
    end)
end

Client.CharacterAdded:Connect(Script.Functions.Access)
Script.Functions.Access(Client.Character)




Script.Functions.GetClosest = function()
    local Target, Closest = nil, math.huge
    local ScreenCenter = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
    for _, Player in pairs(Players:GetPlayers()) do
        if Player ~= Client and Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
            local PartPos, OnScreen = Camera:WorldToViewportPoint(Player.Character.HumanoidRootPart.Position)
            local Magnitude = (Vector2.new(PartPos.X, PartPos.Y) - ScreenCenter).Magnitude
            if Magnitude < Closest and OnScreen then
                Target, Closest = Player, Magnitude
            end
        end
    end
    return Target
end

Script.Connections.InputBeganConnection = UserInputService.InputBegan:Connect(function(Input, gameProccessedEvent)
    if gameProccessedEvent then return end
    if Input.KeyCode == khen["Aimbot"].Keybind and khen["Aimbot"].Enabled then
        Script.Target = Script.Target and nil or Script.Functions.GetClosest()
    end
end)


local old
local function HookMouseHit()
    old = hookmetamethod(game, "__index", LPH_NO_VIRTUALIZE(function(Self, Index, ...)
        if not checkcaller() and Self:IsA("Mouse") and Index:lower() == "hit" then
            if Script.Table["Aimbot"].Enabled and Script.Target then
                local targetPart = Script.Target.Character and Script.Target.Character[Script.Table["Aimbot"].Target]
                if targetPart then
                    return CFrame.new(Script.Functions.Future())
                end
            end
        end
        return old(Self, Index, ...)
    end))
end

if game.PlaceId == 2788229376 or 9825515356 or 16033173781 then
    HookMouseHit()
else
    Script.Connections.Loop = RunService.Heartbeat:Connect(function()
        if Script.Table["Aimbot"].Enabled and Script.Target and Script.Target.Character then
            Script.MainEvent:FireServer(Script.Argument, Script.Functions.Future())
        end
    end)
end

    

Script.Connections.Loop = RunService.Heartbeat:Connect(LPH_NO_VIRTUALIZE(function()
    if Script.Target and Script.Target.Character and Script.Table["CamOrientation"].Enabled then
        local humanoid = Script.Target.Character:FindFirstChild("Humanoid")
        local isTargetInAir = humanoid and humanoid:GetState() == Enum.HumanoidStateType.Freefall
        local prediction = isTargetInAir and Script.Table["CamOrientation"].AirPrediction or Script.Table["CamOrientation"].GroundPrediction
        local smoothness = isTargetInAir and Script.Table["CamOrientation"].AirSmoothness or Script.Table["CamOrientation"].GroundSmoothness

        local shakeOffset = Vector3.new(
            math.sin(tick() * 10) * Script.Table["Aimbot"].ShakeValue,
            math.cos(tick() * 10) * Script.Table["Aimbot"].ShakeValue,
            math.sin(tick() * 10) * Script.Table["Aimbot"].ShakeValue
        )

        local targetPosition = Script.Target.Character[Script.Table["Aimbot"].Target].Position + (Script.Target.Character[Script.Table["Aimbot"].Target].Velocity * prediction)
        local LookPosition = CFrame.new(Camera.CFrame.Position, targetPosition + shakeOffset)

        local lerpFactor = smoothness * 0.5
        if Script.Table["CamOrientation"].EasingStyle == Enum.EasingStyle.Linear then
            Camera.CFrame = Camera.CFrame:Lerp(LookPosition, lerpFactor)
        elseif Script.Table["CamOrientation"].EasingStyle == Enum.EasingStyle.Sine then
            lerpFactor = math.sin(lerpFactor * math.pi / 2)
            Camera.CFrame = Camera.CFrame:Lerp(LookPosition, lerpFactor)
        elseif Script.Table["CamOrientation"].EasingStyle == Enum.EasingStyle.Quart then
            lerpFactor = lerpFactor ^ 4
            Camera.CFrame = Camera.CFrame:Lerp(LookPosition, lerpFactor)
        elseif Script.Table["CamOrientation"].EasingStyle == Enum.EasingStyle.Bounce then
            lerpFactor = 1 - math.cos(lerpFactor * math.pi * 1.5) * (1 - lerpFactor)
            Camera.CFrame = Camera.CFrame:Lerp(LookPosition, lerpFactor)
        elseif Script.Table["CamOrientation"].EasingStyle == Enum.EasingStyle.Elastic then
            lerpFactor = math.sin(lerpFactor * math.pi * 4) * (1 - lerpFactor)
            Camera.CFrame = Camera.CFrame:Lerp(LookPosition, lerpFactor)
        elseif Script.Table["CamOrientation"].EasingStyle == Enum.EasingStyle.Quad then
            lerpFactor = lerpFactor ^ 2
            Camera.CFrame = Camera.CFrame:Lerp(LookPosition, lerpFactor)
        elseif Script.Table["CamOrientation"].EasingStyle == Enum.EasingStyle.Cubic then
            lerpFactor = lerpFactor ^ 3
            Camera.CFrame = Camera.CFrame:Lerp(LookPosition, lerpFactor)
        elseif Script.Table["CamOrientation"].EasingStyle == Enum.EasingStyle.Quint then
            lerpFactor = lerpFactor ^ 5
            Camera.CFrame = Camera.CFrame:Lerp(LookPosition, lerpFactor)
        end
    end
end))




-- Teh tool!

local AutoAirActivated = false
local AutoAirStartTime = 0

local function AutoAir()
    if khen["Random"].AutoAir and Script.Target and Script.Target.Character then
        local humanoid = Script.Target.Character:FindFirstChild("Humanoid")
        if humanoid then
            local isInAir = humanoid:GetState() == Enum.HumanoidStateType.Freefall

            if isInAir then
                if not AutoAirActivated then
                    AutoAirStartTime = tick()
                    AutoAirActivated = true
                end

                if tick() - AutoAirStartTime >= khen["Random"].AutoAirDelay then
                    local tool = Client.Character:FindFirstChildOfClass("Tool")
                    if tool and tool:IsA("Tool") then
                        tool:Activate()
                    end
                end
            elseif AutoAirActivated then
                AutoAirActivated = false
            end
        end
    end
end



Script.Functions.RadiusPointOnCircles = function(angle)
    if not Script or not Script.Table or not Script.Table.Strafer then return Vector3.new(0, 0, 0) end
    local x = Script.Table.Strafer.X * math.cos(angle)
    local z = Script.Table.Strafer.X * math.sin(angle)
    return Vector3.new(x, 0, z)
end

local angle = 0

Script.Functions.Strafe = function()
    if Script and Script.Table and Script.Table.Strafer and Script.Table.Strafer.Enable and Script.Target and Script.Target.Character and Script.Target.Character:FindFirstChild("HumanoidRootPart") then
        local targetPosition = Script.Target.Character.HumanoidRootPart.Position
        local circlePos = targetPosition + Script.Functions.RadiusPointOnCircles(angle) + Vector3.new(0, Script.Table.Strafer.Y, 0)
        Client.Character:MoveTo(circlePos)
        angle = angle + math.rad(Script.Table.Strafer.Z)
    end
end





local ForcefieldSettings = {
    Enabled = false,
    Color = Color3.fromRGB(255, 255, 255)
}

local Player = game.Players.LocalPlayer
local RunService = game:GetService("RunService")
local Character = Player.Character or Player.CharacterAdded:Wait()

local function ApplyForcefield(Char)
    for _, Item in ipairs(Char:GetDescendants()) do
        if Item:IsA("BasePart") or Item:IsA("MeshPart") then
            Item.Material = Enum.Material.ForceField
            Item.Color = ForcefieldSettings.Color
        end
    end
end

local function ResetCharacter(Char)
    for _, Item in ipairs(Char:GetDescendants()) do
        if Item:IsA("BasePart") or Item:IsA("MeshPart") then
            Item.Material = Enum.Material.Plastic
            Item.Color = Item.BrickColor.Color
        end
    end
end

Player.CharacterAdded:Connect(function(NewCharacter)
    Character = NewCharacter
    if ForcefieldSettings.Enabled then
        ApplyForcefield(Character)
    end
end)

RunService.Heartbeat:Connect(function()
    if ForcefieldSettings.Enabled then
        ApplyForcefield(Character)
    else
        ResetCharacter(Character)
    end
end)





local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/khen791/libraryskibidi/refs/heads/main/LinoriaLib.lua.txt"))()

Library:Notify('khen.cc Loading rn...')
wait(1)


local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/khen791/library/refs/heads/main/nini/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/khen791/library/refs/heads/main/nini/SaveManager.lua"))()
local Window = Library:CreateWindow({
    Title = 'KHEN.CC',
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0.2,
    Size = UDim2.new(0, 395, 0, 360)
})
local Tabs = {
    Main = Window:AddTab('Main'),
    hvh = Window:AddTab('Hvh'),
    lockmisc = Window:AddTab('Lock Misc'),
    player = Window:AddTab('Player'),
    misc = Window:AddTab('Misc'),
    visual = Window:AddTab('Visuals'),
    ['UI'] = Window:AddTab('UI')
}

local lock = Tabs.Main:AddLeftGroupbox('Button Lock')
local aimbot = Tabs.Main:AddLeftGroupbox('Lock Settings')
local aimbot2 = Tabs.Main:AddRightGroupbox('Cam Settings')
local sigma = Tabs.lockmisc:AddLeftGroupbox('Target Visuals')
local sigma1 = Tabs.lockmisc:AddRightGroupbox('Visuals')
local Orbit = Tabs.hvh:AddLeftGroupbox('Target Orbit')
local Orbit2 = Tabs.hvh:AddRightGroupbox('Radom Tp')
local selfvis = Tabs.player:AddLeftGroupbox('Self Visuals')
local utilities = Tabs.misc:AddLeftGroupbox('Macro')
local autoair = Tabs.lockmisc:AddRightGroupbox('Auto Air')
local khen = Tabs.misc:AddRightGroupbox('Cframe')
local hehe = Tabs.visual:AddLeftGroupbox('Crosshair')
local kkk = Tabs.visual:AddRightGroupbox('Map')
local ss = Tabs.player:AddRightGroupbox('Player')
local sss = Tabs.player:AddRightGroupbox('Korblox & Headless')
local fuck = Tabs.visual:AddLeftGroupbox('Desync')


local toggleButton
local currentPosition

lock:AddButton({
    Text = "Load Button",
    Func = function()
        local screenGui = Instance.new("ScreenGui")
        screenGui.ResetOnSpawn = false
        screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

        toggleButton = Instance.new("ImageButton")
        toggleButton.Parent = screenGui
        toggleButton.Size = UDim2.new(0, 75, 0, 75)
        toggleButton.Position = UDim2.new(0, 100, 0.15, 0)
        toggleButton.Image = "rbxassetid://110243175256745"
        toggleButton.BackgroundTransparency = 1
        currentPosition = toggleButton.Position

        local function toggle()
            if Script.Target then
                local targetDisplayName = Script.Target.Character and Script.Target.Character:FindFirstChild("Humanoid") and Script.Target.Character.Humanoid.DisplayName or "Unknown"
                if getgenv().notifs then
                    Library:Notify('Unlocked')
                end
                Script.Target = nil
            else
                Script.Target = Script.Functions.GetClosest()
                if Script.Target and getgenv().notifs then
                    local targetDisplayName = Script.Target.Character and Script.Target.Character:FindFirstChild("Humanoid") and Script.Target.Character.Humanoid.DisplayName or "Unknown"
                    Library:Notify('Targeting: ' .. targetDisplayName)
                end
            end
        end

        toggleButton.MouseButton1Click:Connect(toggle)

        local dragging, dragStart, startPos = false, nil, nil
        toggleButton.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
                dragging = true
                dragStart = input.Position
                startPos = toggleButton.Position
            end
        end)

        toggleButton.InputChanged:Connect(function(input)
            if dragging and (input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement) then
                local delta = input.Position - dragStart
                currentPosition = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
                toggleButton.Position = currentPosition
            end
        end)

        toggleButton.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
                dragging = false
            end
        end)
        
    local Ui2corner = Instance.new("UICorner")
    Ui2corner.CornerRadius = UDim.new(0.3, 0)
    Ui2corner.Parent = toggleButton
    end,
    DoubleClick = false,
    Tooltip = nil
})

lock:AddSlider('sizebutton', {
    Text = 'Size',
    Default = 70,
    Min = 50,
    Max = 300,
    Rounding = 0,
    Compact = false,

    Callback = function(Value)
        if toggleButton then
            toggleButton.Size = UDim2.new(0, Value, 0, Value)
            if currentPosition then
                toggleButton.Position = UDim2.new(currentPosition.X.Scale, currentPosition.X.Offset, currentPosition.Y.Scale, currentPosition.Y.Offset)
            end
        end
    end
})

aimbot:AddToggle('aimbottoggle', {
    Text = 'Target Aim',
    Default = false, 
    Tooltip = nil,

    Callback = function(Value)
        Script.Table["Aimbot"].Enabled = Value
    end
})

aimbot:AddInput('PredictionBox', {
    Default = '0.14829',
    Numeric = true, 
    Finished = false,
    Text = 'Prediction',
    Tooltip = nil, 
    Placeholder = 'Enter prediction here', 

    Callback = function(nau)
        Script.Table["Aimbot"].Future = nau
    end
})
aimbot:AddDropdown('hitparts', {
    Values = { 'Head', 'UpperTorso', 'HumanoidRootPart', 'LowerTorso' },
    Default = 'UpperTorso',
    Multi = false,

    Text = 'HitPart',
    Tooltip = nil, 
    Callback = function(uwu)
        Script.Table["Aimbot"].Target = uwu
    end
})
sigma1:AddToggle('Notifications', {
    Text = 'Notifications',
    Default = false,
    Callback = function(Value)
        getgenv().notifs = Value
    end
})
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer

getgenv().look = false
getgenv().view = false

sigma1:AddToggle('Look at', {
    Text = 'Look at',
    Default = false,
    Tooltip = nil,
    Callback = function(Value)
        getgenv().look = Value
    end
})

sigma1:AddToggle('View', {
    Text = 'View',
    Default = false,
    Tooltip = nil,
    Callback = function(Value)
        getgenv().view = Value
    end
})

local function updateView()
    if getgenv().view and Script.Target and Script.Target.Character then
        game:GetService("Workspace").CurrentCamera.CameraSubject = Script.Target.Character.Humanoid
    else
        game:GetService("Workspace").CurrentCamera.CameraSubject = localPlayer.Character.Humanoid
    end
end

local function updateLookAt()
    if getgenv().look and Script.Target and Script.Target.Character then
        local targetPosition = Script.Target.Character.HumanoidRootPart.Position
        local currentPosition = localPlayer.Character.HumanoidRootPart.Position
        local horizontalTargetPosition = Vector3.new(targetPosition.X, currentPosition.Y, targetPosition.Z)
        localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
            currentPosition,
            horizontalTargetPosition
        )
        localPlayer.Character.Humanoid.AutoRotate = false
    else
        localPlayer.Character.Humanoid.AutoRotate = true
    end
end

RunService.RenderStepped:Connect(LPH_NO_VIRTUALIZE(function(s)
    updateView()
    updateLookAt()
    Script.Functions.Strafe()  
    AutoAir()
end))



aimbot2:AddToggle('Camlocktoggle', {
    Text = 'Cam Lock',
    Default = false, 
    Tooltip = nil,

    Callback = function(Value)
        Script.Table["CamOrientation"].Enabled = Value
    end
})
aimbot2:AddInput('PredictionBox1', {
    Default = '0.14829',
    Numeric = true,
    Finished = false,   
    Text = 'Prediction',
    Tooltip = nil, 
    Placeholder = 'Enter prediction here', 

    Callback = function(hey)
        Script.Table["CamOrientation"].GroundPrediction = hey
    end
})
aimbot2:AddInput('PredictionBox2', {
    Default = '0.1',
    Numeric = true, 
    Finished = false,
    Text = 'Air Prediction',
    Tooltip = nil, 
    Placeholder = 'Enter prediction here', 

    Callback = function(fufu)
        Script.Table["CamOrientation"].AirPrediction = fufu
    end
})
aimbot2:AddSlider('smoothness', {
    Text = 'Smoothness',
    Default = 0.9,
    Min = 0,
    Max = 1,
    Rounding = 2,
    Compact = false,

    Callback = function(jairok)
        Script.Table["CamOrientation"].GroundSmoothness = jairok
    end
})
aimbot2:AddSlider('smoothness1', {
    Text = 'Air Smoothness',
    Default = 0.2,
    Min = 0,
    Max = 1,
    Rounding = 2,
    Compact = false,

    Callback = function(jairok)
        Script.Table["CamOrientation"].AirSmoothness = jairok
    end
})
aimbot2:AddDropdown('easing', {
    Values = { 'Linear', 'Sine', 'Quint', 'Quart', 'Cubic', 'Quad', 'Elastic', 'Bounce' },
    Default = 'Linear',
    Multi = false,

    Text = 'EasingStyle',
    Tooltip = nil, 
    Callback = function(baka)
        Script.Table["CamOrientation"].EasingStyle = baka
    end
})


sigma:AddToggle('circle', {
    Text = 'Circle',
    Default = false, 
    Tooltip = nil,

    Callback = function(Value)
        khen.Visuals.Circle.Enabled = Value
    end
})


sigma:AddSlider('CircleRadius', {
    Text = 'Circle Radius',
    Default = getgenv().khen["Visuals"]["Circle"]["Radius"],
    Min = 0,
    Max = 50,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)
        getgenv().khen["Visuals"]["Circle"]["Radius"] = Value
        Circle.Radius = Value
    end
})

sigma:AddSlider('CircleThickness', {
    Text = 'Circle Thickness',
    Default = getgenv().khen["Visuals"]["Circle"]["Thickness"],
    Min = 0,
    Max = 10,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)
        getgenv().khen["Visuals"]["Circle"]["Thickness"] = Value
        Circle.Thickness = Value
    end
})
sigma:AddToggle('tracer', {
    Text = 'Tracer',
    Default = false, 
    Tooltip = nil,

    Callback = function(Value)
        khen.Visuals.Tracer.Enabled = Value
    end
})
sigma:AddSlider('TracerThickness', {
    Text = 'Tracer Thickness',
    Default = getgenv().khen["Visuals"]["Tracer"]["Thickness"],
    Min = 0,
    Max = 10,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)
        getgenv().khen["Visuals"]["Tracer"]["Thickness"] = Value
        Tracer.Thickness = Value
    end
})



sigma:AddDropdown('PositionTracer', {
    Values = { 'Mouse', 'Center' },
    Default = (khen.Visuals.Tracer.StartPosition == "Center" and 2 or 1),
    Multi = false, 
    Text = 'Tracer position',
    Tooltip = nil,
    Callback = function(Value)
        khen.Visuals.Tracer.StartPosition = Value == "Center" and "Center" or "Mouse"
    end
})
sigma:AddLabel('CircleColor'):AddColorPicker('CircleColorPicker', {
    Default = Color3.new(255, 255, 255),
    Title = 'Circle Color',
    Callback = function(Value)
        getgenv().khen["Visuals"]["Circle"]["Color"] = Value
        Circle.Color = Value
    end
})

sigma:AddLabel('TracerColor'):AddColorPicker('TracerColorPicker', {
    Default = Color3.new(255, 255, 255),
    Title = 'Tracer Color',
    Callback = function(Value)
        getgenv().khen["Visuals"]["Tracer"]["Color"] = Value
        Tracer.Color = Value
    end
})
Orbit:AddToggle('orbittoggle', {
    Text = 'Enable',
    Default = false, 
    Tooltip = nil,

    Callback = function(yes)
        Script.Table["Strafer"].Enable = yes
    end
})
Orbit:AddSlider('orbitx', {
    Text = 'X',
    Default = 5,
    Min = 0,
    Max = 50,
    Rounding = 1,
    Compact = false,

    Callback = function(jairok)
        Script.Table["Strafer"].X = jairok
    end
})
Orbit:AddSlider('orbity', {
    Text = 'Y',
    Default = 5,
    Min = 0,
    Max = 50,
    Rounding = 1,
    Compact = false,

    Callback = function(jairok)
        Script.Table["Strafer"].Y = jairok
    end
})
Orbit:AddSlider('orbitz', {
    Text = 'Z',
    Default = 5,
    Min = 0,
    Max = 50,
    Rounding = 1,
    Compact = false,

    Callback = function(jairok)
        Script.Table["Strafer"].Z = jairok
    end
})

local Players = game:GetService("Players")
local Camera = game:GetService("Workspace").CurrentCamera
local UserInputService = game:GetService("UserInputService")
local Client = Players.LocalPlayer

local teleportation = {
    active = false,
    Height = 10,
    Radius = 20,
}

local function randomTeleport()
    if teleportation.active and Script.Target and Script.Target.Character and Script.Target.Character:FindFirstChild("HumanoidRootPart") then
        local targetPosition = Script.Target.Character.HumanoidRootPart.Position

        local randomOffset = Vector3.new(
            math.random(-teleportation.Radius, teleportation.Radius),
            teleportation.Height,
            math.random(-teleportation.Radius, teleportation.Radius)
        )

        local teleportPosition = targetPosition + randomOffset
        Client.Character:MoveTo(teleportPosition)
    end
end

game:GetService("RunService").Heartbeat:Connect(LPH_NO_VIRTUALIZE(function()
    if teleportation.active then
        randomTeleport()
        wait(0.3)
    end
end))


Client.CharacterAdded:Connect(function(character)
    local humanoid = character:WaitForChild("Humanoid")
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, false)
end)

Orbit2:AddToggle('RandomTpToggle', {
    Text = 'Random Tp',
    Default = false,
    Callback = function(Value)
        teleportation.active = Value
    end
})

Orbit2:AddSlider('HeightSlider', {
    Text = 'Height',
    Default = 10,
    Min = 0,
    Max = 50,
    Rounding = 1,
    Callback = function(Value)
        teleportation.Height = Value
    end
})

Orbit2:AddSlider('RadiusSlider', {
    Text = 'Radius',
    Default = 20,
    Min = 0,
    Max = 100,
    Rounding = 1,
    Callback = function(Value)
        teleportation.Radius = Value
    end
})

local trailColor = Color3.new(1, 1, 1)

selfvis:AddToggle('trailtog', {
    Text = 'Trail',
    Default = false,
    Tooltip = nil,

    Callback = function(Value)
        getgenv().trail = Value

        local function createTrail(character)
            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
            if not humanoidRootPart:FindFirstChild("Trail") then
                local Trail = Instance.new("Trail", humanoidRootPart)
                Trail.Name = "Trail"
                humanoidRootPart.Material = Enum.Material.Neon

                local Atch0 = Instance.new("Attachment", humanoidRootPart)
                Atch0.Position = Vector3.new(0, 1, 0)
                local Atch1 = Instance.new("Attachment", humanoidRootPart)
                Atch1.Position = Vector3.new(0, -1, 0)

                Trail.Attachment0 = Atch0
                Trail.Attachment1 = Atch1
                Trail.Color = ColorSequence.new(trailColor)
                Trail.Lifetime = 1
                Trail.Transparency = NumberSequence.new(0, 0)
                Trail.LightEmission = 1
                Trail.WidthScale = NumberSequence.new(0.08)
            end
        end

        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()

        character:WaitForChild("HumanoidRootPart")

        if getgenv().trail then
            createTrail(character)
        else
            local existingTrail = character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Trail")
            if existingTrail then
                existingTrail:Destroy()
            end
        end

        player.CharacterAdded:Connect(function(newCharacter)
            wait(1)
            if getgenv().trail then
                createTrail(newCharacter)
            end
        end)
    end
})

selfvis:AddSlider('trailslider', {
    Text = 'Trail Time',
    Default = 1,
    Min = 0,
    Max = 10,
    Rounding = 1,
    Compact = false,

    Callback = function(jairok)
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

        local existingTrail = humanoidRootPart:FindFirstChild("Trail")
        if existingTrail then
            existingTrail.Lifetime = jairok
        end
    end
})

selfvis:AddLabel('Trail color'):AddColorPicker('ColorPicker', {
    Default = Color3.new(1, 1, 1),
    Title = 'Trail Color',
    Transparency = nil,

    Callback = function(Value)
        trailColor = Value

        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

        local existingTrail = humanoidRootPart:FindFirstChild("Trail")
        if existingTrail then
            existingTrail.Color = ColorSequence.new(Value)
        end
    end
})

local Light = game:GetService("Lighting")
local ambientToggle = false

local function updateAmbientLighting()
    if ambientToggle then
        Light.Ambient = Color3.fromRGB(0, 85, 255)
        Light.ColorShift_Top = Color3.fromRGB(0, 0, 127)
        Light.OutdoorAmbient = Color3.fromRGB(0, 0, 255)
    else
        Light.Ambient = Color3.fromRGB(200, 200, 200)
        Light.ColorShift_Top = Color3.fromRGB(255, 255, 255)
        Light.OutdoorAmbient = Color3.fromRGB(200, 200, 200)
    end
end

local CFrameSettings = { Enabled = false, Speed = 5 }

khen:AddToggle("CFrameSpeedEnabled", {
    Text = "Enabled",
    Default = false,
    Tooltip = nil,
    Callback = function(Value)
        CFrameSettings.Enabled = Value
    end
})

khen:AddSlider("SpeedAmount", {
    Text = "Speed Amount",
    Default = 5,
    Min = 1,
    Max = 50,
    Rounding = 1,
    Callback = function(Value)
        CFrameSettings.Speed = Value
    end
})

game:GetService("RunService").Stepped:Connect(function()
    if CFrameSettings.Enabled then
        local character = game.Players.LocalPlayer.Character
        if character then
            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
            local moveDirection = character:FindFirstChild("Humanoid") and character.Humanoid.MoveDirection or Vector3.new(0, 0, 0)

            if humanoidRootPart then
                humanoidRootPart.CFrame = humanoidRootPart.CFrame + moveDirection * CFrameSettings.Speed
            end
        end
    end
end)

khen:AddButton({
    Text = "Load CFrame Button",
    Func = function()
        local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextButton")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0,0,0)
Frame.BackgroundTransparency = 0.5
Frame.Position = UDim2.new(1, -128, 0, 0)
Frame.Size = UDim2.new(0, 100, 0, 40)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(0,0,0)
TextButton.BackgroundTransparency = 1
TextButton.Size = UDim2.new(0, 26, 0, 26)
TextButton.AnchorPoint = Vector2.new(0,0.5)
TextButton.Position = UDim2.new(0.05, 0, 0.5, 0)
TextButton.Image = "rbxassetid://10734923214"
TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(0,0,0)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(0, 52, 0, 26)
TextLabel.AnchorPoint = Vector2.new(0.5,0.5)
TextLabel.Position = UDim2.new(0.65, 0, 0.5, 0)
TextLabel.Font = Enum.Font.Arimo
TextLabel.Text = "Cframe"
TextLabel.TextColor3 = Color3.fromRGB(255,95,0)
TextLabel.TextScaled = true
TextLabel.TextSize = 35
TextLabel.TextStrokeColor3 = Color3.fromRGB(0,0,0)
TextLabel.TextStrokeTransparency = 1

local uiCorner = Instance.new("UICorner", Frame)
uiCorner.CornerRadius = UDim.new(0, 8)

        TextLabel.Activated:Connect(function()
            if CFrameSettings.Enabled then
                CFrameSettings.Enabled = false
                TextButton.Image = "rbxassetid://10734923214"
            else
                CFrameSettings.Enabled = true
                TextButton.Image = "rbxassetid://10735024209"
            end
        end)
UITextSizeConstraint.Parent = TextLabel
UITextSizeConstraint.MaxTextSize = 30
local playeruh = game.Players.LocalPlayer
local function onCharacterAdded(character)
    ScreenGui.Parent = playeruh.PlayerGui
end
local function connectCharacterAdded()
    playeruh.CharacterAdded:Connect(onCharacterAdded)
end
connectCharacterAdded()
playeruh.CharacterRemoving:Connect(function()
    ScreenGui.Parent = nil
end)

local UserInputService = game:GetService("UserInputService")

local dragging = false
local dragInput
local dragStart
local startPos

local function update(input)
    local delta = input.Position - dragStart
    Frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

Frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = Frame.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

Frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if dragging and input == dragInput then
        update(input)
    end
end)
    end,
    DoubleClick = false,
    Tooltip = nil
})



local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer
local playerCharacter = player.Character or player.CharacterAdded:Wait()
local playerHumanoidRootPart = playerCharacter:FindFirstChild("HumanoidRootPart")
local playerHumanoid = playerCharacter:FindFirstChildOfClass("Humanoid")
local playerCamera = workspace.CurrentCamera
local playerGui = player:WaitForChild("PlayerGui")

local Script = {
    Functions = {},
    
    Settings = {
        Enabled = true,
        Macro = {
            Enabled = false,
            Connection = nil,
            Delay = 0,
        },
        ShowMacroGui = false,
    },
}

player.CharacterAdded:Connect(function(Character)
    playerCharacter = Character
    playerHumanoid = playerCharacter:FindFirstChildOfClass("Humanoid") or playerCharacter:WaitForChild("Humanoid")
    playerHumanoidRootPart = playerCharacter:WaitForChild("HumanoidRootPart")
end)

Script.Functions.EnableShiftlock = function()
    if playerCharacter and playerHumanoid and playerHumanoidRootPart then
        playerHumanoid.AutoRotate = false
        playerHumanoidRootPart.CFrame = CFrame.new(playerHumanoidRootPart.Position, Vector3.new(playerCamera.CFrame.LookVector.X * 10e10, playerHumanoidRootPart.Position.Y, playerCamera.CFrame.LookVector.Z * 10e10))
    end
end

Script.Functions.DisableShiftlock = function()
    if playerCharacter and playerHumanoid and playerHumanoidRootPart then
        playerHumanoid.AutoRotate = true
    end
    
    if Script.Settings.Marco.Connection then
        Script.Settings.Marco.Connection:Disconnect()
        Script.Settings.Marco.Connection = nil
    end
end

local macroGui = Instance.new("ScreenGui")
macroGui.Name = "MacroGui"
macroGui.Parent = playerGui
macroGui.Enabled = Script.Settings.ShowMacroGui
macroGui.ResetOnSpawn = false

local Frame = Instance.new("Frame")
local TextButton = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextButton")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")

Frame.Parent = macroGui
Frame.BackgroundColor3 = Color3.fromRGB(0,0,0)
Frame.BackgroundTransparency = 0.5
Frame.Position = UDim2.new(1, -128, 0, 47)
Frame.Size = UDim2.new(0, 100, 0, 40)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(0,0,0)
TextButton.BackgroundTransparency = 1
TextButton.Size = UDim2.new(0, 26, 0, 26)
TextButton.AnchorPoint = Vector2.new(0,0.5)
TextButton.Position = UDim2.new(0.05, 0, 0.5, 0)
TextButton.Image = "rbxassetid://10734923214"
TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(0,0,0)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(0, 52, 0, 26)
TextLabel.AnchorPoint = Vector2.new(0.5,0.5)
TextLabel.Position = UDim2.new(0.65, 0, 0.5, 0)
TextLabel.Font = Enum.Font.Arimo
TextLabel.Text = "Macro"
TextLabel.TextColor3 = Color3.fromRGB(255,95,0)
TextLabel.TextScaled = true
TextLabel.TextSize = 35
TextLabel.TextStrokeColor3 = Color3.fromRGB(0,0,0)
TextLabel.TextStrokeTransparency = 1

local uiCorner = Instance.new("UICorner", Frame)
uiCorner.CornerRadius = UDim.new(0, 8)


TextLabel.MouseButton1Click:Connect(function()
    if not Script.Settings.Marco then
        Script.Settings.Marco = { Enabled = false, Connection = nil, Delay = 0 }
    end

    Script.Settings.Marco.Enabled = not Script.Settings.Marco.Enabled

    if Script.Settings.Marco.Enabled then
        Script.Functions.EnableShiftlock()
        TextButton.Image = "rbxassetid://10735024209"
    else
        TextButton.Image = "rbxassetid://10734923214"
        Script.Functions.DisableShiftlock()
    end
end)

UITextSizeConstraint.Parent = TextLabel
UITextSizeConstraint.MaxTextSize = 30
local playeruh = game.Players.LocalPlayer
local function onCharacterAdded(character)
    ScreenGui.Parent = playeruh.PlayerGui
end
local function connectCharacterAdded()
    playeruh.CharacterAdded:Connect(onCharacterAdded)
end
connectCharacterAdded()
playeruh.CharacterRemoving:Connect(function()
    ScreenGui.Parent = nil
end)

local UserInputService = game:GetService("UserInputService")

local dragging = false
local dragInput
local dragStart
local startPos

local function update(input)
    local delta = input.Position - dragStart
    Frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

Frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = Frame.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

Frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if dragging and input == dragInput then
        update(input)
    end
end)


utilities:AddToggle('macro', {
    Text = 'Enable Macro',
    Default = false,
    Callback = function(Value)
        Script.Settings.Enabled = Value
    end
})

utilities:AddSlider('macrodelay', {
    Text = 'Delay',
    Default = 0,
    Min = 0.01,
    Max = 0.1,
    Rounding = 3,
    Compact = false,
    Callback = function(Value)
        Script.Settings.Marco.Delay = Value
    end
})


utilities:AddButton({
    Text = "Load Macro Button",
    Func = function()
        Script.Settings.ShowMacroGui = not Script.Settings.ShowMacroGui
        macroGui.Enabled = Script.Settings.ShowMacroGui
    end,
    DoubleClick = false,
    Tooltip = nil
})

local TimeElapsed = 0

RunService.RenderStepped:Connect(LPH_NO_VIRTUALIZE(function(s)
    if not Script.Settings.Enabled or not Script.Settings.Marco or not Script.Settings.Marco.Delay then return end

    TimeElapsed = TimeElapsed + s
    if TimeElapsed >= Script.Settings.Marco.Delay then
        if Script.Settings.Marco.Enabled then
            if not Script.Settings.Marco.Connection then
                Script.Settings.Marco.Connection = RunService.RenderStepped:Connect(function()
                    Script.Functions.EnableShiftlock()
                end)
            elseif Script.Settings.Marco.Connection then
                Script.Functions.DisableShiftlock()
            end
        end
        TimeElapsed = 0
    end
end))

autoair:AddToggle('autoair', {
    Text = 'Auto Air',
    Default = false, 
    Tooltip = nil,

    Callback = function(Value)
        khen.Random.AutoAir = Value
    end
})
autoair:AddSlider('autoairdelay', {
    Text = 'Delay',
    Default = 0.13,
    Min = 0,
    Max = 1,
    Rounding = 2,
    Compact = false,

    Callback = function(Value)
        khen.Random.AutoAirDelay = Value
            end
})
selfvis:AddToggle('forcefield', {
    Text = 'Forcefield',
    Default = false, 
    Tooltip = nil,

    Callback = function(Value)
        ForcefieldSettings.Enabled = Value
    end
})
selfvis:AddLabel('Forcefield color'):AddColorPicker('ColorPicker', {
    Default = Color3.new(1, 1, 1),
    Title = 'Forcefield color',
    Transparency = nil,

    Callback = function(Value)
        ForcefieldSettings.Color = Value
    end
})

local CrosshairEnabled = false

hehe:AddToggle("Crosshair", {
        Text = "Crosshair",
        Default = false,
        Tooltip = "i want fuckkk",
        Callback = function(state)
            CrosshairEnabled = state
        end
    })

-- Crosshair settings
getgenv().crosshair = {
    enabled = true,
    refreshrate = 0.015,
    mode = 'center',
    position = Vector2.new(0, 0),
    width = 2.5,
    length = 10,
    radius = 11,
    color = Color3.fromRGB(86, 87, 142),  -- Color for the crosshair lines
    spin = true,
    spin_speed = 150,
    spin_max = 340,
    spin_style = Enum.EasingStyle.Circular,
    resize = true,
    resize_speed = 150,
    resize_min = 5,
    resize_max = 22,
}

local old; old = hookfunction(Drawing.new, function(class, properties)
    local drawing = old(class)
    for i, v in next, properties or {} do
        drawing[i] = v
    end
    return drawing
end)

local runservice = game:GetService('RunService')
local inputservice = game:GetService('UserInputService')
local tweenservice = game:GetService('TweenService')
local camera = workspace.CurrentCamera

local last_render = 0

local drawings = {
    crosshair = {},
    text = {
        Drawing.new('Text', {Size = 13, Font = 2, Outline = true, Text = 'khen', Color = Color3.new(255, 255, 255)}),
        Drawing.new('Text', {Size = 13, Font = 2, Outline = true, Text = '.cc', Color = Color3.fromRGB(86, 87, 142)}),
    }
}

for idx = 1, 4 do
    drawings.crosshair[idx] = Drawing.new('Line')
    drawings.crosshair[idx + 4] = Drawing.new('Line')
end

function solve(angle, radius)
    return Vector2.new(
        math.sin(math.rad(angle)) * radius,
        math.cos(math.rad(angle)) * radius
    )
end

runservice.PostSimulation:Connect(function()
    local _tick = tick()

    if _tick - last_render > crosshair.refreshrate then
        last_render = _tick

        local position = camera.ViewportSize / 2

        local text_1 = drawings.text[1]
        local text_2 = drawings.text[2]

        text_1.Visible = CrosshairEnabled
        text_2.Visible = CrosshairEnabled

        if CrosshairEnabled then
            local text_x = text_1.TextBounds.X + text_2.TextBounds.X

            text_1.Position = position + Vector2.new(-text_x / 2, crosshair.radius + (crosshair.resize and crosshair.resize_max or crosshair.length) + 5)
            text_2.Position = text_1.Position + Vector2.new(text_1.TextBounds.X, 0)
            text_2.Color = Color3.fromRGB(86, 87, 142)

            for idx = 1, 4 do
                local outline = drawings.crosshair[idx]
                local inline = drawings.crosshair[idx + 4]

                local angle = (idx - 1) * 90
                local length = crosshair.length

                if crosshair.spin then
                    local spin_angle = -_tick * crosshair.spin_speed % crosshair.spin_max
                    angle = angle + tweenservice:GetValue(spin_angle / 360, crosshair.spin_style, Enum.EasingDirection.InOut) * 360
                end

                if crosshair.resize then
                    local resize_length = tick() * crosshair.resize_speed % 180
                    length = crosshair.resize_min + math.sin(math.rad(resize_length)) * crosshair.resize_max
                end

                inline.Visible = true
                inline.Color = Color3.fromRGB(86, 87, 142)  -- Set color for all inline lines
                inline.From = position + solve(angle, crosshair.radius)
                inline.To = position + solve(angle, crosshair.radius + length)
                inline.Thickness = crosshair.width

                outline.Visible = true
                outline.From = position + solve(angle, crosshair.radius - 1)
                outline.To = position + solve(angle, crosshair.radius + length + 1)
                outline.Thickness = crosshair.width + 1.5    
            end
        else
            for idx = 1, 4 do
                drawings.crosshair[idx].Visible = false
                drawings.crosshair[idx + 4].Visible = false
            end
        end
    end
end)

local textures = {
    enabled = false, -- // Global Switch
    material = Enum.Material.Pavement, -- // Map Texture You Wanna Use
    
    usecolor = false, -- // Changes Map Color With Texture
    color = Color3.fromRGB(0, 0, 0), -- // Color Of Your Choice
}

local OriginalMaterials = {}
local OriginalColors = {}

local function changeParts(model, applyChanges)
    for _, part in ipairs(model:GetChildren()) do
        if part:IsA("BasePart") then
            local isPlayerCharacter = false
            for _, player in ipairs(game.Players:GetPlayers()) do
                if part:IsDescendantOf(player.Character) then
                    isPlayerCharacter = true
                    break
                end
            end

            if not isPlayerCharacter then
                if applyChanges then
                    if not OriginalMaterials[part] then
                        OriginalMaterials[part] = part.Material
                        OriginalColors[part] = part.Color
                    end

                    part.Material = textures.material
                    if textures.usecolor then
                        part.Color = textures.color
                    end
                else
                    if OriginalMaterials[part] then
                        part.Material = OriginalMaterials[part]
                        part.Color = OriginalColors[part]
                    end
                end
            end
        end
        changeParts(part, applyChanges)
    end
end

kkk:AddToggle("Textures", {
        Text = "Textures",
        Default = false,
        Tooltip = nil,
        Callback = function(uwu)
            textures.enabled = uwu
    changeParts(game.Workspace, uwu)
        end
    })

kkk:AddDropdown('Textures', {
    Values = { 'Brick', 'Sand', 'Ice', 'Grass', 'Pavement' },
    Default = 'Pavement',
    Multi = false,

    Text = '',
    Tooltip = nil, 
    Callback = function(uwu)
        textures.material = Enum.Material[uwu] -- Convert string to Enum.Material
    if textures.enabled then
        changeParts(game.Workspace, true)
    end
    end
})

ss:AddButton({
    Text = "Load Zombie Anim",
    Func = function()
        khenanimationzombie =
    game:GetService("RunService").Stepped:Connect(
    function()
        game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
    end
)
        end,
    DoubleClick = false,
    Tooltip = nil
})






sss:AddButton({
    Text = "Load Korblox",
    Func = function()
        khen =
    game:GetService("RunService").Stepped:Connect(
    function()
         local ply = game.Players.LocalPlayer
local chr = ply.Character
chr.RightLowerLeg.MeshId = "902942093"
chr.RightLowerLeg.Transparency = "1"
chr.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
chr.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
chr.RightFoot.MeshId = "902942089"
chr.RightFoot.Transparency = "1"
    end
)
        end,
    DoubleClick = false,
    Tooltip = nil
})

sss:AddDivider()

sss:AddButton({
    Text = "Load Headless",
    Func = function()
        khen =
    game:GetService("RunService").Stepped:Connect(
    function()
         game.Players.LocalPlayer.Character.Head.Size = Vector3.new(0,0, 0)
    game.Players.LocalPlayer.Character.Head.Size = Vector3.new(0,0, 0)
    game.Players.LocalPlayer.Character.Head.Massless = true
    game.Players.LocalPlayer.Character.Head.Massless = true
    end
)
        end,
    DoubleClick = false,
    Tooltip = nil
})


-- Factor to make the rotation faster (change the value to adjust speed)
local speedMultiplier = 12  -- You can adjust this multiplier for faster/slower rotation

RunService.RenderStepped:Connect(function(Delta)
    if isToggled then
        -- Apply a multiplier to increase the speed effect
        LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(speed * speedMultiplier) * Delta, 0)
        LocalPlayer.Character:FindFirstChild("Humanoid").AutoRotate = false
    else
        LocalPlayer.Character:FindFirstChild("Humanoid").AutoRotate = true
    end
end)

-- Highest Roblox velocity is 128^2 or 16384
local velMax = (128 ^ 2)

-- Time to release and choke the replication packets
local timeRelease, timeChoke = 0.015, 0.105

-- Function aliases
local Property, Wait = sethiddenproperty, wait
local Radian, Random, Ceil = math.rad, math.random, math.ceil
local Angle = CFrame.Angles
local Vector = Vector3.new
local Service = game.GetService

-- Services
local Run = Service(game, 'RunService')
local statPing = Service(game, 'Stats').PerformanceStats.Ping
local Root = Service(game, 'Players').LocalPlayer.Character:WaitForChild("HumanoidRootPart")

-- Connections
local runRen, runBeat = Run.RenderStepped, Run.Heartbeat
local runRenWait, runRenCon = runRen.Wait, runRen.Connect
local runBeatCon = runBeat.Connect

-- Ping function
local Ping = statPing.GetValue

-- Client replication choking/sleeping
local function Sleep()
    Property(Root, 'NetworkIsSleeping', true)
end

-- Initialization function
local function Init()
    local rootVel = Root.Velocity
    local rootAng = Random(-180, 180)
    local rootOffset = Vector(
        Random(-velMax, velMax),
        -Random(0, velMax),
        Random(-velMax, velMax)
    )

    Root.CFrame *= Angle(0, Radian(rootAng), 0)
    Root.Velocity = rootOffset

    runRenWait(runRen) -- Sync velocity smoothly with render
    Root.CFrame *= Angle(0, Radian(-rootAng), 0)
    Root.Velocity = rootVel
end

-- Toggle control
local desyncEnabled = false
local desyncLoop

-- Function to toggle desync
local function toggleDesync(state)
    desyncEnabled = state
    if desyncEnabled then
        -- Start desync loop
        desyncLoop = Run.Heartbeat:Connect(function()
            Init()
            Wait(timeRelease)
            
            local chokeClient, chokeServer = runBeatCon(runBeat, Sleep), runRenCon(runRen, Sleep)
            Wait(Ceil(Ping(statPing)) / 1000)
            
            chokeClient:Disconnect()
            chokeServer:Disconnect()
        end)
    else
        -- Stop desync loop
        if desyncLoop then
            desyncLoop:Disconnect()
            desyncLoop = nil
        end
    end
end

-- Toggle button setup
fuck:AddToggle(
    "Enable Desync",
    {
        Text = "Invisible",
        Default = false,
        Tooltip = nil,
        Callback = function(state)
            toggleDesync(state)  -- Enable or disable desync based on button state
        end
    }
)

fuck:AddToggle(
    "Desync Velocity",
    {
        Text = "Velocity Manipulation",
        Default = false,
        Tooltip = "im so horny",
        Callback = function(state)
            getgenv().demisethebest = state  -- Toggle the velocity manipulation state
        end
    }
)

-- The script that manipulates the velocity
game:GetService("RunService").heartbeat:Connect(function()
    if getgenv().demisethebest == true then 
        local abc = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(1,1,1) * (2^16)
        game:GetService("RunService").RenderStepped:Wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = abc
    end 
end)

local Plr = game.Players.LocalPlayer
local StateEnabled = false  -- Tracks if the feature is enabled or not

-- Add the toggle button
fuck:AddToggle(
    "Enable Freefall Speed",
    {
        Text = "Freefall",
        Default = false,
        Tooltip = nil,
        Callback = function(state)
            StateEnabled = state  -- Update the state when the toggle is pressed
        end
    }
)

-- StateChanged event listener with the toggle
Plr.Character:WaitForChild("Humanoid").StateChanged:Connect(function(old, new)
    if StateEnabled and new == Enum.HumanoidStateType.Freefall then
        wait(0.27)
        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, -15, 0)
    end
end)








local MenuGroup = Tabs['UI']:AddLeftGroupbox('Menu')

-- I set NoUI so it does not show up in the keybinds menu
MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'End', NoUI = true, Text = 'Menu keybind' })


Library.ToggleKeybind = Options.MenuKeybind -- Allows you to have a custom keybind for the menu

-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- ThemeManager (Allows you to have a menu theme system)

-- Hand the library over to our managers
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- Adds our MenuKeybind to the ignore list
-- (do you want each config to have a different menu key? probably not.)
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' })

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
ThemeManager:SetFolder('khencc')
SaveManager:SetFolder('khencc/specific-game')

-- Builds our config menu on the right side of our tab
SaveManager:BuildConfigSection(Tabs['UI'])

-- Builds our theme menu (with plenty of built in themes) on the left side
-- NOTE: you can also call ThemeManager:ApplyToGroupbox to add it to a specific groupbox
ThemeManager:ApplyToTab(Tabs['UI'])

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()




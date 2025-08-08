-- khen.cc

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")

local plr = Players.LocalPlayer

-- Tạo GUI
local gui = Instance.new("ScreenGui")
gui.Name = "AimviewerGUI"
gui.Parent = game:GetService("CoreGui")

-- Colors nhìn bth hơn
local bg = Color3.fromRGB(40, 40, 45)
local bg2 = Color3.fromRGB(50, 50, 55)
local accent = Color3.fromRGB(65, 105, 225)
local red = Color3.fromRGB(220, 53, 69)
local green = Color3.fromRGB(40, 167, 69)
local text = Color3.fromRGB(240, 240, 240)

-- Toggle button nhỏ
local toggle = Instance.new("TextButton")
toggle.Parent = gui
toggle.BackgroundColor3 = bg
toggle.BorderSizePixel = 1
toggle.BorderColor3 = Color3.fromRGB(80, 80, 85)
toggle.Position = UDim2.new(1, -65, 0, 15)
toggle.Size = UDim2.new(0, 55, 0, 25)
toggle.Font = Enum.Font.Arial
toggle.Text = "aimviewer"
toggle.TextColor3 = text
toggle.TextSize = 9
toggle.Active = true
toggle.Draggable = true

local toggleCorner = Instance.new("UICorner")
toggleCorner.CornerRadius = UDim.new(0, 4)
toggleCorner.Parent = toggle

-- Main frame
local main = Instance.new("Frame")
main.Parent = gui
main.BackgroundColor3 = bg
main.BorderSizePixel = 1
main.BorderColor3 = Color3.fromRGB(80, 80, 85)
main.Position = UDim2.new(0.5, 0, 0.5, 0)
main.Size = UDim2.new(0, 300, 0, 380)
main.AnchorPoint = Vector2.new(0.5, 0.5)
main.Active = true
main.Draggable = true
main.Visible = false

local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0, 6)
mainCorner.Parent = main

-- Top bar
local topbar = Instance.new("Frame")
topbar.Parent = main
topbar.BackgroundColor3 = bg2
topbar.BorderSizePixel = 0
topbar.Size = UDim2.new(1, 0, 0, 35)

local topCorner = Instance.new("UICorner")
topCorner.CornerRadius = UDim.new(0, 6)
topCorner.Parent = topbar

local title = Instance.new("TextLabel")
title.Parent = topbar
title.BackgroundTransparency = 1
title.Position = UDim2.new(0, 10, 0, 0)
title.Size = UDim2.new(1, -20, 1, 0)
title.Font = Enum.Font.ArialBold
title.Text = "khen.cc"
title.TextColor3 = text
title.TextSize = 13
title.TextXAlignment = Enum.TextXAlignment.Left



-- Status
local status = Instance.new("TextLabel")
status.Parent = main
status.BackgroundColor3 = bg2
status.BorderSizePixel = 1
status.BorderColor3 = Color3.fromRGB(70, 70, 75)
status.Position = UDim2.new(0, 10, 0, 45)
status.Size = UDim2.new(1, -20, 0, 25)
status.Font = Enum.Font.Arial
status.Text = "no target"
status.TextColor3 = text
status.TextSize = 11

local statusCorner = Instance.new("UICorner")
statusCorner.CornerRadius = UDim.new(0, 3)
statusCorner.Parent = status

-- Search box
local search = Instance.new("TextBox")
search.Parent = main
search.BackgroundColor3 = bg2
search.BorderSizePixel = 1
search.BorderColor3 = Color3.fromRGB(70, 70, 75)
search.Position = UDim2.new(0, 10, 0, 80)
search.Size = UDim2.new(1, -20, 0, 30)
search.Font = Enum.Font.Arial
search.Text = ""
search.TextColor3 = text
search.TextSize = 12
search.PlaceholderText = "search players..."
search.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)

local searchCorner = Instance.new("UICorner")
searchCorner.CornerRadius = UDim.new(0, 3)
searchCorner.Parent = search

-- Player list
local playerList = Instance.new("ScrollingFrame")
playerList.Parent = main
playerList.BackgroundColor3 = bg2
playerList.BorderSizePixel = 1
playerList.BorderColor3 = Color3.fromRGB(70, 70, 75)
playerList.Position = UDim2.new(0, 10, 0, 120)
playerList.Size = UDim2.new(1, -20, 0, 150)
playerList.CanvasSize = UDim2.new(0, 0, 0, 0)
playerList.ScrollBarThickness = 5

local listCorner = Instance.new("UICorner")
listCorner.CornerRadius = UDim.new(0, 3)
listCorner.Parent = playerList

local layout = Instance.new("UIListLayout")
layout.Parent = playerList
layout.SortOrder = Enum.SortOrder.Name
layout.Padding = UDim.new(0, 2)

-- Controls
local controls = Instance.new("Frame")
controls.Parent = main
controls.BackgroundColor3 = bg2
controls.BorderSizePixel = 1
controls.BorderColor3 = Color3.fromRGB(70, 70, 75)
controls.Position = UDim2.new(0, 10, 0, 280)
controls.Size = UDim2.new(1, -20, 0, 80)

local controlsCorner = Instance.new("UICorner")
controlsCorner.CornerRadius = UDim.new(0, 3)
controlsCorner.Parent = controls

-- Beam toggle
local beamToggle = Instance.new("TextButton")
beamToggle.Parent = controls
beamToggle.BackgroundColor3 = green
beamToggle.BorderSizePixel = 0
beamToggle.Position = UDim2.new(0, 5, 0, 5)
beamToggle.Size = UDim2.new(1, -10, 0, 25)
beamToggle.Font = Enum.Font.Arial
beamToggle.Text = "beam: ON"
beamToggle.TextColor3 = text
beamToggle.TextSize = 11

local beamCorner = Instance.new("UICorner")
beamCorner.CornerRadius = UDim.new(0, 3)
beamCorner.Parent = beamToggle

-- Spectate toggle
local spectateToggle = Instance.new("TextButton")
spectateToggle.Parent = controls
spectateToggle.BackgroundColor3 = red
spectateToggle.BorderSizePixel = 0
spectateToggle.Position = UDim2.new(0, 5, 0, 35)
spectateToggle.Size = UDim2.new(0.48, 0, 0, 25)
spectateToggle.Font = Enum.Font.Arial
spectateToggle.Text = "spec: OFF"
spectateToggle.TextColor3 = text
spectateToggle.TextSize = 11

local spectateCorner = Instance.new("UICorner")
spectateCorner.CornerRadius = UDim.new(0, 3)
spectateCorner.Parent = spectateToggle

-- Reset button
local reset = Instance.new("TextButton")
reset.Parent = controls
reset.BackgroundColor3 = Color3.fromRGB(108, 117, 125)
reset.BorderSizePixel = 0
reset.Position = UDim2.new(0.52, 0, 0, 35)
reset.Size = UDim2.new(0.48, -5, 0, 25)
reset.Font = Enum.Font.Arial
reset.Text = "reset"
reset.TextColor3 = text
reset.TextSize = 11

local resetCorner = Instance.new("UICorner")
resetCorner.CornerRadius = UDim.new(0, 3)
resetCorner.Parent = reset

-- Variables
local currentTarget = nil
local beamEnabled = true
local spectateEnabled = false
local aimPart = nil
local beam = nil
local beamAttachment = nil
local attachment = nil
local connections = {}
local highlight = nil

-- Functions
local function notify(msg, isGood)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "aimviewer",
        Text = msg,
        Duration = 2
    })
end

local function cleanup()
    for _, conn in pairs(connections) do
        if conn then conn:Disconnect() end
    end
    connections = {}
    
    if beam then beam:Destroy() beam = nil end
    if beamAttachment then beamAttachment:Destroy() beamAttachment = nil end
    if aimPart then aimPart:Destroy() aimPart = nil end
    if attachment then attachment:Destroy() attachment = nil end
    if highlight then highlight:Destroy() highlight = nil end
end

local function updateStatus(txt, color)
    status.Text = txt
    status.TextColor3 = color or text
end

local function createHighlight(char)
    if not char then return nil end
    local h = Instance.new("Highlight")
    h.Parent = char
    h.FillColor = accent
    h.OutlineColor = accent
    h.FillTransparency = 0.7
    h.OutlineTransparency = 0.3
    return h
end

local function spectatePlayer(player)
    if not player or not player.Character then return end
    workspace.CurrentCamera.CameraSubject = player.Character.Humanoid
end

local function stopSpectate()
    if plr.Character and plr.Character:FindFirstChild("Humanoid") then
        workspace.CurrentCamera.CameraSubject = plr.Character.Humanoid
    end
end

local function setTarget(player)
    if not player or player == plr then return end
    
    cleanup()
    currentTarget = player
    
    updateStatus("tracking: " .. player.Name, Color3.fromRGB(100, 255, 100))
    notify("now tracking " .. player.Name)
    
    if player.Character then
        highlight = createHighlight(player.Character)
        if spectateEnabled then
            spectatePlayer(player)
        end
    end
    
    if not player.Character or not player.Character:FindFirstChild("Head") then
        player.CharacterAdded:Wait()
    end
    
    -- Create aim stuff
    aimPart = Instance.new("Part")
    aimPart.Parent = workspace
    aimPart.Size = Vector3.new(0.5, 0.5, 0.5)
    aimPart.CanCollide = false
    aimPart.Anchored = true
    aimPart.Transparency = 1
    
    beamAttachment = Instance.new("Attachment")
    beamAttachment.Parent = player.Character.Head
    
    attachment = Instance.new("Attachment")
    attachment.Parent = aimPart
    
    beam = Instance.new("Beam")
    beam.Parent = workspace
    beam.Enabled = beamEnabled
    beam.Color = ColorSequence.new(Color3.fromRGB(255, 50, 50))
    beam.Width0 = 0.2
    beam.Width1 = 0.2
    beam.FaceCamera = true
    beam.Attachment0 = beamAttachment
    beam.Attachment1 = attachment
    
    -- Handle respawn
    connections[#connections + 1] = player.CharacterAdded:Connect(function(newChar)
        repeat wait() until newChar:FindFirstChild("Head")
        
        if beamAttachment then beamAttachment:Destroy() end
        beamAttachment = Instance.new("Attachment")
        beamAttachment.Parent = newChar.Head
        beam.Attachment0 = beamAttachment
        
        if highlight then highlight:Destroy() end
        highlight = createHighlight(newChar)
        
        if spectateEnabled then
            spectatePlayer(player)
        end
    end)
    
    -- Handle leaving
    connections[#connections + 1] = Players.PlayerRemoving:Connect(function(leftPlayer)
        if leftPlayer == currentTarget then
            cleanup()
            currentTarget = nil
            updateStatus("target left", Color3.fromRGB(255, 100, 100))
            stopSpectate()
        end
    end)
    
    -- Update beam
    connections[#connections + 1] = RunService.Stepped:Connect(function()
        if not currentTarget or not currentTarget.Character then return end
        
        local tool = currentTarget.Character:FindFirstChildOfClass("Tool")
        if tool and tool:FindFirstChild("AMMO") and tool:FindFirstChild("Handle") and tool.Handle:FindFirstChild("Flare") then
            if beamEnabled then beam.Enabled = true end
            aimPart.Transparency = 0
            beamAttachment.Parent = tool.Handle.Flare
            
            if currentTarget.Backpack and currentTarget.Backpack:GetAttribute("AimPosition") then
                local aimPos = currentTarget.Backpack:GetAttribute("AimPosition")
                local dir = (aimPos - tool.Handle.Flare.WorldPosition).Unit * 300
                
                local params = RaycastParams.new()
                params.FilterDescendantsInstances = {tool.Parent}
                params.FilterType = Enum.RaycastFilterType.Exclude
                
                local hit = workspace:Raycast(tool.Handle.Flare.WorldPosition, dir, params)
                if hit then
                    aimPart.Position = hit.Position
                    local hitModel = hit.Instance:FindFirstAncestorOfClass("Model")
                    if hitModel and hitModel:FindFirstChild("Humanoid") then
                        beam.Color = ColorSequence.new(Color3.fromRGB(255, 255, 0))
                    else
                        beam.Color = ColorSequence.new(Color3.fromRGB(255, 50, 50))
                    end
                else
                    aimPart.Position = tool.Handle.Flare.WorldPosition + dir
                    beam.Color = ColorSequence.new(Color3.fromRGB(255, 50, 50))
                end
            end
        else
            beam.Enabled = false
            aimPart.Transparency = 1
            if currentTarget.Character and currentTarget.Character:FindFirstChild("Head") then
                beamAttachment.Parent = currentTarget.Character.Head
            end
        end
    end)
end

local function createPlayerButton(player)
    if player == plr then return end
    
    local btn = Instance.new("TextButton")
    btn.Parent = playerList
    btn.BackgroundColor3 = bg
    btn.BorderSizePixel = 1
    btn.BorderColor3 = Color3.fromRGB(60, 60, 65)
    btn.Size = UDim2.new(1, 0, 0, 25)
    btn.Font = Enum.Font.Arial
    btn.Text = player.DisplayName .. " (@" .. player.Name .. ")"
    btn.TextColor3 = text
    btn.TextSize = 10
    btn.TextXAlignment = Enum.TextXAlignment.Left
    
    local btnCorner = Instance.new("UICorner")
    btnCorner.CornerRadius = UDim.new(0, 2)
    btnCorner.Parent = btn
    
    local padding = Instance.new("UIPadding")
    padding.PaddingLeft = UDim.new(0, 8)
    padding.Parent = btn
    
    btn.MouseEnter:Connect(function()
        btn.BackgroundColor3 = Color3.fromRGB(60, 60, 65)
    end)
    
    btn.MouseLeave:Connect(function()
        if currentTarget ~= player then
            btn.BackgroundColor3 = bg
        end
    end)
    
    btn.MouseButton1Click:Connect(function()
        for _, b in pairs(playerList:GetChildren()) do
            if b:IsA("TextButton") then
                b.BackgroundColor3 = bg
            end
        end
        btn.BackgroundColor3 = accent
        setTarget(player)
    end)
end

local function updatePlayerList(searchTxt)
    for _, child in pairs(playerList:GetChildren()) do
        if child:IsA("TextButton") then
            child:Destroy()
        end
    end
    
    local count = 0
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= plr then
            local searchLower = searchTxt:lower()
            local nameMatch = player.Name:lower():find(searchLower, 1, true)
            local displayMatch = player.DisplayName:lower():find(searchLower, 1, true)
            
            if searchTxt == "" or nameMatch or displayMatch then
                createPlayerButton(player)
                count = count + 1
            end
        end
    end
    
    playerList.CanvasSize = UDim2.new(0, 0, 0, count * 27)
end


toggle.MouseButton1Click:Connect(function()
    main.Visible = not main.Visible
    if main.Visible then
        updatePlayerList("")
    end
end)



beamToggle.MouseButton1Click:Connect(function()
    beamEnabled = not beamEnabled
    if beamEnabled then
        beamToggle.Text = "beam: ON"
        beamToggle.BackgroundColor3 = green
    else
        beamToggle.Text = "beam: OFF"
        beamToggle.BackgroundColor3 = red
    end
    
    if beam then
        beam.Enabled = beamEnabled
    end
end)

spectateToggle.MouseButton1Click:Connect(function()
    spectateEnabled = not spectateEnabled
    if spectateEnabled then
        spectateToggle.Text = "spec: ON"
        spectateToggle.BackgroundColor3 = green
        if currentTarget then
            spectatePlayer(currentTarget)
        end
    else
        spectateToggle.Text = "spec: OFF"
        spectateToggle.BackgroundColor3 = red
        stopSpectate()
    end
end)

reset.MouseButton1Click:Connect(function()
    cleanup()
    if currentTarget then
        notify("stopped tracking " .. currentTarget.Name)
        currentTarget = nil
    end
    updateStatus("no target", Color3.fromRGB(200, 200, 200))
    stopSpectate()
    
    for _, btn in pairs(playerList:GetChildren()) do
        if btn:IsA("TextButton") then
            btn.BackgroundColor3 = bg
        end
    end
end)

search:GetPropertyChangedSignal("Text"):Connect(function()
    updatePlayerList(search.Text)
end)

Players.PlayerAdded:Connect(function()
    if main.Visible then
        updatePlayerList(search.Text)
    end
end)

Players.PlayerRemoving:Connect(function()
    if main.Visible then
        updatePlayerList(search.Text)
    end
end)


toggle.MouseEnter:Connect(function()
    toggle.BackgroundColor3 = Color3.fromRGB(50, 50, 55)
end)
toggle.MouseLeave:Connect(function()
    toggle.BackgroundColor3 = bg
end)

updateStatus("no target", Color3.fromRGB(200, 200, 200))
notify("aimviewer loaded")

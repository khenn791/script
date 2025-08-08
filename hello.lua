-- khen.cc

local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")

local LocalPlayer = Players.LocalPlayer
local Terrain = Workspace.Terrain

-- Colors for GUI and beams
local Colors = {
    Background = Color3.fromRGB(40, 40, 45),
    Background2 = Color3.fromRGB(50, 50, 55),
    Accent = Color3.fromRGB(65, 105, 225),
    Red = Color3.fromRGB(220, 53, 69),
    Green = Color3.fromRGB(40, 167, 69),
    Text = Color3.fromRGB(240, 240, 240),
    BeamAt = ColorSequence.new(Color3.fromRGB(255, 0, 0)),
    BeamAway = ColorSequence.new(Color3.fromRGB(0, 255, 0))
}

-- GUI setup
local gui = Instance.new("ScreenGui")
gui.Name = "AimviewerGUI"
gui.Parent = game:GetService("CoreGui")

-- Toggle button
local toggle = Instance.new("TextButton")
toggle.Parent = gui
toggle.BackgroundColor3 = Colors.Background
toggle.BorderSizePixel = 1
toggle.BorderColor3 = Color3.fromRGB(80, 80, 85)
toggle.Position = UDim2.new(1, -65, 0, 15)
toggle.Size = UDim2.new(0, 55, 0, 25)
toggle.Font = Enum.Font.Arial
toggle.Text = "aimviewer"
toggle.TextColor3 = Colors.Text
toggle.TextSize = 9
toggle.Active = true
toggle.Draggable = true

local toggleCorner = Instance.new("UICorner")
toggleCorner.CornerRadius = UDim.new(0, 4)
toggleCorner.Parent = toggle

-- Main frame
local main = Instance.new("Frame")
main.Parent = gui
main.BackgroundColor3 = Colors.Background
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
topbar.BackgroundColor3 = Colors.Background2
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
title.TextColor3 = Colors.Text
title.TextSize = 13
title.TextXAlignment = Enum.TextXAlignment.Left

-- Status
local status = Instance.new("TextLabel")
status.Parent = main
status.BackgroundColor3 = Colors.Background2
status.BorderSizePixel = 1
status.BorderColor3 = Color3.fromRGB(70, 70, 75)
status.Position = UDim2.new(0, 10, 0, 45)
status.Size = UDim2.new(1, -20, 0, 25)
status.Font = Enum.Font.Arial
status.Text = "no target"
status.TextColor3 = Colors.Text
status.TextSize = 11

local statusCorner = Instance.new("UICorner")
statusCorner.CornerRadius = UDim.new(0, 3)
statusCorner.Parent = status

-- Search box
local search = Instance.new("TextBox")
search.Parent = main
search.BackgroundColor3 = Colors.Background2
search.BorderSizePixel = 1
search.BorderColor3 = Color3.fromRGB(70, 70, 75)
search.Position = UDim2.new(0, 10, 0, 80)
search.Size = UDim2.new(1, -20, 0, 30)
search.Font = Enum.Font.Arial
search.Text = ""
search.TextColor3 = Colors.Text
search.TextSize = 12
search.PlaceholderText = "search players..."
search.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)

local searchCorner = Instance.new("UICorner")
searchCorner.CornerRadius = UDim.new(0, 3)
searchCorner.Parent = search

-- Player list
local playerList = Instance.new("ScrollingFrame")
playerList.Parent = main
playerList.BackgroundColor3 = Colors.Background2
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
controls.BackgroundColor3 = Colors.Background2
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
beamToggle.BackgroundColor3 = Colors.Green
beamToggle.BorderSizePixel = 0
beamToggle.Position = UDim2.new(0, 5, 0, 5)
beamToggle.Size = UDim2.new(1, -10, 0, 25)
beamToggle.Font = Enum.Font.Arial
beamToggle.Text = "beam: ON"
beamToggle.TextColor3 = Colors.Text
beamToggle.TextSize = 11

local beamCorner = Instance.new("UICorner")
beamCorner.CornerRadius = UDim.new(0, 3)
beamCorner.Parent = beamToggle

-- Spectate toggle
local spectateToggle = Instance.new("TextButton")
spectateToggle.Parent = controls
spectateToggle.BackgroundColor3 = Colors.Red
spectateToggle.BorderSizePixel = 0
spectateToggle.Position = UDim2.new(0, 5, 0, 35)
spectateToggle.Size = UDim2.new(0.48, 0, 0, 25)
spectateToggle.Font = Enum.Font.Arial
spectateToggle.Text = "spec: OFF"
spectateToggle.TextColor3 = Colors.Text
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
reset.TextColor3 = Colors.Text
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
local Beams = {} -- Track all beams for cleanup

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
    status.TextColor3 = color or Colors.Text
end

local function createHighlight(char)
    if not char then return nil end
    local h = Instance.new("Highlight")
    h.Parent = char
    h.FillColor = Colors.Accent
    h.OutlineColor = Colors.Accent
    h.FillTransparency = 0.7
    h.OutlineTransparency = 0.3
    return h
end

local function spectatePlayer(player)
    if not player or not player.Character then return end
    Workspace.CurrentCamera.CameraSubject = player.Character.Humanoid
end

local function stopSpectate()
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
        Workspace.CurrentCamera.CameraSubject = LocalPlayer.Character.Humanoid
    end
end

local function isBeamHit(beam, mousePos, character)
    local attachment = beam.Attachment1
    local origin = beam.Attachment0.WorldPosition
    local direction = (mousePos - origin).Unit * 300

    local raycastParams = RaycastParams.new()
    raycastParams.FilterDescendantsInstances = {character, Workspace.CurrentCamera}
    raycastParams.FilterType = Enum.RaycastFilterType.Blacklist

    local raycastResult = Workspace:Raycast(origin, direction, raycastParams)

    if not raycastResult then
        beam.Color = Colors.BeamAway
        attachment.WorldPosition = mousePos
        return
    end

    beam.Color = raycastResult.Instance:IsDescendantOf(LocalPlayer.Character) and Colors.BeamAt or Colors.BeamAway
    attachment.WorldPosition = raycastResult.Position
end

local function setTarget(player)
    if not player or player == LocalPlayer then return end
    
    cleanup()
    currentTarget = player
    
    updateStatus("tracking: " .. player.Name, Colors.Green)
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
    aimPart.Parent = Workspace
    aimPart.Size = Vector3.new(0.5, 0.5, 0.5)
    aimPart.CanCollide = false
    aimPart.Anchored = true
    aimPart.Transparency = 1
    
    beamAttachment = Instance.new("Attachment")
    beamAttachment.Parent = player.Character:WaitForChild("Head"):FindFirstChild("FaceCenterAttachment") or player.Character.Head
    
    attachment = Instance.new("Attachment")
    attachment.Parent = aimPart
    
    beam = Instance.new("Beam")
    beam.Parent = Workspace
    beam.Enabled = beamEnabled
    beam.Width0 = 0.2
    beam.Width1 = 0.2
    beam.FaceCamera = true
    beam.Attachment0 = beamAttachment
    beam.Attachment1 = attachment
    table.insert(Beams, beam)
    
    -- Handle respawn
    connections[#connections + 1] = player.CharacterAdded:Connect(function(newChar)
        repeat wait() until newChar:FindFirstChild("Head")
        
        if beamAttachment then beamAttachment:Destroy() end
        beamAttachment = Instance.new("Attachment")
        beamAttachment.Parent = newChar:FindFirstChild("FaceCenterAttachment") or newChar.Head
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
            updateStatus("target left", Colors.Red)
            stopSpectate()
        end
        -- Clean up beams for leaving players
        for i, b in ipairs(Beams) do
            if b.Parent == leftPlayer.Character then
                b:Destroy()
                table.remove(Beams, i)
                break
            end
        end
    end)
    
    -- Update beam
    connections[#connections + 1] = RunService.Stepped:Connect(function()
        if not currentTarget or not currentTarget.Character then return end
        
        local bodyEffects = currentTarget.Character:FindFirstChild("BodyEffects")
        local mousePos = bodyEffects and bodyEffects:FindFirstChild("MousePos")
        local gunScript = currentTarget.Character:FindFirstChild("GunScript", true)
        
        if gunScript and mousePos then
            if beamEnabled then beam.Enabled = true end
            aimPart.Transparency = 0
            beamAttachment.Parent = currentTarget.Character:FindFirstChild("Head"):FindFirstChild("FaceCenterAttachment") or currentTarget.Character.Head
            isBeamHit(beam, mousePos.Value, currentTarget.Character)
        else
            beam.Enabled = false
            aimPart.Transparency = 1
            if currentTarget.Character and currentTarget.Character:FindFirstChild("Head") then
                beamAttachment.Parent = currentTarget.Character:FindFirstChild("Head"):FindFirstChild("FaceCenterAttachment") or currentTarget.Character.Head
            end
        end
    end)
end

local function createPlayerButton(player)
    if player == LocalPlayer then return end
    
    local btn = Instance.new("TextButton")
    btn.Parent = playerList
    btn.BackgroundColor3 = Colors.Background
    btn.BorderSizePixel = 1
    btn.BorderColor3 = Color3.fromRGB(60, 60, 65)
    btn.Size = UDim2.new(1, 0, 0, 25)
    btn.Font = Enum.Font.Arial
    btn.Text = player.DisplayName .. " (@" .. player.Name .. ")"
    btn.TextColor3 = Colors.Text
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
            btn.BackgroundColor3 = Colors.Background
        end
    end)
    
    btn.MouseButton1Click:Connect(function()
        for _, b in pairs(playerList:GetChildren()) do
            if b:IsA("TextButton") then
                b.BackgroundColor3 = Colors.Background
            end
        end
        btn.BackgroundColor3 = Colors.Accent
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
        if player ~= LocalPlayer then
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

-- Event connections
toggle.MouseButton1Click:Connect(function()
    main.Visible = not main.Visible
    if main.Visible then
        updatePlayerList("")
    end
end)

toggle.MouseEnter:Connect(function()
    toggle.BackgroundColor3 = Colors.Background2
end)
toggle.MouseLeave:Connect(function()
    toggle.BackgroundColor3 = Colors.Background
end)

beamToggle.MouseButton1Click:Connect(function()
    beamEnabled = not beamEnabled
    if beamEnabled then
        beamToggle.Text = "beam: ON"
        beamToggle.BackgroundColor3 = Colors.Green
    else
        beamToggle.Text = "beam: OFF"
        beamToggle.BackgroundColor3 = Colors.Red
    end
    
    if beam then
        beam.Enabled = beamEnabled
    end
end)

spectateToggle.MouseButton1Click:Connect(function()
    spectateEnabled = not spectateEnabled
    if spectateEnabled then
        spectateToggle.Text = "spec: ON"
        spectateToggle.BackgroundColor3 = Colors.Green
        if currentTarget then
            spectatePlayer(currentTarget)
        end
    else
        spectateToggle.Text = "spec: OFF"
        spectateToggle.BackgroundColor3 = Colors.Red
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
            btn.BackgroundColor3 = Colors.Background
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

-- Initialize
updateStatus("no target", Color3.fromRGB(200, 200, 200))
notify("aimviewer loaded")


local VipNotify = {}
VipNotify.__index = VipNotify

-- Default configuration settings
local DefaultSettings = {
    Duration = 3,
    Position = "TopRight", -- TopRight, TopLeft, BottomRight, BottomLeft, Center
    TitleFont = Enum.Font.GothamBold,
    TextFont = Enum.Font.Gotham,
    TitleSize = 16,
    TextSize = 14,
    TitleColor = Color3.fromRGB(255, 255, 255),
    TextColor = Color3.fromRGB(230, 230, 230),
    BackgroundColor = Color3.fromRGB(25, 25, 25),
    AccentColor = Color3.fromRGB(255, 0, 128), -- VIP Pink color
    CornerRadius = UDim.new(0, 6),
    MinWidth = 250,
    MaxWidth = 300,
    IconEnabled = true,
    SoundEnabled = true,
    AnimationStyle = "Slide", -- Slide, Fade, Scale
    Transparency = 0.05,
    Shadow = true,
    BorderThickness = 1
}

-- Notification types with their icons and colors
local NotificationTypes = {
    Success = {
        Icon = "rbxassetid://7733658504", -- Green checkmark
        Color = Color3.fromRGB(0, 255, 128)
    },
    Error = {
        Icon = "rbxassetid://7733658271", -- Red X
        Color = Color3.fromRGB(255, 50, 50)
    },
    Warning = {
        Icon = "rbxassetid://7733897805", -- Yellow exclamation mark
        Color = Color3.fromRGB(255, 200, 0)
    },
    Info = {
        Icon = "rbxassetid://7734053495", -- Blue information icon
        Color = Color3.fromRGB(0, 150, 255)
    },
    Custom = {
        Icon = "", -- Will be set by user
        Color = Color3.fromRGB(255, 0, 128) -- Default accent
    }
}

-- Sound effects for notifications
local NotificationSounds = {
    Success = "rbxassetid://6333823895",
    Error = "rbxassetid://6333822595",
    Warning = "rbxassetid://6333818741",
    Info = "rbxassetid://6333825655",
    Custom = "rbxassetid://6333824724"
}

-- Constructor for the notification system
function VipNotify.new(settings)
    local self = setmetatable({}, VipNotify)
    
    -- Merge user settings with defaults
    self.Settings = {}
    for option, default in pairs(DefaultSettings) do
        self.Settings[option] = settings and settings[option] ~= nil and settings[option] or default
    end
    
    -- Storage for active notifications
    self.ActiveNotifications = {}
    self.ScreenGui = nil
    
    return self
}

-- Set up the notification UI
function VipNotify:SetupUI()
    if self.ScreenGui then return end
    
    -- Create ScreenGui
    self.ScreenGui = Instance.new("ScreenGui")
    self.ScreenGui.Name = "VipNotifySystem"
    self.ScreenGui.ResetOnSpawn = false
    self.ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    -- Check if CoreGui is accessible
    local parent = game:GetService("CoreGui")
    local success, _ = pcall(function()
        self.ScreenGui.Parent = parent
    end)
    
    if not success then
        parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
        self.ScreenGui.Parent = parent
    end
    
    -- Create containers for different positions
    self.Containers = {}
    
    local positions = {
        TopRight = UDim2.new(1, -20, 0, 20),
        TopLeft = UDim2.new(0, 20, 0, 20),
        BottomRight = UDim2.new(1, -20, 1, -20),
        BottomLeft = UDim2.new(0, 20, 1, -20),
        Center = UDim2.new(0.5, 0, 0.5, 0)
    }
    
    for position, positionUDim in pairs(positions) do
        local container = Instance.new("Frame")
        container.Name = position .. "Container"
        container.BackgroundTransparency = 1
        container.Size = UDim2.new(0, self.Settings.MaxWidth, 1, 0)
        container.Position = positionUDim
        container.AnchorPoint = Vector2.new(
            position:find("Right") and 1 or position == "Center" and 0.5 or 0,
            position:find("Bottom") and 1 or position == "Center" and 0.5 or 0
        )
        
        local listLayout = Instance.new("UIListLayout")
        listLayout.Name = "NotificationLayout"
        listLayout.SortOrder = Enum.SortOrder.LayoutOrder
        
        if position:find("Bottom") then
            listLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
            listLayout.Padding = UDim.new(0, -10) -- Overlap slightly for a stacked look
        else
            listLayout.VerticalAlignment = Enum.VerticalAlignment.Top
            listLayout.Padding = UDim.new(0, 10)
        end
        
        listLayout.Parent = container
        container.Parent = self.ScreenGui
        
        self.Containers[position] = container
    end
    
    return true
end

-- Create a notification
function VipNotify:Notify(title, message, options)
    options = options or {}
    
    -- Set up UI if not already done
    if not self.ScreenGui then
        self:SetupUI()
    end
    
    -- Get notification type settings
    local notifType = options.type or "Info"
    local typeInfo = NotificationTypes[notifType] or NotificationTypes.Info
    
    -- Create notification frame
    local notification = Instance.new("Frame")
    notification.Name = "VipNotification_" .. tostring(#self.ActiveNotifications + 1)
    notification.BackgroundColor3 = self.Settings.BackgroundColor
    notification.BorderSizePixel = self.Settings.BorderThickness
    notification.BorderColor3 = typeInfo.Color
    notification.Size = UDim2.new(0, self.Settings.MinWidth, 0, 0) -- Height will be determined by contents
    notification.AutomaticSize = Enum.AutomaticSize.Y
    
    -- Add corner rounding
    local corner = Instance.new("UICorner")
    corner.CornerRadius = self.Settings.CornerRadius
    corner.Parent = notification
    
    -- Add shadow if enabled
    if self.Settings.Shadow then
        local shadow = Instance.new("ImageLabel")
        shadow.Name = "Shadow"
        shadow.BackgroundTransparency = 1
        shadow.Image = "rbxassetid://7912134082"
        shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
        shadow.ImageTransparency = 0.6
        shadow.ScaleType = Enum.ScaleType.Slice
        shadow.SliceCenter = Rect.new(80, 80, 175, 175)
        shadow.Size = UDim2.new(1, 20, 1, 20)
        shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
        shadow.AnchorPoint = Vector2.new(0.5, 0.5)
        shadow.ZIndex = -1
        shadow.Parent = notification
    end
    
    -- Create container for content
    local contentPadding = 12
    local contentContainer = Instance.new("Frame")
    contentContainer.Name = "ContentContainer"
    contentContainer.BackgroundTransparency = 1
    contentContainer.Size = UDim2.new(1, 0, 0, 0)
    contentContainer.AutomaticSize = Enum.AutomaticSize.Y
    contentContainer.Parent = notification
    
    local padding = Instance.new("UIPadding")
    padding.PaddingTop = UDim.new(0, contentPadding)
    padding.PaddingBottom = UDim.new(0, contentPadding)
    padding.PaddingLeft = UDim.new(0, contentPadding)
    padding.PaddingRight = UDim.new(0, contentPadding)
    padding.Parent = contentContainer
    
    local layout = Instance.new("UIListLayout")
    layout.SortOrder = Enum.SortOrder.LayoutOrder
    layout.Padding = UDim.new(0, 8)
    layout.Parent = contentContainer
    
    -- Title bar with icon
    local titleBar = Instance.new("Frame")
    titleBar.Name = "TitleBar"
    titleBar.BackgroundTransparency = 1
    titleBar.Size = UDim2.new(1, 0, 0, self.Settings.TitleSize + 2)
    titleBar.Parent = contentContainer
    
    -- Add icon if enabled
    local titleTextOffset = 0
    if self.Settings.IconEnabled and typeInfo.Icon ~= "" then
        local iconSize = self.Settings.TitleSize + 2
        local icon = Instance.new("ImageLabel")
        icon.Name = "Icon"
        icon.BackgroundTransparency = 1
        icon.Size = UDim2.new(0, iconSize, 0, iconSize)
        icon.Position = UDim2.new(0, 0, 0, 0)
        icon.Image = options.icon or typeInfo.Icon
        icon.ImageColor3 = options.iconColor or typeInfo.Color
        icon.Parent = titleBar
        
        titleTextOffset = iconSize + 8
    end
    
    -- Title text
    local titleText = Instance.new("TextLabel")
    titleText.Name = "Title"
    titleText.BackgroundTransparency = 1
    titleText.Size = UDim2.new(1, -titleTextOffset, 1, 0)
    titleText.Position = UDim2.new(0, titleTextOffset, 0, 0)
    titleText.Font = self.Settings.TitleFont
    titleText.TextSize = self.Settings.TitleSize
    titleText.TextColor3 = options.titleColor or self.Settings.TitleColor
    titleText.TextXAlignment = Enum.TextXAlignment.Left
    titleText.TextTruncate = Enum.TextTruncate.AtEnd
    titleText.Text = title
    titleText.Parent = titleBar
    
    -- Message text
    local messageText = Instance.new("TextLabel")
    messageText.Name = "Message"
    messageText.BackgroundTransparency = 1
    messageText.Size = UDim2.new(1, 0, 0, 0)
    messageText.AutomaticSize = Enum.AutomaticSize.Y
    messageText.Font = self.Settings.TextFont
    messageText.TextSize = self.Settings.TextSize
    messageText.TextColor3 = options.textColor or self.Settings.TextColor
    messageText.TextXAlignment = Enum.TextXAlignment.Left
    messageText.TextYAlignment = Enum.TextYAlignment.Top
    messageText.TextWrapped = true
    messageText.Text = message
    messageText.LayoutOrder = 1
    messageText.Parent = contentContainer
    
    -- Progress bar for countdown
    local progressBarContainer = Instance.new("Frame")
    progressBarContainer.Name = "ProgressBarContainer"
    progressBarContainer.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    progressBarContainer.BorderSizePixel = 0
    progressBarContainer.Size = UDim2.new(1, 0, 0, 3)
    progressBarContainer.Position = UDim2.new(0, 0, 1, 0)
    progressBarContainer.AnchorPoint = Vector2.new(0, 1)
    progressBarContainer.Parent = notification
    
    local progressBar = Instance.new("Frame")
    progressBar.Name = "ProgressBar"
    progressBar.BackgroundColor3 = options.progressColor or typeInfo.Color
    progressBar.BorderSizePixel = 0
    progressBar.Size = UDim2.new(1, 0, 1, 0)
    progressBar.Parent = progressBarContainer
    
    -- Add to appropriate container
    local position = options.position or self.Settings.Position
    local container = self.Containers[position]
    
    notification.Parent = container
    table.insert(self.ActiveNotifications, notification)
    
    -- Play sound if enabled
    if self.Settings.SoundEnabled then
        local soundId = options.sound or NotificationSounds[notifType]
        if soundId then
            local sound = Instance.new("Sound")
            sound.SoundId = soundId
            sound.Volume = 0.5
            sound.Parent = self.ScreenGui
            sound:Play()
            
            game:GetService("Debris"):AddItem(sound, 2)
        end
    end
    
    -- Animation based on settings
    notification.BackgroundTransparency = 1
    notification.Size = UDim2.new(0, self.Settings.MinWidth, 0, 0)
    local targetSize = UDim2.new(0, self.Settings.MinWidth, 0, 0)
    
    local duration = options.duration or self.Settings.Duration
    
    -- Animation handling
    local animationStyle = options.animationStyle or self.Settings.AnimationStyle
    
    if animationStyle == "Slide" then
        notification.Position = position:find("Left") and 
            UDim2.new(-1, 0, 0, 0) or 
            UDim2.new(1, 0, 0, 0)
        
        notification:TweenPosition(
            UDim2.new(0, 0, 0, 0),
            Enum.EasingDirection.Out,
            Enum.EasingStyle.Quint,
            0.3,
            true
        )
    elseif animationStyle == "Scale" then
        notification.Size = UDim2.new(0, self.Settings.MinWidth, 0, 0)
        notification.Position = UDim2.new(0, 0, 0, 0)
    end
    
    -- Fade in
    local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
    local targetProperties = {
        BackgroundTransparency = self.Settings.Transparency
    }
    
    local tween = game:GetService("TweenService"):Create(notification, tweenInfo, targetProperties)
    tween:Play()
    
    -- Progress bar animation
    local progressTweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Linear)
    local progressTween = game:GetService("TweenService"):Create(
        progressBar, 
        progressTweenInfo, 
        {Size = UDim2.new(0, 0, 1, 0)}
    )
    progressTween:Play()
    
    -- Close after duration
    local function closeNotification()
        -- Check if notification still exists
        if not notification or not notification.Parent then return end
        
        -- Remove from active notifications
        for i, notif in ipairs(self.ActiveNotifications) do
            if notif == notification then
                table.remove(self.ActiveNotifications, i)
                break
            end
        end
        
        -- Close animation
        if animationStyle == "Slide" then
            notification:TweenPosition(
                position:find("Left") and UDim2.new(-1, 0, 0, 0) or UDim2.new(1, 0, 0, 0),
                Enum.EasingDirection.Out,
                Enum.EasingStyle.Quint,
                0.3,
                true
            )
        end
        
        -- Fade out
        local closeTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
        local closeTween = game:GetService("TweenService"):Create(
            notification, 
            closeTweenInfo, 
            {BackgroundTransparency = 1}
        )
        closeTween:Play()
        
        -- Remove after animation
        game:GetService("Debris"):AddItem(notification, 0.35)
    end
    
    delay(duration, closeNotification)
    
    -- Close button
    local closeButton = Instance.new("TextButton")
    closeButton.Name = "CloseButton"
    closeButton.BackgroundTransparency = 1
    closeButton.Position = UDim2.new(1, -8, 0, 8)
    closeButton.Size = UDim2.new(0, 16, 0, 16)
    closeButton.Font = Enum.Font.GothamBold
    closeButton.Text = "×"
    closeButton.TextColor3 = Color3.fromRGB(200, 200, 200)
    closeButton.TextSize = 18
    closeButton.AnchorPoint = Vector2.new(1, 0)
    closeButton.Parent = notification
    
    closeButton.MouseEnter:Connect(function()
        closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    end)
    
    closeButton.MouseLeave:Connect(function()
        closeButton.TextColor3 = Color3.fromRGB(200, 200, 200)
    end)
    
    closeButton.MouseButton1Click:Connect(function()
        closeNotification()
    end)
    
    -- Return the notification object for potential future reference
    return notification
end

-- Method to show a success notification
function VipNotify:Success(title, message, options)
    options = options or {}
    options.type = "Success"
    return self:Notify(title, message, options)
end

-- Method to show an error notification
function VipNotify:Error(title, message, options)
    options = options or {}
    options.type = "Error"
    return self:Notify(title, message, options)
end

-- Method to show a warning notification
function VipNotify:Warning(title, message, options)
    options = options or {}
    options.type = "Warning"
    return self:Notify(title, message, options)
end

-- Method to show an info notification
function VipNotify:Info(title, message, options)
    options = options or {}
    options.type = "Info"
    return self:Notify(title, message, options)
end

-- Method to show a custom notification
function VipNotify:Custom(title, message, options)
    options = options or {}
    options.type = "Custom"
    return self:Notify(title, message, options)
end

-- Clear all notifications
function VipNotify:ClearAll()
    for _, notification in ipairs(self.ActiveNotifications) do
        if notification and notification.Parent then
            notification:Destroy()
        end
    end
    
    self.ActiveNotifications = {}
end

return VipNotify
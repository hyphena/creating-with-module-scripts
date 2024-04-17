local Players = game:GetService("Players")
local ServerStorage = game:GetService("ServerStorage")
-- Require the module script below ⯆


local function playerSetup(player)
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player

	local lockpicks = Instance.new("IntValue")
	lockpicks.Name = "Lockpicks"
	lockpicks.Parent = leaderstats
	lockpicks.Value = 0

	local treasure = Instance.new("IntValue")
	treasure.Name = "Treasure"
	treasure.Parent = leaderstats
	treasure.Value = 0
end

Players.PlayerAdded:Connect(playerSetup)

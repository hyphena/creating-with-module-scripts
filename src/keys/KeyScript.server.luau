local ServerStorage = game:GetService("ServerStorage")
-- Require the module script below ⯆
local TreasureManager = require(ServerStorage.ServerStorage:WaitForChild("TreasureManager"))


local keys = script.Parent
local keysFolder = keys.Parts
local keysArray = keysFolder:GetChildren()

local function partTouched(otherPart, keyPart)
	local whichCharacter = otherPart.Parent
	local humanoid = whichCharacter:FindFirstChildWhichIsA("Humanoid")
	if humanoid then
		-- Give the player a key and destroy the key part
		-- =============================================
		TreasureManager.getKey(keyPart, whichCharacter)
		-- =============================================
	end
end

-- Binds every key part to the touch function so it works on all parts
for keyIndex = 1, #keysArray do
	local keyPart = keysArray[keyIndex]
	keyPart.Touched:Connect(function(otherPart)
		partTouched(otherPart, keyPart)
	end)
end

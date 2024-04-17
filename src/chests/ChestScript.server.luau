local ServerStorage = game:GetService("ServerStorage")
-- Require the module script below ⯆

local chests = script.Parent
local chestsFolder = chests.Parts
local chestsArray = chestsFolder:GetChildren()

local function partTouched(otherPart, chestPart)
	local character = otherPart.Parent
	local humanoid = character:FindFirstChildWhichIsA("Humanoid")
	if humanoid then
		-- Check if the player can open a chest, then let them get treasure
		-- =============================================

		-- =============================================
	end
end

-- Binds every chest part to the touch function so it works on all parts
for chestIndex = 1, #chestsArray do
	local chestPart = chestsArray[chestIndex]:WaitForChild("Collider")
	chestPart.Touched:Connect(function(otherPart)
		partTouched(otherPart, chestPart)
	end)
end

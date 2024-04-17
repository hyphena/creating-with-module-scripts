local TreasureManager = {}
local Players = game:GetService("Players")
local keyDrop = 1

-- Local functions
local function getLeaderstat(leaderstat, whichCharacter)
  local player = Players:GetPlayerFromCharacter(whichCharacter)
  local leaderstats = player:FindFirstChild("leaderstats")

  return leaderstats:WaitForChild(leaderstat)
end

-- Public functions
function TreasureManager.getKey(keyPart, whichCharacter)
  local playerKeys = getLeaderstat("Lockpicks", whichCharacter)
  playerKeys.Value = playerKeys.Value + keyDrop

  keyPart:Destroy()
end

return TreasureManager

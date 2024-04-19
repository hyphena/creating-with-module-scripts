local TreasureManager = {}
local Players = game:GetService("Players")

local keyValue = 1
local chestCost = 1
local chestReward = 100

-- Local functions
local function getLeaderstat(leaderstat, whichCharacter)
  local player = Players:GetPlayerFromCharacter(whichCharacter)
  local leaderstats = player:FindFirstChild("leaderstats")

  return leaderstats:WaitForChild(leaderstat)
end

-- Public functions
function TreasureManager.openChest(chestPart, whichCharacter)
  local playerKeys = getLeaderstat("Lockpicks", whichCharacter)
  local playerTreasure = getLeaderstat("Treasure", whichCharacter)

  playerKeys.Value = playerKeys.Value - chestCost
  playerTreasure.Value = playerTreasure.Value + chestReward
  chestPart:Destroy()
end

function TreasureManager.canOpenChest(whichCharacter)
  local playerKeys = getLeaderstat("Lockpicks", whichCharacter)
  
  return playerKeys.Value >= chestCost
end

function TreasureManager.getKey(keyPart, whichCharacter)
  local playerKeys = getLeaderstat("Lockpicks", whichCharacter)
  playerKeys.Value = playerKeys.Value + keyValue

  keyPart:Destroy()
end

return TreasureManager

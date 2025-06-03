-- Compiled with roblox-ts v2.3.0
--equivalent to Instance:WaitForChild()
local function YieldPath(path, start)
	if start == nil then
		start = game
	end
	local names = string.split(path, ".")
	local currInstance = start
	do
		local i = 0
		local _shouldIncrement = false
		while true do
			if _shouldIncrement then
				i += 1
			else
				_shouldIncrement = true
			end
			if not (i < #names) then
				break
			end
			if (i == 0 and (names[i + 1] == "game" or names[i + 1] == `{start}`)) or names[i + 1] == "" then
				continue
			else
				local _result = currInstance
				if _result ~= nil then
					_result = _result:WaitForChild(names[i + 1])
				end
				currInstance = _result
			end
		end
	end
	return currInstance
end
-- equivalent to Instance:FindFirstChild()
local function FindPath(path, start)
	if start == nil then
		start = game
	end
	local names = string.split(path, ".")
	local currInstance = start
	do
		local i = 0
		local _shouldIncrement = false
		while true do
			if _shouldIncrement then
				i += 1
			else
				_shouldIncrement = true
			end
			if not (i < #names) then
				break
			end
			if (i == 0 and (names[i + 1] == "game" or names[i + 1] == `{start}`)) or names[i + 1] == "" then
				continue
			else
				local _result = currInstance
				if _result ~= nil then
					_result = _result:FindFirstChild(names[i + 1])
				end
				currInstance = _result
			end
			if not currInstance then
				return nil
			end
		end
	end
	return currInstance
end
local TweenService = game:GetService("TweenService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
local function SetTimeout(func, ms)
	local start = tick()
	local connection
	connection = RunService.RenderStepped:Connect(function()
		if tick() - start > ms / 1000 then
			func()
			connection:Disconnect()
		end
	end)
end
return {
	YieldPath = YieldPath,
	FindPath = FindPath,
	SetTimeout = SetTimeout,
	TweenService = TweenService,
	ReplicatedStorage = ReplicatedStorage,
	Players = Players,
	UserInputService = UserInputService,
	RunService = RunService,
	Workspace = Workspace,
}

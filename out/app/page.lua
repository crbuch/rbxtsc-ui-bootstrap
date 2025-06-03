-- Compiled with roblox-ts v2.3.0
local TS = require(script.Parent.Parent.Parent.Parent.rbxts_include.RuntimeLib)
local Roact = TS.import(script, script.Parent.Parent.Parent.Parent, "rbxts_include", "node_modules", "@rbxts", "roact", "src")
local _roact_hooked = TS.import(script, script.Parent.Parent.Parent.Parent, "rbxts_include", "node_modules", "@rbxts", "roact-hooked", "src")
local useEffect = _roact_hooked.useEffect
local useState = _roact_hooked.useState
local withHooks = _roact_hooked.withHooks
local Players = TS.import(script, script.Parent.Parent, "utils").Players
local SettingsMenu = TS.import(script, script.Parent.Parent, "components", "menus").SettingsMenu
local ThrottleSlider = TS.import(script, script.Parent.Parent, "components", "ui").ThrottleSlider
local _CarTools = TS.import(script, script.Parent.Parent, "utils", "CarTools")
local getTraction = _CarTools.getTraction
local setDownforce = _CarTools.setDownforce
local MainUI = withHooks(function()
	local throttle, setThrottle = useState(0)
	local dragging, setDragging = useState(false)
	local settings, setSettings = useState({
		isRwdEnabled = true,
		isFwdEnabled = true,
		tractionControl = false,
		maxSlip = 10,
		maxTorque = 8000,
		downforce = 0,
	})
	local menuOpen, setMenuOpen = useState(false)
	-- Keyboard input
	useEffect(function()
		local uis = game:GetService("UserInputService")
		local char = Players.LocalPlayer.Character
		local _humanoid = char
		if _humanoid ~= nil then
			_humanoid = _humanoid:FindFirstChildOfClass("Humanoid")
		end
		local humanoid = _humanoid
		local onInput = function()
			if not humanoid or not humanoid.Sit then
				setThrottle(0)
				return nil
			end
			if uis:IsKeyDown(Enum.KeyCode.W) then
				setThrottle(1)
			elseif uis:IsKeyDown(Enum.KeyCode.S) then
				setThrottle(-1)
			else
				setThrottle(0)
			end
		end
		local conn = uis.InputBegan:Connect(onInput)
		local conn2 = uis.InputEnded:Connect(onInput)
		return function()
			conn:Disconnect()
			conn2:Disconnect()
		end
	end, {})
	-- Stop dragging on mouse up
	useEffect(function()
		local uis = game:GetService("UserInputService")
		local conn = uis.InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 and dragging then
				setDragging(false)
			end
		end)
		return function()
			return conn:Disconnect()
		end
	end, { dragging })
	-- Car control logic
	useEffect(function()
		local runService = game:GetService("RunService")
		local alive = true
		local conn = runService.RenderStepped:Connect(function()
			local car = game:GetService("Workspace"):FindFirstChild(`{Players.LocalPlayer.Name}-Car`, true)
			if not car then
				return nil
			end
			local chassis = car:FindFirstChild("DriveSeat")
			if not chassis then
				return nil
			end
			local tractionFL = 1
			local tractionFR = 1
			local tractionRL = 1
			local tractionRR = 1
			if settings.tractionControl then
				local wheels = car:FindFirstChild("Wheels")
				if wheels then
					tractionFL = getTraction(wheels:FindFirstChild("FL"), chassis, settings.maxSlip)
					tractionFR = getTraction(wheels:FindFirstChild("FR"), chassis, settings.maxSlip)
					tractionRL = getTraction(wheels:FindFirstChild("RL"), chassis, settings.maxSlip)
					tractionRR = getTraction(wheels:FindFirstChild("RR"), chassis, settings.maxSlip)
				end
			end
			if dragging or math.abs(throttle) > 0 then
				local wheels = car:FindFirstChild("Wheels")
				if not wheels then
					return nil
				end
				local _result = wheels:FindFirstChild("FL")
				if _result ~= nil then
					_result = _result:FindFirstChild("#AV")
				end
				local FL = _result
				local _result_1 = wheels:FindFirstChild("FR")
				if _result_1 ~= nil then
					_result_1 = _result_1:FindFirstChild("#AV")
				end
				local FR = _result_1
				local _result_2 = wheels:FindFirstChild("RL")
				if _result_2 ~= nil then
					_result_2 = _result_2:FindFirstChild("#AV")
				end
				local RL = _result_2
				local _result_3 = wheels:FindFirstChild("RR")
				if _result_3 ~= nil then
					_result_3 = _result_3:FindFirstChild("#AV")
				end
				local RR = _result_3
				local angVel = 450 * (math.abs(throttle) / (if throttle == 0 then 1 else throttle)) * math.abs(throttle * throttle)
				if settings.isFwdEnabled and FL and FR then
					FL.MotorMaxTorque = settings.maxTorque * math.abs(throttle) * math.abs(tractionFL)
					FR.MotorMaxTorque = settings.maxTorque * math.abs(throttle) * math.abs(tractionFR)
					FL.AngularVelocity = angVel
					FR.AngularVelocity = angVel
				end
				if settings.isRwdEnabled and RL and RR then
					RL.MotorMaxTorque = settings.maxTorque * math.abs(throttle) * math.abs(tractionRL)
					RR.MotorMaxTorque = settings.maxTorque * math.abs(throttle) * math.abs(tractionRR)
					RL.AngularVelocity = angVel
					RR.AngularVelocity = angVel
				end
			end
		end)
		local downforceLoop = task.spawn(function()
			while alive do
				task.wait(1)
				local car = game:GetService("Workspace"):FindFirstChild(`{Players.LocalPlayer.Name}-Car`, true)
				setDownforce(car, settings.downforce, settings.isFwdEnabled, settings.isRwdEnabled)
			end
		end)
		local char = Players.LocalPlayer.Character
		local _humanoid = char
		if _humanoid ~= nil then
			_humanoid = _humanoid:FindFirstChildOfClass("Humanoid")
		end
		local humanoid = _humanoid
		local _deathConn = humanoid
		if _deathConn ~= nil then
			_deathConn = _deathConn.Died:Connect(function()
				alive = false
				conn:Disconnect()
			end)
		end
		local deathConn = _deathConn
		return function()
			alive = false
			conn:Disconnect()
			if deathConn then
				deathConn:Disconnect()
			end
			task.cancel(downforceLoop)
		end
	end, { throttle, dragging, settings })
	return Roact.createFragment({
		ThrottleUI = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
		}, {
			Roact.createElement(ThrottleSlider, {
				throttle = throttle,
				setThrottle = setThrottle,
				dragging = dragging,
				setDragging = setDragging,
			}, {
				Roact.createElement("TextButton", {
					Size = UDim2.new(1, 0, 0, 25),
					AutomaticSize = Enum.AutomaticSize.X,
					Position = UDim2.new(0, -7.5, 1, 20),
					BackgroundColor3 = Color3.fromRGB(45, 45, 45),
					Text = "⚙ Settings",
					TextColor3 = Color3.fromRGB(255, 255, 255),
					Font = Enum.Font.SourceSansBold,
					TextSize = 14,
					[Roact.Event.MouseButton1Click] = function()
						return setMenuOpen(not menuOpen)
					end,
				}),
				Roact.createElement(SettingsMenu, {
					settings = settings,
					setSettings = setSettings,
					visible = menuOpen,
				}),
			}),
		}),
	})
end)
return {
	MainUI = MainUI,
}

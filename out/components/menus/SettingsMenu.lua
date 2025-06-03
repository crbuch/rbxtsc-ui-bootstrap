-- Compiled with roblox-ts v2.3.0
local TS = require(script.Parent.Parent.Parent.Parent.Parent.rbxts_include.RuntimeLib)
local Roact = TS.import(script, script.Parent.Parent.Parent.Parent.Parent, "rbxts_include", "node_modules", "@rbxts", "roact", "src")
local Checkbox = TS.import(script, script.Parent.Parent, "ui").Checkbox
local NumberInput = TS.import(script, script.Parent.Parent, "ui").NumberInput
local function SettingsMenu(props)
	return Roact.createElement("Frame", {
		Visible = props.visible,
		Size = UDim2.new(0, 160, 0, 200),
		Position = UDim2.new(1, 10, 0, 0),
		AnchorPoint = Vector2.new(1, 0),
		BackgroundColor3 = Color3.fromRGB(50, 50, 50),
		BackgroundTransparency = 0.3,
		BorderSizePixel = 0,
	}, {
		Roact.createElement("UIStroke", {
			Color = Color3.fromRGB(0, 0, 0),
			Thickness = 4,
		}),
		Roact.createElement(Checkbox, {
			label = "RWD",
			checked = props.settings.isRwdEnabled,
			onChange = function(v)
				local _fn = props
				local _object = table.clone(props.settings)
				setmetatable(_object, nil)
				_object.isRwdEnabled = v
				return _fn.setSettings(_object)
			end,
			y = 5,
		}),
		Roact.createElement(Checkbox, {
			label = "FWD",
			checked = props.settings.isFwdEnabled,
			onChange = function(v)
				local _fn = props
				local _object = table.clone(props.settings)
				setmetatable(_object, nil)
				_object.isFwdEnabled = v
				return _fn.setSettings(_object)
			end,
			y = 30,
		}),
		Roact.createElement(Checkbox, {
			label = "Traction Control",
			checked = props.settings.tractionControl,
			onChange = function(v)
				local _fn = props
				local _object = table.clone(props.settings)
				setmetatable(_object, nil)
				_object.tractionControl = v
				return _fn.setSettings(_object)
			end,
			y = 55,
		}),
		Roact.createElement(NumberInput, {
			label = "Max Slip",
			value = props.settings.maxSlip,
			onChange = function(v)
				local _fn = props
				local _object = table.clone(props.settings)
				setmetatable(_object, nil)
				_object.maxSlip = v
				return _fn.setSettings(_object)
			end,
			y = 85,
		}),
		Roact.createElement(NumberInput, {
			label = "Max Torque",
			value = props.settings.maxTorque,
			onChange = function(v)
				local _fn = props
				local _object = table.clone(props.settings)
				setmetatable(_object, nil)
				_object.maxTorque = v
				return _fn.setSettings(_object)
			end,
			y = 115,
		}),
		Roact.createElement(NumberInput, {
			label = "Downforce",
			value = props.settings.downforce,
			onChange = function(v)
				local _fn = props
				local _object = table.clone(props.settings)
				setmetatable(_object, nil)
				_object.downforce = v
				return _fn.setSettings(_object)
			end,
			y = 145,
		}),
	})
end
return {
	SettingsMenu = SettingsMenu,
}

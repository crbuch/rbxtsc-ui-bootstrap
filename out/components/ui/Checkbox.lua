-- Compiled with roblox-ts v2.3.0
local TS = require(script.Parent.Parent.Parent.Parent.Parent.rbxts_include.RuntimeLib)
local Roact = TS.import(script, script.Parent.Parent.Parent.Parent.Parent, "rbxts_include", "node_modules", "@rbxts", "roact", "src")
local _roact_hooked = TS.import(script, script.Parent.Parent.Parent.Parent.Parent, "rbxts_include", "node_modules", "@rbxts", "roact-hooked", "src")
local useState = _roact_hooked.useState
local withHooks = _roact_hooked.withHooks
local _Colors = TS.import(script, script.Parent.Parent, "styles", "Colors")
local Checkbox_Color = _Colors.Checkbox_Color
local Main_Background = _Colors.Main_Background
local Text_Color = _Colors.Text_Color
local Checkbox = withHooks(function(props)
	local _condition = props.Checked
	if _condition == nil then
		_condition = false
	end
	local checked, setChecked = useState(_condition)
	return Roact.createElement("TextButton", {
		Size = UDim2.new(0, 15, 0, 15),
		BackgroundTransparency = 0,
		BackgroundColor3 = if checked then Checkbox_Color else Main_Background,
		AutoButtonColor = false,
		Text = "",
		[Roact.Event.MouseButton1Click] = function()
			local newChecked = not checked
			setChecked(newChecked)
			local _result = props.OnChange
			if _result ~= nil then
				_result(newChecked)
			end
		end,
	}, {
		Roact.createElement("UICorner", {
			CornerRadius = UDim.new(0, 2),
		}),
		Roact.createElement("UIStroke", {
			Color = if checked then Checkbox_Color else Text_Color,
			Thickness = 2,
			Transparency = if checked then 0 else 0.3,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		}),
	})
end)
return {
	Checkbox = Checkbox,
}

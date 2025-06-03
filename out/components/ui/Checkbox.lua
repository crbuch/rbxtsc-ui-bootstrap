-- Compiled with roblox-ts v2.3.0
local TS = require(script.Parent.Parent.Parent.Parent.Parent.rbxts_include.RuntimeLib)
local Roact = TS.import(script, script.Parent.Parent.Parent.Parent.Parent, "rbxts_include", "node_modules", "@rbxts", "roact", "src")
local function Checkbox(props)
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 20),
		Position = UDim2.new(0, 0, 0, props.y),
		BackgroundTransparency = 1,
	}, {
		Roact.createElement("TextButton", {
			Size = UDim2.new(0, 20, 1, 0),
			Position = UDim2.new(0, 5, 0, 0),
			BackgroundColor3 = if props.checked then Color3.fromRGB(0, 170, 255) else Color3.fromRGB(60, 60, 60),
			Text = "",
			AutoButtonColor = false,
			[Roact.Event.MouseButton1Click] = function()
				return props.onChange(not props.checked)
			end,
		}),
		Roact.createElement("TextLabel", {
			Size = UDim2.new(1, -30, 1, 0),
			Position = UDim2.new(0, 30, 0, 0),
			BackgroundTransparency = 1,
			Text = props.label,
			TextColor3 = Color3.fromRGB(255, 255, 255),
			Font = Enum.Font.SourceSans,
			TextSize = 14,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
	})
end
return {
	Checkbox = Checkbox,
}

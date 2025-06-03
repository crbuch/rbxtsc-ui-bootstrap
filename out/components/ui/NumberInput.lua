-- Compiled with roblox-ts v2.3.0
local TS = require(script.Parent.Parent.Parent.Parent.Parent.rbxts_include.RuntimeLib)
local Roact = TS.import(script, script.Parent.Parent.Parent.Parent.Parent, "rbxts_include", "node_modules", "@rbxts", "roact", "src")
local function NumberInput(props)
	return Roact.createFragment({
		Roact.createElement("TextLabel", {
			Size = UDim2.new(0, 90, 0, 20),
			Position = UDim2.new(0, 5, 0, props.y),
			BackgroundTransparency = 1,
			Text = props.label,
			TextColor3 = Color3.fromRGB(255, 255, 255),
			Font = Enum.Font.SourceSans,
			TextSize = 14,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
		Roact.createElement("TextBox", {
			Size = UDim2.new(0, 50, 0, 20),
			Position = UDim2.new(0, 100, 0, props.y),
			BackgroundColor3 = Color3.fromRGB(45, 45, 45),
			TextColor3 = Color3.fromRGB(255, 255, 255),
			Font = Enum.Font.SourceSans,
			TextSize = 14,
			Text = tostring(props.value),
			ClearTextOnFocus = false,
			BorderSizePixel = 2,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			[Roact.Event.FocusLost] = function(rbx)
				local num = tonumber(rbx.Text)
				if num ~= nil then
					props.onChange(num)
				else
					rbx.Text = tostring(props.value)
				end
			end,
		}),
	})
end
return {
	NumberInput = NumberInput,
}

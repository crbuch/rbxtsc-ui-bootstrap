-- Compiled with roblox-ts v2.3.0
local TS = require(script.Parent.Parent.Parent.Parent.Parent.rbxts_include.RuntimeLib)
local Roact = TS.import(script, script.Parent.Parent.Parent.Parent.Parent, "rbxts_include", "node_modules", "@rbxts", "roact", "src")
local Text_Color = TS.import(script, script.Parent.Parent, "styles", "Colors").Text_Color
local function RowLabel(props)
	return Roact.createElement("TextLabel", {
		Size = UDim2.new(0, 0, 0, 0),
		AutomaticSize = Enum.AutomaticSize.XY,
		BackgroundTransparency = 1,
		TextColor3 = Text_Color,
		Text = props.Text,
		FontFace = Font.new(Font.fromEnum(Enum.Font.SourceSansSemibold).Family, Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
		TextSize = 20,
	})
end
return {
	RowLabel = RowLabel,
}

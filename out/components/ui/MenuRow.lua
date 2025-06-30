-- Compiled with roblox-ts v2.3.0
local TS = require(script.Parent.Parent.Parent.Parent.Parent.rbxts_include.RuntimeLib)
local Roact = TS.import(script, script.Parent.Parent.Parent.Parent.Parent, "rbxts_include", "node_modules", "@rbxts", "roact", "src")
local Small_Padding = TS.import(script, script.Parent.Parent, "styles", "Measurements").Small_Padding
local function MenuRow(props)
	local _attributes = {
		Size = UDim2.new(1, 0, 0, 0),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		AutomaticSize = Enum.AutomaticSize.Y,
	}
	local _children = {
		Roact.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = UDim.new(0, Small_Padding),
			FillDirection = Enum.FillDirection.Horizontal,
		}),
	}
	local _length = #_children
	local _child = props[Roact.Children]
	if _child then
		for _k, _v in _child do
			if type(_k) == "number" then
				_children[_length + _k] = _v
			else
				_children[_k] = _v
			end
		end
	end
	return Roact.createElement("Frame", _attributes, _children)
end
return {
	MenuRow = MenuRow,
}

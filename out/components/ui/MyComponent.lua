-- Compiled with roblox-ts v2.3.0
local TS = require(script.Parent.Parent.Parent.Parent.Parent.rbxts_include.RuntimeLib)
local Roact = TS.import(script, script.Parent.Parent.Parent.Parent.Parent, "rbxts_include", "node_modules", "@rbxts", "roact", "src")
local function MyComponent(props)
	return Roact.createElement("TextLabel", {
		Size = UDim2.new(0, 200, 0, 50),
		Text = props.label,
	})
end
return {
	MyComponent = MyComponent,
}

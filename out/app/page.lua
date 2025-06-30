-- Compiled with roblox-ts v2.3.0
local TS = require(script.Parent.Parent.Parent.Parent.rbxts_include.RuntimeLib)
local MyComponent = TS.import(script, script.Parent.Parent, "components", "ui", "MyComponent").MyComponent
local Roact = TS.import(script, script.Parent.Parent.Parent.Parent, "rbxts_include", "node_modules", "@rbxts", "roact", "src")
local withHooks = TS.import(script, script.Parent.Parent.Parent.Parent, "rbxts_include", "node_modules", "@rbxts", "roact-hooked", "src").withHooks
local MainUI = withHooks(function()
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}, {
		Roact.createElement(MyComponent, {
			label = "Hello World",
		}),
	})
end)
return {
	MainUI = MainUI,
}

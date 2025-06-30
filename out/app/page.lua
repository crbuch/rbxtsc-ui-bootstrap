-- Compiled with roblox-ts v2.3.0
local TS = require(script.Parent.Parent.Parent.Parent.rbxts_include.RuntimeLib)
local Checkbox = TS.import(script, script.Parent.Parent, "components", "ui", "Checkbox").Checkbox
local Menu = TS.import(script, script.Parent.Parent, "components", "ui", "Menu").Menu
local MenuRow = TS.import(script, script.Parent.Parent, "components", "ui", "MenuRow").MenuRow
local RowLabel = TS.import(script, script.Parent.Parent, "components", "ui", "RowLabel").RowLabel
local Roact = TS.import(script, script.Parent.Parent.Parent.Parent, "rbxts_include", "node_modules", "@rbxts", "roact", "src")
local MainUI = function()
	return Roact.createElement(Menu, {}, {
		Roact.createElement(MenuRow, {}, {
			Roact.createElement(RowLabel, {
				Text = "Hello World",
			}),
			Roact.createElement(Checkbox),
		}),
	})
end
return {
	MainUI = MainUI,
}

-- Compiled with roblox-ts v2.3.0
local TS = require(script.Parent.Parent.Parent.Parent.rbxts_include.RuntimeLib)
local Roact = TS.import(script, script.Parent.Parent.Parent.Parent, "rbxts_include", "node_modules", "@rbxts", "roact", "src")
local _utils = TS.import(script, script.Parent.Parent, "utils")
local Players = _utils.Players
local YieldPath = _utils.YieldPath
local MainUI = TS.import(script, script.Parent.Parent, "app", "page").MainUI
Roact.mount(Roact.createElement("ScreenGui", {
	IgnoreGuiInset = true,
}, {
	Roact.createElement(MainUI),
}), YieldPath("PlayerGui", Players.LocalPlayer))

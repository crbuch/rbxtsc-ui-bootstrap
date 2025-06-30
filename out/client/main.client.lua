-- Compiled with roblox-ts v2.3.0
local TS = require(script.Parent.Parent.Parent.Parent.rbxts_include.RuntimeLib)
local Roact = TS.import(script, script.Parent.Parent.Parent.Parent, "rbxts_include", "node_modules", "@rbxts", "roact", "src")
local Players = TS.import(script, script.Parent.Parent, "utils").Players
local MainUI = TS.import(script, script.Parent.Parent, "app", "page").MainUI
local path = game:GetService("StarterGui")
pcall(function()
	if Players.LocalPlayer then
		path = Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("ScreenGui")
	end
end)
Roact.mount(Roact.createElement("ScreenGui", {
	IgnoreGuiInset = true,
}, {
	Roact.createElement(MainUI),
}), path)

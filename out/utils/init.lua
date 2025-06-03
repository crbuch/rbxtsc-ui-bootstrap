-- Compiled with roblox-ts v2.3.0
local TS = require(script.Parent.Parent.Parent.rbxts_include.RuntimeLib)
local exports = {}
local _Services = TS.import(script, script, "Services")
exports.SetTimeout = _Services.SetTimeout
exports.Workspace = _Services.Workspace
exports.RunService = _Services.RunService
exports.UserInputService = _Services.UserInputService
exports.Players = _Services.Players
exports.ReplicatedStorage = _Services.ReplicatedStorage
exports.TweenService = _Services.TweenService
exports.FindPath = _Services.FindPath
exports.YieldPath = _Services.YieldPath
return exports

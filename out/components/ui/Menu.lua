-- Compiled with roblox-ts v2.3.0
local TS = require(script.Parent.Parent.Parent.Parent.Parent.rbxts_include.RuntimeLib)
local Roact = TS.import(script, script.Parent.Parent.Parent.Parent.Parent, "rbxts_include", "node_modules", "@rbxts", "roact", "src")
local Main_Background = TS.import(script, script.Parent.Parent, "styles", "Colors").Main_Background
local _Measurements = TS.import(script, script.Parent.Parent, "styles", "Measurements")
local Small_Padding = _Measurements.Small_Padding
local Window_Corner_Radius = _Measurements.Window_Corner_Radius
local _roact_hooked = TS.import(script, script.Parent.Parent.Parent.Parent.Parent, "rbxts_include", "node_modules", "@rbxts", "roact-hooked", "src")
local useEffect = _roact_hooked.useEffect
local withHooks = _roact_hooked.withHooks
local TweenService = TS.import(script, script.Parent.Parent.Parent, "utils").TweenService
local Window_Animation_Time = TS.import(script, script.Parent.Parent, "styles", "Animations").Window_Animation_Time
local Menu = withHooks(function(props)
	local frameRef = Roact.createRef()
	useEffect(function()
		if props.AnimateIn ~= false then
			-- Logic for when AnimateIn is true
			frameRef:getValue().BackgroundTransparency = 1
			frameRef:getValue().Visible = true
			TweenService:Create(frameRef:getValue(), TweenInfo.new(Window_Animation_Time), {
				BackgroundTransparency = 0,
			}):Play()
		end
	end, { frameRef })
	local _attributes = {
		[Roact.Ref] = frameRef,
		Visible = props.AnimateIn == false,
		BackgroundColor3 = Main_Background,
		Size = props.Size or UDim2.new(0, 200, 0, 400),
		Position = UDim2.new(1, -Small_Padding, 0.5, 0),
		AnchorPoint = Vector2.new(1, 0.5),
	}
	local _children = {
		Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			Padding = UDim.new(0, Small_Padding),
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
	_length = #_children
	_children[_length + 1] = Roact.createElement("UICorner", {
		CornerRadius = UDim.new(0, Window_Corner_Radius),
	})
	return Roact.createElement("Frame", _attributes, _children)
end)
return {
	Menu = Menu,
}

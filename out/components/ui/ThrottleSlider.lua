-- Compiled with roblox-ts v2.3.0
local TS = require(script.Parent.Parent.Parent.Parent.Parent.rbxts_include.RuntimeLib)
local UserInputService = TS.import(script, script.Parent.Parent.Parent, "utils").UserInputService
local Roact = TS.import(script, script.Parent.Parent.Parent.Parent.Parent, "rbxts_include", "node_modules", "@rbxts", "roact", "src")
local _roact_hooked = TS.import(script, script.Parent.Parent.Parent.Parent.Parent, "rbxts_include", "node_modules", "@rbxts", "roact-hooked", "src")
local useEffect = _roact_hooked.useEffect
local useRef = _roact_hooked.useRef
local useState = _roact_hooked.useState
local withHooks = _roact_hooked.withHooks
local ThrottleSlider = withHooks(function(props)
	local sliderHeight = 250
	local handleHeight = 20
	local sliderWidth = 40
	local sliderRef = useRef()
	local dragOffset, setDragOffset = useState(0)
	useEffect(function()
		local conn
		if props.dragging then
			conn = UserInputService.InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement then
					local slider = sliderRef:getValue()
					if slider == nil then
						return nil
					end
					local mouseY = UserInputService:GetMouseLocation().Y
					local relY = math.clamp((mouseY - slider.AbsolutePosition.Y - dragOffset) / slider.AbsoluteSize.Y, 0, 1)
					local newThrottle = (0.5 - relY) * 2
					props.setThrottle(newThrottle)
				end
			end)
		end
		return function()
			return conn and conn:Disconnect()
		end
	end, { props.dragging, dragOffset })
	local handlePos = 0.5 - props.throttle / 2
	local _attributes = {
		[Roact.Ref] = sliderRef,
		Size = UDim2.new(0, sliderWidth, 0, sliderHeight),
		AnchorPoint = Vector2.new(1, 0),
		Position = UDim2.new(1, -15, 0.5, -sliderHeight / 2),
		BackgroundColor3 = Color3.fromRGB(30, 30, 30),
		BorderSizePixel = 0,
		[Roact.Event.InputBegan] = function(frame, input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				local slider = sliderRef:getValue()
				if slider ~= nil then
					local mouseY = UserInputService:GetMouseLocation().Y
					local handleCenterY = slider.AbsolutePosition.Y + slider.AbsoluteSize.Y * handlePos
					setDragOffset(mouseY - handleCenterY)
				end
				props.setDragging(true)
			end
		end,
	}
	local _children = {
		handle = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, handleHeight),
			Position = UDim2.new(0, 0, handlePos, -handleHeight / 2),
			BackgroundColor3 = Color3.fromRGB(0, 170, 255),
			BorderSizePixel = 0,
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
	return Roact.createFragment({
		throttleSlider = Roact.createElement("Frame", _attributes, _children),
	})
end)
return {
	ThrottleSlider = ThrottleSlider,
}

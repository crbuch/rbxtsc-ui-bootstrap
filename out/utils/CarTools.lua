-- Compiled with roblox-ts v2.3.0
local function rotate90Y(v)
	return Vector3.new(-v.Z, v.Y, v.X)
end
local function getTraction(wheel, chassis, maxSlip)
	local wheelRadius = wheel.Size.Y / 2
	local forwardDir = rotate90Y(wheel.CFrame.UpVector)
	local velocity = if chassis then chassis.AssemblyLinearVelocity else wheel.AssemblyLinearVelocity
	local forwardSpeed = velocity:Dot(forwardDir)
	local angularVelocity = wheel.AssemblyAngularVelocity
	local wheelSpeed = angularVelocity:Dot(wheel.CFrame.UpVector)
	local expectedSpeed = wheelSpeed * wheelRadius
	local slip = math.abs(expectedSpeed - forwardSpeed)
	local traction = 1 - math.clamp(slip / maxSlip, 0, 1)
	return traction
end
local function setDownforce(car, downforce, isFwdEnabled, isRwdEnabled)
	if not car or not car:FindFirstChild("Wheels") then
		return nil
	end
	local _exp = { "FL", "FR", "RL", "RR" }
	-- ▼ ReadonlyArray.map ▼
	local _newValue = table.create(#_exp)
	local _callback = function(n)
		return (car:FindFirstChild("Wheels")):FindFirstChild(n)
	end
	for _k, _v in _exp do
		_newValue[_k] = _callback(_v, _k - 1, _exp)
	end
	-- ▲ ReadonlyArray.map ▲
	local wheels = _newValue
	for _, wh in wheels do
		if not wh then
			continue
		end
		local bf = wh:FindFirstChildOfClass("BodyForce")
		if not bf then
			bf = Instance.new("BodyForce")
		end
		bf.Parent = wh
		if (isFwdEnabled and (wh.Name == "FL" or wh.Name == "FR")) or (isRwdEnabled and (wh.Name == "RL" or wh.Name == "RR")) then
			local _yAxis = Vector3.yAxis
			local _arg0 = -downforce
			bf.Force = _yAxis * _arg0
		else
			bf.Force = Vector3.zero
		end
	end
end
return {
	rotate90Y = rotate90Y,
	getTraction = getTraction,
	setDownforce = setDownforce,
}

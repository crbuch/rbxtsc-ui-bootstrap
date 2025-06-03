export function rotate90Y(v: Vector3) {
	return new Vector3(-v.Z, v.Y, v.X);
}

export function getTraction(wheel: BasePart, chassis: BasePart, maxSlip: number) {
	const wheelRadius = wheel.Size.Y / 2;
	const forwardDir = rotate90Y(wheel.CFrame.UpVector);
	const velocity = chassis ? chassis.AssemblyLinearVelocity : wheel.AssemblyLinearVelocity;
	const forwardSpeed = velocity.Dot(forwardDir);
	const angularVelocity = wheel.AssemblyAngularVelocity;
	const wheelSpeed = angularVelocity.Dot(wheel.CFrame.UpVector);
	const expectedSpeed = wheelSpeed * wheelRadius;
	const slip = math.abs(expectedSpeed - forwardSpeed);
	const traction = 1 - math.clamp(slip / maxSlip, 0, 1);
	return traction;
}

export function setDownforce(car: Model | undefined, downforce: number, isFwdEnabled: boolean, isRwdEnabled: boolean) {
	if (!car || !car.FindFirstChild("Wheels")) return;
	const wheels = ["FL", "FR", "RL", "RR"].map(
		(n) => (car.FindFirstChild("Wheels") as Folder).FindFirstChild(n) as BasePart,
	);
	for (const wh of wheels) {
		if (!wh) continue;
		let bf = wh.FindFirstChildOfClass("BodyForce") as BodyForce | undefined;
		if (!bf) bf = new Instance("BodyForce");
		bf.Parent = wh;
		if (
			(isFwdEnabled && (wh.Name === "FL" || wh.Name === "FR")) ||
			(isRwdEnabled && (wh.Name === "RL" || wh.Name === "RR"))
		) {
			bf.Force = Vector3.yAxis.mul(-downforce);
		} else {
			bf.Force = Vector3.zero;
		}
	}
}
import Roact from "@rbxts/roact";
import { useEffect, useState, withHooks } from "@rbxts/roact-hooked";
import { Players, YieldPath } from "@/utils";
import { SettingsMenu } from "@/components/menus";
import { ThrottleSlider } from "@/components/ui";
import { getTraction, rotate90Y, setDownforce } from "@/utils/CarTools";

export const MainUI = withHooks(function () {
	const [throttle, setThrottle] = useState(0); // -1 to 1
	const [dragging, setDragging] = useState(false);
	const [settings, setSettings] = useState<Settings>({
		isRwdEnabled: true,
		isFwdEnabled: true,
		tractionControl: false,
		maxSlip: 10,
		maxTorque: 8000,
		downforce: 0,
	});
	const [menuOpen, setMenuOpen] = useState(false);

	// Keyboard input
	useEffect(() => {
		const uis = game.GetService("UserInputService");
		const char = Players.LocalPlayer.Character;
		const humanoid = char?.FindFirstChildOfClass("Humanoid");
		const onInput = () => {
			if (!humanoid || !humanoid.Sit) {
				setThrottle(0);
				return;
			}
			if (uis.IsKeyDown(Enum.KeyCode.W)) setThrottle(1);
			else if (uis.IsKeyDown(Enum.KeyCode.S)) setThrottle(-1);
			else setThrottle(0);
		};
		const conn = uis.InputBegan.Connect(onInput);
		const conn2 = uis.InputEnded.Connect(onInput);
		return () => {
			conn.Disconnect();
			conn2.Disconnect();
		};
	}, []);

	// Stop dragging on mouse up
	useEffect(() => {
		const uis = game.GetService("UserInputService");
		const conn = uis.InputEnded.Connect((input) => {
			if (input.UserInputType === Enum.UserInputType.MouseButton1 && dragging) setDragging(false);
		});
		return () => conn.Disconnect();
	}, [dragging]);

	// Car control logic
	useEffect(() => {
		const runService = game.GetService("RunService");
		let alive = true;
		const conn = runService.RenderStepped.Connect(() => {
			const car = game.GetService("Workspace").FindFirstChild(`${Players.LocalPlayer.Name}-Car`, true) as Model;
			if (!car) return;
			const chassis = car.FindFirstChild("DriveSeat") as BasePart;
			if (!chassis) return;
			let tractionFL = 1,
				tractionFR = 1,
				tractionRL = 1,
				tractionRR = 1;
			if (settings.tractionControl) {
				const wheels = car.FindFirstChild("Wheels") as Folder;
				if (wheels) {
					tractionFL = getTraction(wheels.FindFirstChild("FL") as BasePart, chassis, settings.maxSlip);
					tractionFR = getTraction(wheels.FindFirstChild("FR") as BasePart, chassis, settings.maxSlip);
					tractionRL = getTraction(wheels.FindFirstChild("RL") as BasePart, chassis, settings.maxSlip);
					tractionRR = getTraction(wheels.FindFirstChild("RR") as BasePart, chassis, settings.maxSlip);
				}
			}
			if (dragging || math.abs(throttle) > 0) {
				const wheels = car.FindFirstChild("Wheels") as Folder;
				if (!wheels) return;
				const FL = wheels.FindFirstChild("FL")?.FindFirstChild("#AV") as HingeConstraint;
				const FR = wheels.FindFirstChild("FR")?.FindFirstChild("#AV") as HingeConstraint;
				const RL = wheels.FindFirstChild("RL")?.FindFirstChild("#AV") as HingeConstraint;
				const RR = wheels.FindFirstChild("RR")?.FindFirstChild("#AV") as HingeConstraint;
				const angVel =
					450 * (math.abs(throttle) / (throttle === 0 ? 1 : throttle)) * math.abs(throttle * throttle);
				if (settings.isFwdEnabled && FL && FR) {
					FL.MotorMaxTorque = settings.maxTorque * math.abs(throttle) * math.abs(tractionFL);
					FR.MotorMaxTorque = settings.maxTorque * math.abs(throttle) * math.abs(tractionFR);
					FL.AngularVelocity = angVel;
					FR.AngularVelocity = angVel;
				}
				if (settings.isRwdEnabled && RL && RR) {
					RL.MotorMaxTorque = settings.maxTorque * math.abs(throttle) * math.abs(tractionRL);
					RR.MotorMaxTorque = settings.maxTorque * math.abs(throttle) * math.abs(tractionRR);
					RL.AngularVelocity = angVel;
					RR.AngularVelocity = angVel;
				}
			}
		});
		const downforceLoop = task.spawn(() => {
			while (alive) {
				task.wait(1);
				const car = game
					.GetService("Workspace")
					.FindFirstChild(`${Players.LocalPlayer.Name}-Car`, true) as Model;
				setDownforce(car, settings.downforce, settings.isFwdEnabled, settings.isRwdEnabled);
			}
		});
		const char = Players.LocalPlayer.Character;
		const humanoid = char?.FindFirstChildOfClass("Humanoid");
		const deathConn = humanoid?.Died.Connect(() => {
			alive = false;
			conn.Disconnect();
		});
		return () => {
			alive = false;
			conn.Disconnect();
			if (deathConn) deathConn.Disconnect();
			task.cancel(downforceLoop);
		};
	}, [throttle, dragging, settings]);

	return (
		<frame Key="ThrottleUI" Size={new UDim2(1, 0, 1, 0)} BackgroundTransparency={1}>
			<ThrottleSlider throttle={throttle} setThrottle={setThrottle} dragging={dragging} setDragging={setDragging}>
				<textbutton
					Size={new UDim2(1, 0, 0, 25)}
					AutomaticSize={Enum.AutomaticSize.X}
					Position={new UDim2(0, -7.5, 1, 20)}
					BackgroundColor3={Color3.fromRGB(45, 45, 45)}
					Text={"⚙ Settings"}
					TextColor3={Color3.fromRGB(255, 255, 255)}
					Font={Enum.Font.SourceSansBold}
					TextSize={14}
					Event={{ MouseButton1Click: () => setMenuOpen(!menuOpen) }}
				/>
				<SettingsMenu settings={settings} setSettings={setSettings} visible={menuOpen} />
			</ThrottleSlider>
		</frame>
	);
});

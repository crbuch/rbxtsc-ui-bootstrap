import Roact from "@rbxts/roact";
import { Checkbox } from "@/components/ui";
import { NumberInput } from "@/components/ui";

export function SettingsMenu(props: { settings: Settings; setSettings: (s: Settings) => void; visible: boolean }) {
	return (
		<frame
			Visible={props.visible}
			Size={new UDim2(0, 160, 0, 200)}
			Position={new UDim2(1, 10, 0, 0)}
			AnchorPoint={new Vector2(1, 0)}
			BackgroundColor3={Color3.fromRGB(50, 50, 50)}
			BackgroundTransparency={0.3}
			BorderSizePixel={0}
		>
			<uistroke Color={Color3.fromRGB(0, 0, 0)} Thickness={4} />
			<Checkbox
				label="RWD"
				checked={props.settings.isRwdEnabled}
				onChange={(v) => props.setSettings({ ...props.settings, isRwdEnabled: v })}
				y={5}
			/>
			<Checkbox
				label="FWD"
				checked={props.settings.isFwdEnabled}
				onChange={(v) => props.setSettings({ ...props.settings, isFwdEnabled: v })}
				y={30}
			/>
			<Checkbox
				label="Traction Control"
				checked={props.settings.tractionControl}
				onChange={(v) => props.setSettings({ ...props.settings, tractionControl: v })}
				y={55}
			/>
			<NumberInput
				label="Max Slip"
				value={props.settings.maxSlip}
				onChange={(v) => props.setSettings({ ...props.settings, maxSlip: v })}
				y={85}
			/>
			<NumberInput
				label="Max Torque"
				value={props.settings.maxTorque}
				onChange={(v) => props.setSettings({ ...props.settings, maxTorque: v })}
				y={115}
			/>
			<NumberInput
				label="Downforce"
				value={props.settings.downforce}
				onChange={(v) => props.setSettings({ ...props.settings, downforce: v })}
				y={145}
			/>
		</frame>
	);
}

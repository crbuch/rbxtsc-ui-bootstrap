import Roact from "@rbxts/roact";
import { useState, withHooks } from "@rbxts/roact-hooked";
import { Checkbox_Color, Main_Background, Text_Color } from "../styles/Colors";

export const Checkbox = withHooks(function (props: { Checked?: boolean; OnChange?: (checked: boolean) => void }) {
	const [checked, setChecked] = useState<boolean>(props.Checked ?? false);

	return (
		<textbutton
			Size={new UDim2(0, 15, 0, 15)}
			BackgroundTransparency={0}
			BackgroundColor3={checked ? Checkbox_Color : Main_Background}
			AutoButtonColor={false}
			Text=""
			Event={{
				MouseButton1Click: () => {
					const newChecked = !checked;
					setChecked(newChecked);
					props.OnChange?.(newChecked);
				},
			}}
		>
			<uicorner CornerRadius={new UDim(0, 2)}></uicorner>
			<uistroke
				Color={checked ? Checkbox_Color : Text_Color}
				Thickness={2}
				Transparency={checked ? 0 : 0.3}
				ApplyStrokeMode={Enum.ApplyStrokeMode.Border}
			></uistroke>
		</textbutton>
	);
});

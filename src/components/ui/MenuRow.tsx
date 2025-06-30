import Roact from "@rbxts/roact";
import { Small_Padding } from "../styles/Measurements";

export function MenuRow(props: Roact.PropsWithChildren) {
	return (
		<frame
			Size={new UDim2(1, 0, 0, 0)}
			BackgroundTransparency={1}
			BorderSizePixel={0}
			AutomaticSize={Enum.AutomaticSize.Y}
		>
			<uilistlayout
				HorizontalAlignment={Enum.HorizontalAlignment.Center}
				VerticalAlignment={Enum.VerticalAlignment.Center}
				Padding={new UDim(0, Small_Padding)}
				FillDirection={Enum.FillDirection.Horizontal}
			/>
			{props[Roact.Children]}
		</frame>
	);
}

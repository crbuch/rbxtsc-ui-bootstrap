import Roact from "@rbxts/roact";
import { Text_Color } from "../styles/Colors";

export function RowLabel(props: { Text?: string }) {
	return (
		<textlabel
			Size={new UDim2(0, 0, 0, 0)}
			AutomaticSize={Enum.AutomaticSize.XY}
			BackgroundTransparency={1}
			TextColor3={Text_Color}
			Text={props.Text}
			FontFace={
				new Font(
					Font.fromEnum(Enum.Font.SourceSansSemibold).Family,
					Enum.FontWeight.SemiBold,
					Enum.FontStyle.Normal,
				)
			}
			TextSize={20}
		></textlabel>
	);
}

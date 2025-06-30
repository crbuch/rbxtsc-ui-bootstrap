import Roact from "@rbxts/roact";
import { Main_Background } from "../styles/Colors";
import { Small_Padding, Window_Corner_Radius } from "../styles/Measurements";
import { useEffect, withHooks } from "@rbxts/roact-hooked";
import { TweenService } from "@/utils";
import { Window_Animation_Time } from "../styles/Animations";

export const Menu = withHooks(function (props: Roact.PropsWithChildren & { Size?: UDim2; AnimateIn?: boolean }) {
	const frameRef = Roact.createRef<Frame>();
	useEffect(() => {
		if (props.AnimateIn !== false) {
			// Logic for when AnimateIn is true
			frameRef.getValue()!.BackgroundTransparency = 1;
			frameRef.getValue()!.Visible = true;
			TweenService.Create(frameRef.getValue()!, new TweenInfo(Window_Animation_Time), {
				BackgroundTransparency: 0,
			}).Play();
		}
	}, [frameRef]);

	return (
		<frame
			Ref={frameRef}
			Visible={props.AnimateIn === false}
			BackgroundColor3={Main_Background}
			Size={props.Size || new UDim2(0, 200, 0, 400)}
			Position={new UDim2(1, -Small_Padding, 0.5, 0)}
			AnchorPoint={new Vector2(1, 0.5)}
		>
			<uilistlayout
				FillDirection={Enum.FillDirection.Vertical}
				HorizontalAlignment={Enum.HorizontalAlignment.Center}
				Padding={new UDim(0, Small_Padding)}
			/>
			{props[Roact.Children]}
			<uicorner CornerRadius={new UDim(0, Window_Corner_Radius)} />
		</frame>
	);
});

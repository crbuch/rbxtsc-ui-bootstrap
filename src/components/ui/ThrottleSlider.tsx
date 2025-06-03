import { UserInputService } from "@/utils";
import Roact from "@rbxts/roact";
import { useEffect, useRef, useState, withHooks } from "@rbxts/roact-hooked";


export const ThrottleSlider = withHooks(function (
	props: {
		throttle: number;
		setThrottle: (v: number) => void;
		dragging: boolean;
		setDragging: (v: boolean) => void;
	} & Roact.PropsWithChildren,
) {
	const sliderHeight = 250;
	const handleHeight = 20;
	const sliderWidth = 40;
	const sliderRef = useRef<Frame>();
	const [dragOffset, setDragOffset] = useState(0);

	useEffect(() => {
		let conn: RBXScriptConnection | undefined;
		if (props.dragging) {
			conn = UserInputService.InputChanged.Connect((input) => {
				if (input.UserInputType === Enum.UserInputType.MouseMovement) {
					const slider = sliderRef.getValue();
					if (slider === undefined) return;
					const mouseY = UserInputService.GetMouseLocation().Y;
					const relY = math.clamp(
						(mouseY - slider.AbsolutePosition.Y - dragOffset) / slider.AbsoluteSize.Y,
						0,
						1,
					);
					const newThrottle = (0.5 - relY) * 2;
					props.setThrottle(newThrottle);
				}
			});
		}
		return () => conn && conn.Disconnect();
	}, [props.dragging, dragOffset]);

	const handlePos = 0.5 - props.throttle / 2;

	return (
		<frame
			Key={"throttleSlider"}
			Ref={sliderRef}
			Size={new UDim2(0, sliderWidth, 0, sliderHeight)}
			AnchorPoint={new Vector2(1, 0)}
			Position={new UDim2(1, -15, 0.5, -sliderHeight / 2)}
			BackgroundColor3={Color3.fromRGB(30, 30, 30)}
			BorderSizePixel={0}
			Event={{
				InputBegan: (frame, input) => {
					if (input.UserInputType === Enum.UserInputType.MouseButton1) {
						const slider = sliderRef.getValue();
						if (slider !== undefined) {
							const mouseY = UserInputService.GetMouseLocation().Y;
							const handleCenterY = slider.AbsolutePosition.Y + slider.AbsoluteSize.Y * handlePos;
							setDragOffset(mouseY - handleCenterY);
						}
						props.setDragging(true);
					}
				},
			}}
		>
			<frame
				Key={"handle"}
				Size={new UDim2(1, 0, 0, handleHeight)}
				Position={new UDim2(0, 0, handlePos, -handleHeight / 2)}
				BackgroundColor3={Color3.fromRGB(0, 170, 255)}
				BorderSizePixel={0}
			/>
			{props[Roact.Children]}
		</frame>
	);
});

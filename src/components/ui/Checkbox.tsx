import Roact from "@rbxts/roact";

export function Checkbox(props: { label: string; checked: boolean; onChange: (v: boolean) => void; y: number }) {
	return (
		<frame Size={new UDim2(1, 0, 0, 20)} Position={new UDim2(0, 0, 0, props.y)} BackgroundTransparency={1}>
			<textbutton
				Size={new UDim2(0, 20, 1, 0)}
				Position={new UDim2(0, 5, 0, 0)}
				BackgroundColor3={props.checked ? Color3.fromRGB(0, 170, 255) : Color3.fromRGB(60, 60, 60)}
				Text={""}
				AutoButtonColor={false}
				Event={{ MouseButton1Click: () => props.onChange(!props.checked) }}
			/>
			<textlabel
				Size={new UDim2(1, -30, 1, 0)}
				Position={new UDim2(0, 30, 0, 0)}
				BackgroundTransparency={1}
				Text={props.label}
				TextColor3={Color3.fromRGB(255, 255, 255)}
				Font={Enum.Font.SourceSans}
				TextSize={14}
				TextXAlignment={Enum.TextXAlignment.Left}
			/>
		</frame>
	);
}

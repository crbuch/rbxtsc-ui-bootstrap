import Roact from "@rbxts/roact";

export function NumberInput(props: { label: string; value: number; onChange: (v: number) => void; y: number }) {
	return (
		<>
			<textlabel
				Size={new UDim2(0, 90, 0, 20)}
				Position={new UDim2(0, 5, 0, props.y)}
				BackgroundTransparency={1}
				Text={props.label}
				TextColor3={Color3.fromRGB(255, 255, 255)}
				Font={Enum.Font.SourceSans}
				TextSize={14}
				TextXAlignment={Enum.TextXAlignment.Left}
			/>
			<textbox
				Size={new UDim2(0, 50, 0, 20)}
				Position={new UDim2(0, 100, 0, props.y)}
				BackgroundColor3={Color3.fromRGB(45, 45, 45)}
				TextColor3={Color3.fromRGB(255, 255, 255)}
				Font={Enum.Font.SourceSans}
				TextSize={14}
				Text={tostring(props.value)}
				ClearTextOnFocus={false}
				BorderSizePixel={2}
				BorderColor3={Color3.fromRGB(0, 0, 0)}
				Event={{
					FocusLost: (rbx) => {
						const num = tonumber(rbx.Text);
						if (num !== undefined) props.onChange(num);
						else rbx.Text = tostring(props.value);
					},
				}}
			/>
		</>
	);
}

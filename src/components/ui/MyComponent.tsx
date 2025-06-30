import Roact from "@rbxts/roact";

export function MyComponent(props: { label?: string }) {
	return <textlabel Size={new UDim2(0, 200, 0, 50)} Text={props.label} />;
}

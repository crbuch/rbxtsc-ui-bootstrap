import Roact from "@rbxts/roact";
import { Players, YieldPath } from "@/utils";
import { MainUI } from "@/app/page";

Roact.mount(
	<screengui IgnoreGuiInset={true}>
		<MainUI />
	</screengui>,
	YieldPath<ScreenGui>("PlayerGui", Players.LocalPlayer),
);

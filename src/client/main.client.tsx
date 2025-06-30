import Roact from "@rbxts/roact";
import { Players } from "@/utils";
import { MainUI } from "@/app/page";

let path: Instance = game.GetService("StarterGui");
pcall(() => {
	if (Players.LocalPlayer) {
		path = Players.LocalPlayer.WaitForChild("PlayerGui").WaitForChild("ScreenGui");
	}
});

Roact.mount(
	<screengui IgnoreGuiInset={true}>
		<MainUI />
	</screengui>,
	path,
);

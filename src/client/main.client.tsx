import Roact from "@rbxts/roact";
import { Players } from "@/utils";
import { MainUI } from "@/app/page";

let path: Instance = game.GetService("StarterGui");
path.FindFirstChild("MainUI")?.Destroy(); // Remove any previous instances of MainUI
pcall(() => {
	if (Players.LocalPlayer) {
		path = Players.LocalPlayer.WaitForChild("PlayerGui").WaitForChild("ScreenGui");
	}
});

Roact.mount(
	<screengui Key={"MainUI"} IgnoreGuiInset={true}>
		<MainUI />
	</screengui>,
	path,
);

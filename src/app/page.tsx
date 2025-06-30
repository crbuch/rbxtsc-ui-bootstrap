import { MyComponent } from "@/components/ui/MyComponent";
import Roact from "@rbxts/roact";
import { useEffect, useState, withHooks } from "@rbxts/roact-hooked";

export const MainUI = withHooks(function () {
	

	return (
		<frame Size={new UDim2(1, 0, 1, 0)} BackgroundTransparency={1}>
			<MyComponent label="Hello World" />
		</frame>
	);
});

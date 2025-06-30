import { Checkbox } from "@/components/ui/Checkbox";
import { Menu } from "@/components/ui/Menu";
import { MenuRow } from "@/components/ui/MenuRow";
import { RowLabel } from "@/components/ui/RowLabel";
import Roact from "@rbxts/roact";

export const MainUI = function () {
	return (
		<Menu>
			<MenuRow>
				<RowLabel Text="Hello World" />
				<Checkbox />
			</MenuRow>
		</Menu>
	);
};

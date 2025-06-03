//equivalent to Instance:WaitForChild()
export function YieldPath<T>(path: string, start: Instance = game): T {
	const names = path.split(".");
	let currInstance: Instance = start;
	for (let i = 0; i < names.size(); i++) {
		if ((i === 0 && (names[i] === "game" || names[i] === `${start}`)) || names[i] === "") {
			continue;
		} else {
			currInstance = currInstance?.WaitForChild(names[i]);
		}
	}
	return currInstance as T;
}

// equivalent to Instance:FindFirstChild()
export function FindPath<T>(path: string, start: Instance = game): T | undefined {
	const names = path.split(".");
	let currInstance = start;
	for (let i = 0; i < names.size(); i++) {
		if ((i === 0 && (names[i] === "game" || names[i] === `${start}`)) || names[i] === "") {
			continue;
		} else {
			currInstance = currInstance?.FindFirstChild(names[i]) as Instance;
		}
		if (!currInstance) {
			return undefined as T;
		}
	}
	return currInstance as T;
}


export const TweenService: TweenService = game.GetService("TweenService");
export const ReplicatedStorage: ReplicatedStorage = game.GetService("ReplicatedStorage");
export const Players: Players = game.GetService("Players");
export const UserInputService: UserInputService = game.GetService("UserInputService");
export const RunService: RunService = game.GetService("RunService");
export const Workspace: Workspace = game.GetService("Workspace");


export function SetTimeout(func: Callback, ms: number) {
	const start = tick();
	const connection = RunService.RenderStepped.Connect(() => {
		if (tick() - start > ms / 1000) {
			func();
			connection.Disconnect();
		}
	});
}
/* eslint-disable no-undef */
import { execSync } from "child_process";
import { argv, platform, exit } from "process";
import chalk from "chalk"; // Default import

const task = argv[2]; // 'bundle' or 'serve-rojo'

const isWindows = platform === "win32";

const commands = {
	bundle: isWindows
		? "npx rbxtsc && ./bin/wax.exe bundle input=./default.project.json output=./bundle/out/bundle.client.luau minify=true"
		: "npx rbxtsc && wine ./bin/wax.exe bundle input=./default.project.json output=./bundle/out/bundle.client.luau minify=true",

	"serve-rojo": isWindows
		? "./bin/rojo.exe serve ./bundle --address 0.0.0.0"
		: "wine ./bin/rojo.exe serve ./bundle --address 0.0.0.0",
};

if (!commands[task]) {
	console.error(chalk.red.bold(`\n✖ Unknown task: "${task}". Use "bundle" or "serve-rojo".\n`));
	exit(1);
}

try {
	execSync(commands[task], { stdio: "inherit" });

	if (task === "bundle") {
		console.log(chalk.green.bold("\n✔ Project bundled successfully\n"));
	}
} catch (err) {
	if (task === "bundle") {
		console.error(chalk.red.bold("\n✖ Error during the compiling/bundling process\n"));
	} else {
		console.error(chalk.red.bold(`\n✖ Failed to run task: ${task}\n`));
	}
	exit(1);
}

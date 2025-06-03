# Roblox RoactJSX UI Bundle Starter

A minimal, opinionated starter template for building Roblox UI applications using **TypeScript**, **Roact**, and **JSX**.  
Everything compiles into a single `bundle.lua` script for easy integration into Roblox Studio.

## ✨ Features

- ⚡ Written in **TypeScript** with **JSX** syntax
- 🎨 UI powered by **Roact**
- 📦 Compiles into a single Lua file (`bundle.lua`)
- 🔧 Uses exact versions of **Rojo**, **Wax**, and **Darklua**
- 🚀 Quick setup and bundling with `npm` scripts

## 📁 Project Structure
```bash
/
├── src/ # Your UI code goes here
│ └── client/
│ └── main.client.tsx # Entry point
├── bin/ # CLI binaries (Rojo, Wax, Darklua)
├── bundle/ # Output folder for bundled script
├── package.json
└── README.md
```

## 🛠 Prerequisites

Ensure you have the following installed or included from `/bin`:

- [Rojo](https://rojo.space/)
- [Wax](https://github.com/latte-soft/wax)
- [Darklua](https://github.com/seaofvoices/darklua)
- Node.js + npm

## 🚧 Usage

### 1. Edit your UI in `/src/app/page.tsx`

Use TypeScript and JSX to build Roact components.

### 2. Compile the bundle

```bash
npm run bundle
```

This outputs bundle.client.luau to the /bundle/out directory.

### 3. Serve to Roblox Studio

Start Rojo

```bash
rojo serve ./bundle
```

Or use the included npm script:

```bash
npm run serve-rojo
```

### 🧩 Why This Exists
This is not a framework. Just a ready-to-go environment that:

Uses very specific versions of roblox-ts, roact, wax, and darklua

Helps avoid setup quirks and version mismatches

Supports JSX syntax out of the box


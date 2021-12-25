---
sidebar_position: 1
---

# Getting Started

The first thing to do when getting started is to install the package.

## Installation

Installing the package is quick and easy whether you use a package manager like [Wally](https://github.com/UpliftGames/wally) or work directly in Studio.

:::info
Regardless of the installation method you should wind up with a `Packages` folder in `ReplicatedStorage`. All future docs will assume the package can be accessed at `ReplicatedStorage.Packages.Hue`.
::::

### Wally (Recommended)

Add the following to your `wally.toml` and run `wally install` to download the package.

```toml
[dependencies]
Hue = "vocksel/hue@0.1.0
```

Make sure the resulting `Packages` folder is synced into your experience using a tool like [Rojo](https://github.com/rojo-rbx/rojo/).

### Roblox Studio

* Download a copy of the rbxm from the [releases page](https://github.com/vocksel/hue/releases/latest) under the Assets section.
* Drag and drop the file into Roblox Studio to add it to your experience.

## Next Steps

With the package installed you are now ready to start using it! Head on over to the [API reference](/api/Hue) to learn about the functions you have available.
# Instance2Lua
Allows the serialization of any group of Instances into Polytoria lua code.

## Usage:
- Create a new LocalScript or Script in Polytoria Creator and paste the [Instance2Lua code](Instance2Lua.lua) code into it
- Adjust settings in the Config table at the top of the script to choose a target Instance to convert
- Start a local play test and click into the window when done loading to ensure the game is actively focused
- Wait for the instructions on screen to change and press `Ctrl + X` to copy the outputted code

## Configuration
| Option | Description |
| ------ | ------ |
| Target | The root instance to convert, e.g. your GUI or your Model|
| Minify | Shortens the variable names and removes line breaks for smaller, less readable, output|
| LocalVars | Add or remove `local` keyword to all Instance variables, recommended `false` when converting large amount of Instances, like entire maps|
| WarningTime | Amount of time to wait before setting cursor focus on the code output box, useful if external tools are installed that unfocus the game window by default|


## In case of script errors
Please [create an issue](https://github.com/geringverdien/Polytoria-Instance2Lua/issues) if you encounter any bugs with the script. In *most cases* this will be due to either a **game update** or an **invalid property entry** that I missed


## Building
To build the bundled script file, install [polybundle](geringverdien/PolyBundle) via `npm install -g polybundle` and run the `build.bat` script

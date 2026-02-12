# Instance2Lua
Allows the serialization of any group of Instances into Polytoria lua code.

## Usage:
- Create a new LocalScript or Script in Polytoria Creator and paste the [Instance2Lua code](Instance2Lua.lua) code into it
- Adjust settings in the `CONFIG` table at the top of the script to choose a target Instance to convert
- Start a local play test and click into the window when done loading to ensure the game is actively focused
- Wait for the instructions on screen to change and press `Ctrl + X` to copy the outputted code

## Configuration
| Option | Description |
| ------ | ------ |
| Target | The root instance to convert, e.g. your GUI or your Model|
| Minify | Shortens the variable names and removes line breaks for smaller, less readable, output|
| LocalVars | Add or remove `local` keyword to all Instance variables, recommended `false` when converting large amount of Instances, like entire maps|
| WarningTime | Amount of time to wait before setting cursor focus on the code output box, useful if external tools are installed that unfocus the game window by default|


An uncopylocked place containing the code can be found [here](https://polytoria.com/places/87647)

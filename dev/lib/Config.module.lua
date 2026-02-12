return {
    Target = game["Hidden"]:FindChild("AdminGUI"), -- the instance to serialize
    Minify = false, -- removes line seperation and shortens variable names
    LocalVars = true, -- create local variables for instances (set to false for large models to avoid hitting the local variable limit)
	WarningTime = 5 -- time in seconds before the output box is focused so you have time to click into the game window, close menus, etc.
}
local grass = get("grass")
local gb = get("gb")
local timesPressed = 0
grass.on_click(function()
    timesPressed = timesPressed + 1
    gb.set_content("You have pressed the grass " + timesPressed + " times.")
end)
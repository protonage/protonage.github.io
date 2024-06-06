local grass = get("grass")
local gb = get("gb")
local timesPressed = 0
get("grass").on_click(function()
    timesPressed = timesPressed + 1
    get("gb").set_content("You have pressed the grass " + timesPressed + " times.")
end)
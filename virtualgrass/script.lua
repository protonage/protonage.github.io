local grass = get("grass")
local gb = get("gb")
local timesPressed = 0

local function touchgrass()
    timesPressed = timesPressed + 1
    get("gb").set_content("You have touched grass " + timesPressed + " times.")
    print("touched grass")
end
get("grass").on_click(touchgrass)
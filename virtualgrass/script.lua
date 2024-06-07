print("Made with <3 by Protonage!")

local grass = get("grass")
local gb = get("gb")
local ga = 42
local timesPressed = 0

get("ga").set_content("To get the benefits of virtual grass, please click the grass " .. ga .. " times")

local function touchgrass()
    timesPressed = timesPressed + 1
    get("gb").set_content("You have touched grass " .. timesPressed .. " times.")
    print("touched grass")
    if timesPressed == ga then
        get("award").set_content("<img src="https://raw.githubusercontent.com/protonage/protonage.github.io/main/virtualgrass/grass.gif"/> Youve earned this badge! Place it on any webpage by putting https://raw.githubusercontent.com/protonage/protonage.github.io/main/virtualgrass/grass.gif in an image tag!")
end
get("grass").on_click(touchgrass)
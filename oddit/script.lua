get("button").on_click(function()
    local input = get("input").get_contents()
    if (number % 2 == 0) then
        get("output").set_contents("Even")
    else
        get("output").set_contents("Odd")
    end
end)
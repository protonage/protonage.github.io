get("button").on_click(function()
    local input = get("input").get_content()
    if (number % 2 == 0) then
        get("output").set_content("Even")
    else
        get("output").set_content("Odd")
    end
end)
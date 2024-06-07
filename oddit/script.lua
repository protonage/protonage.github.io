get("button").on_click(function()
    local input = string.sub(get("input").get_content(), -1)
    if (input % 2 == 0) then
        get("output").set_content("Even")
    else
        get("output").set_content("Odd")
    end
end)
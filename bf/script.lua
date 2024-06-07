local function cbclick()
    print("cb has been clicked")
end
local function ibclick()
    print("ib has been clicked")
end

get("cb").on_click()
get("ib").on_click()
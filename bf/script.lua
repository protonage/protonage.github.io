wait(0.1)
print("1")
local function cbclick()
    print("cb has been clicked")
end
print("2")
local function ibclick()
    print("ib has been clicked")
end
print("3")
get("cb").on_click()
print("4")
get("ib").on_click()
print("5")
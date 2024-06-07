print("Made with <3 by Protonage")

-- TODO:
--  write searching algos for loops
--  write interpreter
--  test everything and pray you didnt write everything wrong


-- + is add
-- - is subtract
-- > is go forward
-- < is go backwards
-- . is output from ascii
-- , is input and take in as ascii
-- [ is if pointer is 0 go to next ]
-- ] is if pointer is not 0 go to previous [

local input = ""
local code = ""
local bfarr = {}
local ptr = 0
local function split(inputstr, sep)
    if sep == nil then
      sep = "%s"
    end
    local t = {}
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
      table.insert(t, str)
    end
    return t
end
local function join(arr)
    local o = ""
    for i,v in ipairs(arr) do
        o = o .. v
    end
    return o
end
local function bfadd()
    bfarr[ptr] = bfarr[ptr] + 1
end
local function bfsub()
    bfarr[ptr] = bfarr[ptr] - 1
end
local function bfr()
    ptr = ptr + 1
end
local function bfl()
    ptr = ptr - 1
end
local function bfo()
    get("output").set_content(get("output").get_content() .. bfarr[ptr])
end
local function bfi()
    local inp = split(input,"")
    get("input").set_content(get("input").get_content() .. inp[1])
    inp = table.remove(inp,1)
    input = join("inp")
end
local function bfl1()
    -- write searching algo for >
end
local function bfl2()
    -- write searching algo for <
end
local function interpret()
    -- write interpreter
end
local function cbclick()
    print("cb has been clicked")
end
local function ibclick()
    print("ib has been clicked")
end
get("cb").on_click(cbclick)
get("ib").on_click(ibclick)
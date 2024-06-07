print("Made with <3 by Protonage")

-- TODO:
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
for i = 1, 5000 do
    bfarr[i] = 0
  end  
local ptr = 1
local cp = 1
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
    if bfarr[ptr] > 255 then 
        bfarr[ptr] = 0
    end
end
local function bfsub()
    bfarr[ptr] = bfarr[ptr] - 1
    if bfarr[ptr] < 0 then
        bfarr[ptr] = 255
    end
end
local function bfr()
    ptr = ptr + 1
end
local function bfl()
    ptr = ptr - 1
end
local function bfo()
    get("output").set_content(get("output").get_content() .. string.char(bfarr[ptr]))
end
local function bfi()
    local inp = split(input,"")
    get("input").set_content(get("input").get_content() .. string.byte(inp[1]))
    inp = table.remove(inp,1)
    input = join("inp")
end
local function bfl1()
    -- [
    local lc = 0
    if bfarr[ptr] == 0 then
        d = false
        while d == false do
            cp = cp + 1
            if split(code,"")[cp] == "[" then
                lc = lc + 1
            elseif split(code,"")[cp] == "]" then
                if lc == 0 then
                    cp = cp + 1
                    d = true
                else
                    lc = lc -1
                end
            end
        end
    end
end
local function bfl2()
    local lc = 0
    if bfarr[ptr] == 0 then
        d = false
        while d == false do
            cp = cp - 1
            if split(code,"")[cp] == "]" then
                lc = lc + 1
            elseif split(code,"")[cp] == "[" then
                if lc == 0 then
                    d = true
                else
                    lc = lc -1
                end
            end
        end
    end
end
local function interpret()
    while cp <= #split(code,"") do
        if split(code,"")[cp] == "+" then
            bfadd()
        elseif split(code,"")[cp] == "-" then
            bfsub()
        elseif split(code,"")[cp] == ">" then bfr()
        elseif split(code,"")[cp] == "<" then bfl()
        elseif split(code,"")[cp] == "," then bfi()
        elseif split(code,"")[cp] == "." then bfo()
        elseif split(code,"")[cp] == "[" then bfl1()
        elseif split(code,"")[cp] == "]" then bfl2()
        end
    end
end
local function cbclick()
    code = get("code").get_content()
    interpret()
end
local function ibclick()
    input = get("input").get_content()
end
get("cb").on_click(cbclick)
get("ib").on_click(ibclick)
print("Made with <3 by Protonage")

local pieces = {{{{1,3},{2,3},{3,3},{4,3}},{{3,1},{3,2},{3,3},{3,4}},{{1,2},{2,2},{3,2},{4,2}},{{2,1},{2,2},{2,3},{2,4}}},
{{{1,2},{1,3},{2,2},{3,2}},{{2,1},{2,2},{2,3},{3,3}},{{1,2},{2,2},{3,1},{3,2}},{{1,1},{2,1},{2,2},{2,3}}},
{{{1,2},{2,2},{3,2},{3,3}},{{2,1},{2,2},{2,3},{3,1}},{{1,1},{1,2},{2,2},{2,3}},{{1,3},{2,1},{2,2},{2,3}}},
{{{1,2},{2,2},{2,3},{3,3}},{{2,2},{2,3},{3,1},{3,2}},{{1,1},{2,1},{2,2},{3,2}},{{1,2},{1,3},{2,1},{2,2}}},
{{{1,3},{2,2},{2,3},{3,2}},{{2,1},{2,2},{3,2},{3,3}},{{1,2},{2,1},{2,2},{3,1}},{{1,1},{1,2},{2,2},{2,3}}},
{{{1,2},{2,2},{2,3},{3,2}},{{2,1},{2,2},{2,3},{3,2}},{{1,2},{2,1},{2,2},{3,2}},{{1,2},{2,1},{2,2},{2,3}}},
{{{2,2},{2,3},{3,2},{3,3}},{{2,2},{2,3},{3,2},{3,3}},{{2,2},{2,3},{3,2},{3,3}},{{2,2},{2,3},{3,2},{3,3}}}}
-- 1 = line piece
-- 2 = j block
-- 3 = l block
-- 4 = s block
-- 5 = z block
-- 6 = t block
-- 7 = square block
local game = {
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0}}

local function split(inputstr, sep)
    if sep == nil then
      sep = "%s"
    end
    local t = {}
    for str in string.gmatch(inputstr, "([^"..sep.."]+])") do
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
function sleep (a)
    local sec = tonumber(os.clock() + a); 
    while (os.clock() < sec) do 
    end 
end
local function render()
    for k,v in pairs(game) do
        for i,e in pairs(split(get(k).get_content())) do
            local a = split(get(k).get_content())
            if game[k][i] == 1 then
                a[i] = "#"
            else
                a[i] = "."
            end
            get(i).set_content(join(a))
        end
    end
end
local function gameloop()
    render()
end
local function init()
    -- reset game board 
    for k,v in pairs(game) do
        for i,e in pairs(v) do
            v[i] = 0
        end
    end
    -- visually appealing animation
    --for i=20,1,-1 do
    --    print(i)
    --    for e=10,1,-1 do
    --        get(i).set_content(get(i).get_content() .. "#")
    --        sleep(0.1)
    --    end
    --end
    --for i=1,20 do
    --    print(i)
    --    for k,v in pairs(split(get(i).get_content())) do
    --        local a = split(get(i).get_content())
    --        a[i] = "."
    --        get(i).set_content(join(a))
    --        sleep(0.1)
    --    end
    --end
    for i=20,1,-1 do
        print(i)
        for e=10,1,-1 do
            get(i).set_content(get(i).get_content() .. ".")
        end
    end
    gameloop()
end

init()
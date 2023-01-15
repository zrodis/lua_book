-- defines a factorial function
function fact(n)
    if n == 0 then
        return 1
    else
        return n * fact(n - 1)
    end

end

--[[
print ('enter a number to factor: ')
a = io.read("*n") -- reads a number
print("output " .. fact(a))
]] --
luaunit = require('luaunit')

function testFactorial()

    luaunit.assertEquals(fact(5), 120)
end

luaunit.LuaUnit.run()

luaunit = require('luaunit')
lib1 = require('1/lib1')


function testFactorial()

    luaunit.assertEquals(fact(1), 1)
    luaunit.assertEquals(fact(5), 120)

end

function testFactorialWithNegativeNumber()
    --return error when input is a negative number
    luaunit.assertEquals(fact(-1), error)
end

function testNotANumber()
    --return error when input type is not number
    luaunit.assertEquals(fact('dog'), error)
    luaunit.assertEquals(fact({}), error)

end

function testExercise1dot7()
    --double check the logic
    luaunit.assertNotEquals(parens(false, true, false), parens(true, true, false))
    luaunit.assertNotEquals(noParens(false, true, false), parens(true, true, false))
    luaunit.assertNotEquals(parens(false, true, false), noParens(true, true, false))

    -- assert it is the same with no parens
    luaunit.assertEquals(parens(true, true, false), noParens(true, true, false))
end

os.exit(luaunit.LuaUnit.run()) --i don't understand what the point of os.exit is besides preventing -i (interactive) flag from being used on the command line

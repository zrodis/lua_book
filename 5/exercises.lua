luaunit = require('luaunit')

--exercise 5.6
-- write a function to test whether a given table is a valid sequence
function isSequence(t)
    local lastItemIndex
    for i, k in pairs(t) do
        if type(i) ~= "number" then
            return false
        end
        lastItemIndex = i
    end

    return #t == lastItemIndex

end

validSequence1 = { [1] = 'howdy', [2] = 'mister', [3] = 'cowboy' }
validSequence2 = { 4, 5, 2 }
invalidSequence1 = { x = 4, y = 9, cheese = 'cheddar' }
invalidSequence2 = { 1, 2, can = "soda", }

function testIsSequence()
    luaunit.assertEquals(isSequence(validSequence1), true)
    luaunit.assertEquals(isSequence(validSequence2), true)
    luaunit.assertEquals(isSequence(invalidSequence1), false)
    luaunit.assertEquals(isSequence(invalidSequence2), false)
end

-- exercise 5.7
-- write a function that inserts all elements of a given list into a given
-- position of another given list

luaunit.LuaUnit.run()

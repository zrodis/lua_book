luaunit = require('luaunit')
-- Chapter 4 - Strings



-- Exercise 4.3
-- Write a funtion to insert a string into a given position of another one
-- insert("hello world", 1, "start:")  --> start: hello world

-- strategy: use string.sub split the original string in two,
-- then concatenate with the insertion
function insert(str, pos, insertion)

    local firstHalf = string.sub(str, 0, pos - 1)
    local secondHalf = string.sub(str, pos)

    return firstHalf .. insertion .. secondHalf
end

function testInsert()
    local result = insert("hello world", 1, "start: ")
    luaunit.assertEquals(result, "start: hello world")

    local result2 = insert("hello world", 7, "small ")
    luaunit.assertEquals(result2, "hello small world")
end

luaunit.LuaUnit.run()

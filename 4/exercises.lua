luaunit = require('luaunit')
-- Chapter 4 - Strings



-- Exercise 4.3
-- Write a funtion to insert a string into a given position of another one
-- insert("hello world", 1, "start:")  --> start: hello world
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

--[[
function testInsertUTF8()
    -- fails with non-unicode characters
    local utf8Result = insert("ação", 5, "!")
    luaunit.assertEquals(utf8Result, "ação!")
end
--]]

-- can't do Exercise 4.4 or 4.6 in Lua 5.2... need to upgrade to 5.3
-- there is a new library that handles utf8 characters.

--Exercise 4.5
function remove(str, pos, len)
    local firstHalf = string.sub(str, 0, pos - 1)
    local secondHalf = string.sub(str, pos + len)

    return firstHalf .. secondHalf
end

function testRemove()
    local result = remove("hello world", 7, 4)
    luaunit.assertEquals(result, "hello d")
end

--Exercise 4.7
function isPalindrome(str)
    local lowercase = string.lower(str)
    return lowercase == string.reverse(lowercase)
end

function testIsPalindrome()
    local resultTrue = isPalindrome('step on no pets')
    local resultfalse = isPalindrome('bananas')

    luaunit.assertEquals(resultTrue, true)
    luaunit.assertEquals(resultfalse, false)
end

-- Exercise 4.8
function isPalindromeWithoutPunctuationOrSpaces(str)
    local removeThese = { ' ', '%.', '%,', '%:', '%;', '%?', '%!', '%-' }
    local result = str
    print('- ' .. result)
    for i, item in pairs(removeThese) do
        result = string.gsub(result, item, '')
    end

    return isPalindrome(result)
end

function testIsPalindromeWithoutPunctuationOrSpaces()
    local resultTrue = isPalindromeWithoutPunctuationOrSpaces("step. on nopets")
    local resultFalse = isPalindromeWithoutPunctuationOrSpaces("bananas")

    luaunit.assertEquals(resultTrue, true)
    luaunit.assertEquals(resultFalse, false)
end

luaunit.LuaUnit.run()

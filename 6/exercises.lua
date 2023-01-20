luaunit = require('luaunit')

-- exercise 6.1
-- takes an array and prints all elements
function printList(list)
    print(table.unpack(list))
end

print('printList')
printList({ "a", "b", "cowboy", 5, { x = 1 } })


-- exercise 6.2
-- takes an arbitrary number of values and returns all of them, except the first
function listShift(...)
    local args = table.pack(...)

    local result = table.remove(args, 1) -- table LIBRARY MODIFIES, DOES NOT RETURN A NEW TABLE
    return table.unpack(args)
end

print('\nlistShift')
print(listShift(3, 4, 5, 6))

-- exercise 6.3
-- takes an arbitrary number of values and returns all of them, except the last
function listPop(...)
    local args = table.pack(...)
    table.remove(args, args.n)
    return table.unpack(args)
end

print("/nlistPop")
print(listPop(4, 5, 6))

-- exercise 6.4
-- shuffle a given list. Make sure all permutations are equally probable

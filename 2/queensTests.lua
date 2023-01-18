luaunit = require('luaunit')
require('2/queens')

function testIsPlaceOk()
    -- returns false if
    --  any values in board param match column param (because 2 Qs can't occupy the same column)

    testData = {
        board = { 1, 5, 8, 6, 3 },
        row = 6,
        column = 4
    }

end

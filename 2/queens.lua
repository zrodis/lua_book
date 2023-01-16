BOARD_SIZE = 8
-- board array would look something like {3, 7, 2, 1, 8, 6, 5, 4}.
-- each item in the array represents a row, and its value represents which column holds the queen within that row.
function isPlaceOk(board, n, column)
    for i = 1, n - 1 do
        if (board[i] == column) or
            (board[i] - i == column - n) or
            (board[i] + i == column + n) then
            return false
        end
    end
    return true
end

function printSolution(board)
    for i = 1, BOARD_SIZE do
        for j = 1, BOARD_SIZE do
            io.write(board[i] == j and "X" or "-", " ")
        end
        io.write("\n")
    end
    io.write("\n")
    os.exit() --exercise 2.1
end

function addQueen(board, n)
    if n > BOARD_SIZE then
        printSolution(board)
    else
        for column = 1, BOARD_SIZE do
            if isPlaceOk(board, n, column) then
                board[n] = column
                addQueen(board, n + 1)
            end
        end
    end

end

addQueen({}, 1)

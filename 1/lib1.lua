-- defines a factorial function
function fact(n)
    if type(n) ~= "number" then
        return error
    elseif n < 0 then
        return error
    elseif n == 0 then
        return 1
    else
        return n * fact(n - 1)
    end
end

function norm(x, y)
    return math.sqrt(x ^ 2 + y ^ 2)
end

function twice(x)
    return x * 2
end

function parens(x, y, z)
    return (x and y and (not z)) or ((not y) and x)
end

function noParens(x, y, z)
    return x and y and not z or not y and x
end

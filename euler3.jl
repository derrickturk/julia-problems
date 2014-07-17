#= project euler problem 3

The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
=#

function primefactors(n::Integer)
    maxfactor = ifloor(sqrt(n))
    factors = typeof(n)[]

    for f = 2:maxfactor
        if n % f == 0
            return [primefactors(f), primefactors(div(n, f))]
        end
    end

    return [n]
end

println(max(primefactors(600851475143)...))

#= project euler problem 1

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
=#

function sum_multiples_below(n::Integer)
    sum(filter(1:n-1) do i return i % 3 == 0 || i % 5 == 0 end)
end

@assert(sum_multiples_below(10) == 23, "Failed example calculation.")

println(sum_multiples_below(1000))

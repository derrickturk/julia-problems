#= project euler problem 4

A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
=#

palindrome(num) = string(num) == reverse(string(num))

palindrome_products_of_digits(n) = filter(palindrome,
    unique(vec([i * j for i = 1:(10^n - 1), j = 1:(10^n - 1)])))

@assert(max(palindrome_products_of_digits(2)...) == 9009,
    "Failed example calculation.")

println(max(palindrome_products_of_digits(3)...))

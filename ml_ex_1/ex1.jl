#= Coursera Machine Learning Class

Exercise 1
=#

warmUpExercise() = eye(5)

load(file, sep=',') = open(file) do f
    readdlm(f, sep, Float64)
end

function computeCost(X, y, θ)
    m = length(y)
    sum((X * θ - y) .^ 2) / 2m
end

function delJ(X, y, θ)
    m = size(X, 1)
    err = X * θ - y
    (err' * X)' ./ m
end

function gradientDescent(X, y, θ, α, num_iters)
    m = length(y)
    J = zeros(num_iters, 1)
    for i = 1:num_iters
        grad = delJ(X, y, θ)
        θ -= α * grad
        J[i] = computeCost(X, y, θ)
    end
    θ, J
end

#% ==================== Part 1: Basic Function ====================
println("ok, a silly function.")
println(warmUpExercise())

#% ======================= Part 2: Plotting =======================
println("I ain't plot no damn data.")

#% =================== Part 3: Gradient descent ===================
println("gradient descent, woo.")

data = load("ex1data1.txt")
X = data[:, 1]
y = data[:, 2]
m = length(y) # number of training examples

X = [ones(m, 1) X] # Add a column of ones to x
θ = zeros(2, 1) # initialize fitting parameters

# Some gradient descent settings
iterations = 1500
α = 0.01

# compute and display initial cost
println("Initial cost: $(computeCost(X, y, θ))")

# run gradient descent
θ, J = gradientDescent(X, y, θ, α, iterations)

# print θ to screen
println("θ from gradientDescent: $θ")

# Predict values for population sizes of 35,000 and 70,000
predict1 = [1 3.5] * θ
println("For population = 35,000, we predict a profit of $(predict1 * 10000)")
predict2 = [1 7] * θ
println("For population = 70,000, we predict a profit of $(predict2 * 10000)")

#% ============= Part 4: Visualizing J(theta_0, theta_1) =============

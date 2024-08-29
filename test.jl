# Define a function to calculate the square of a number
function square(x)
    return x * x
end

# Use the function
result = square(4)
println("The square of 4 is $result")

# Perform some numerical computation
using LinearAlgebra
A = [1 2; 3 4]
b = [5, 6]
x = A \ b  # Solve the linear system Ax = b
println("Solution to the linear system is $x")

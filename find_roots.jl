# Import the necessary package
using Polynomials

# Define a polynomial, for example: p(x) = x^3 - 6x^2 + 11x - 6
p = Polynomial([-6, 11, -6, 1])  # Coefficients are in ascending order: [constant, x^1, x^2, ...]

# Print the polynomial
println("Polynomial: ", p)

# Find and print the roots of the polynomial
poly_roots = roots(p)  # Changed variable name from `roots` to `poly_roots`
println("Roots: ", poly_roots)

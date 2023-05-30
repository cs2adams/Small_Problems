# fibonacci_numbers_recursion.rb

# PROBLEM
# Input: An integer n
# Output: The nth number of the Fibonacci sequence
# Implementation must use recursion

# EXAMPLES
# fibonacci(1) == 1
# fibonacci(2) == 1
# fibonacci(3) == 2
# fibonacci(4) == 3
# fibonacci(5) == 5
# fibonacci(12) == 144
# fibonacci(20) == 6765

# DATA STRUCTURES
# Integers

# ALGORITHM
# if n < 1
#   return nil
# else if n <= 2
#   return 1
# else
#   return self(n - 1) + self(n - 2)
# end

# CODING
def fibonacci(n)
  return if n < 1
  return 1 if n <= 2

  fibonacci(n - 1) + fibonacci(n - 2)
end

puts fibonacci(1) == 1
puts fibonacci(2) == 1
puts fibonacci(3) == 2
puts fibonacci(4) == 3
puts fibonacci(5) == 5
puts fibonacci(12) == 144
puts fibonacci(20) == 6765
# fibonacci_numbers_procedural.rb

# PROBLEM
# Input: An integer n
# Otput: An integer (the nth fibonacci number)

# EXAMPLES
# fibonacci(20) == 6765
# fibonacci(100) == 354224848179261915075
# fibonacci(100_001) # => 4202692702.....8285979669707537501

# DATA STRUCTURES
# Two integers to track the current and previous Fibonacci numbers

# ALGORITHM
# if n <= 2
#   return 1
#
# num1 = 1
# num2 = 1
# current_num = 1
# 
# while counter < n
#   current_num = num1 + num2
#   num1 = num2
#   num2 = current_num
#   counter += 1
# return current_num

# CODING
def fibonacci(n)
  return 1 if n <= 2

  num1 = 1
  num2 = 1
  current_num = 1

  (n - 2).times do
    current_num = num1 + num2
    num1 = num2
    num2 = current_num
  end

  current_num
end

puts fibonacci(20) == 6765
puts fibonacci(100) == 354224848179261915075
puts fibonacci(100_001) # => 4202692702.....8285979669707537501

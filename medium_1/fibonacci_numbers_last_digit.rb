# fibonacci_numbers_last_digit.rb

# PROBLEM
# Input: Integer n
# Output: The last digit (an integer) of the nth fibonacci number

# EXAMPLES
# fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
# fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# fibonacci_last(123456789) # -> 4

# DATA STRUCTURES
# Integers
# Array

# ALGORITHM
# return 1 if n <= 2
#
# num1 = 1
# num2 = 1
# current_num = 1
# 
# while counter < n
#   current_num = (num1 + num2) % 10
#   num1 = num2
#   num2 = current_num
#   counter += 1
# return current_num

# CODING
def fibonacci_last(n)
  n_300 = n % 300
  first, last = [1, 1]

  3.upto(n_300) do
    first, last = [last, (first + last) % 10]
  end

  last
end

puts fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
puts fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
puts fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
puts fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
puts fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
puts fibonacci_last(123456789) # -> 4
puts fibonacci_last(123_456_789_987_745)
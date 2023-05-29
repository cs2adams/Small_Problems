# double_doubles.rb

# PROBLEM
# Input: An integer
# Output: An integer
#   output should be double the value of the input, UNLESS
#   input has an even number of digits and left side is equal to right side
#   (in which case return the input integer)

# EXAMPLES
# twice(37) == 74
# twice(44) == 44
# twice(334433) == 668866
# twice(444) == 888
# twice(107) == 214
# twice(103103) == 103103
# twice(3333) == 3333
# twice(7676) == 7676
# twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# twice(5) == 10

# DATA STRUCTURES
# String for easy comparison

# ALGORITHM
# Convert input integer to string representation
# first_half = 1st half of string
# second_half = 2nd half of string
# if 1st_half == 2nd_half
#   return input
# else
#   return input x 2

# CODING
def twice(num)
  num = num.to_s

  midpoint = num.size / 2
  first = num[0, midpoint]
  second = num[midpoint, num.size - midpoint]

  num = num.to_i
  if first == second
    num
  else
    num * 2
  end
end

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10
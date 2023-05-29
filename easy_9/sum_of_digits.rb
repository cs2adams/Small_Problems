# sum_of_digits.rb

# PROBLEM
# Input: A positive integer
# Output: Sum of its digits (an integer)

# EXAMPLES
# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# DATA STRUCTURES
# An array of ints

# ALGORITHM
# Convert input integer to string
# Split string into array of individual digit
# Initialize output = 0
# For each element of array
#   Output = output + current element converted to integer
# return output

# CODING
def sum(num)
  num.to_s.chars.map { |i| i.to_i }.reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
# counting_up.rb

# PROBLEM
# Input: Integer (positive)
# Output: Array of all integers between 1 and the input integer

# EXAMPLES
# sequence(5) == [1, 2, 3, 4, 5]
# sequence(3) == [1, 2, 3]
# sequence(1) == [1]

# DATA STRUCTURES
# Array

# Algorithm
# Initialize empty output array
# num = 1
# while num <= input
#   append num to output array
#   num = num + 1
# Return output array

# CODING
def sequence(num)
  if num >= 1
    1.upto(num).to_a
  else
    1.downto(num).to_a
  end
end

puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(1) == [1]

p sequence(-10)
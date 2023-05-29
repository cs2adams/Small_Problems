# sequence_count.rb

# PROBLEM
# Input: Two integers: 1st is a count, 2nd is the 1st number of the output sequence
# Output: An array of length = count, each element is a multiple of the starting number

# EXAMPLES
# sequence(5, 1) == [1, 2, 3, 4, 5]
# sequence(4, -7) == [-7, -14, -21, -28]
# sequence(3, 0) == [0, 0, 0]
# sequence(0, 1000000) == []

# DATA STRUCTURES
# An array

# ALGORITHM
# Given 2 ints: start and count
# Initialize empty output array
# current_num = start
# while count > 0
#   append current_num to output array
#   current_num = current_num + start
#   count = count - 1
# return output array

# CODING
def sequence(count, start)
  current_num = start
  output = []

  while count > 0
    output << current_num
    current_num += start
    count -= 1
  end

  output
end

puts sequence(5, 1) == [1, 2, 3, 4, 5]
puts sequence(4, -7) == [-7, -14, -21, -28]
puts sequence(3, 0) == [0, 0, 0]
puts sequence(0, 1000000) == []
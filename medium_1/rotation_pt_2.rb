# rotation_pt_2.rb

# PROBLEM
# Input: Two integers
# Output: An integer equal to the 1st integer with the last n digits having been rotated (n = 2nd integer)

# EXAMPLES
# rotate_rightmost_digits(735291, 1) == 735291
# rotate_rightmost_digits(735291, 2) == 735219
# rotate_rightmost_digits(735291, 3) == 735912
# rotate_rightmost_digits(735291, 4) == 732915
# rotate_rightmost_digits(735291, 5) == 752913
# rotate_rightmost_digits(735291, 6) == 352917

# DATA STRUCTURES
# String, array

# ALGORITHM
# Convert 1st integer to string
# Create array of chars from string representation
# subarray = array[length - 2nd num to length - 1]
# Replace with subarray rotated
# Join array to string and convert to integer

# CODING
def rotate_array(arr)
  arr[1..-1] << arr[0]
end

def rotate_rightmost_digits(num1, num2)
  digits = num1.to_s.chars
  digits[digits.size - num2 .. -1 ] = rotate_array(digits[digits.size - num2 .. -1 ])
  digits.join('').to_i
end

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917
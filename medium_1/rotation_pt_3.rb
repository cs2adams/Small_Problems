# rotation_pt_3.rb

# PROBLEM
# Input: An integer
# Output: An integer representing the "max rotation" of the input

# EXAMPLES
# max_rotation(735291) == 321579
# max_rotation(3) == 3
# max_rotation(35) == 53
# max_rotation(105) == 15 # the leading zero gets dropped
# max_rotation(8_703_529_146) == 7_321_609_845

# DATA STRUCTURES
# Array

# ALGORITHM
# Split input into array of string characters
# Initialize empty output array
# Initialize current_num = input array
# For each index in array:
#   Current_num = rotate_rightmost_digits(current_num)
#   Remove 1st element from current_num and append to output array
# Return output array

# CODING
require 'pry'

def rotate_array(arr)
  arr[1..-1] << arr[0]
end

def rotate_rightmost_digits(num1, num2)
  digits = num1.to_s.chars
  digits[digits.size - num2 .. -1 ] = rotate_array(digits[digits.size - num2 .. -1 ])
  digits.join('').to_i
end

# def max_rotation(num)
#   current_num = num.to_s
#   num_digits = current_num.size
#   output = []

#   (0..num_digits - 1).each do |i|
#     current_num = rotate_rightmost_digits(current_num.to_i, num_digits - i)
#   end

#   current_num
# end

def max_rotation(num)
  output = ''
  num_array = num.to_s.chars
  num_digits = num_array.size

  num_digits.times do
    num_array << num_array.shift
    output << num_array.shift
  end
  output.to_i
end

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845
# list_of_digits.rb

# PROBLEM
# Input: A positive integer
# Output: Array of digits in the integer

# EXAMPLES
# puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]             # => true

# DATA STRUCTURES
# Array of digits

# ALGORITHM
# Initialize new empty array
# while number > 0
#   - last_digit = number % 10
#   - number -= last_digit
#   - append last_dgit to start of output_array
# Return output array

# CODING
def digit_list(number)
  digits = []
  while number > 0
    number, last_digit = number.divmod(10)
    digits.unshift(last_digit)
  end
  digits
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
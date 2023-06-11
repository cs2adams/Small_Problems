# featured_number.rb

# PROBLEM
# Input: An integer
# Output: The next featured number greater than the input integer
#   A "featured number" is an odd multiple of 7 with no duplicate digit
#   Return error message if no next featured number

# EXAMPLES
# featured(12) == 21
# featured(20) == 21
# featured(21) == 35
# featured(997) == 1029
# featured(1029) == 1043
# featured(999_999) == 1_023_547
# featured(999_999_987) == 1_023_456_987

# featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

# DATA STRUCTURES
# Integers to count

# ALGORITHM
# current_num = input_num + 1
# while current_num < 2 * input_num
#   if current_num % 7 == 0 && no_duplicate_digits(input_num)
#     return current_num
# 
# print "There is no possible number that fulfills those requirements"
# return nil

# NO_DUPLICATE_DIGITS

# Input: An integer
# Output: Boolean: true if the int does not include duplicate digits, false if it does

# DATA STRUCTURES
# String

# ALGORITHM
# Convert integer to string
# return true if integer == integer with duplicates removed, false otherwise

# CODING
require 'pry'
require 'pry-byebug'
MAX_NUM = 10_000_000_000

def no_duplicate_digits?(num)
  num_str = num.to_s
  num_str == num_str.chars.uniq.join
end

def featured(num)
  current_num = num + (7 - (num % 7))
  current_num += 7 if current_num.even?

  while current_num < MAX_NUM
    return current_num if no_duplicate_digits?(current_num)
    current_num += 14
  end

  puts 'There is no possible number that fulfills those requirements'
end

puts featured(12) == 21
puts featured(20) == 21
puts featured(21) == 35
puts featured(997) == 1029
puts featured(1029) == 1043
puts featured(999_999) == 1_023_547
puts featured(999_999_987) == 1_023_456_987

puts featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
# fibonacci_loc_by_length.rb

# PROBLEM
# Input: Integer representing length of Fibonacci #
# Output: Integer representing the Fibonacci sequence index
# producing the first # of length equal to or greater than input

# DATA STRUCTURE
# Array
# Integers

# ALGORITHM
# Initialize array with [1, 1]
# Initialize fibonacci = 0, index = 2
# While fibonacci < 10**(input-1)
#   - Old_num = remove first element from array
#   - fibonacci = old_num + last element of array
#   - Push sum of old_num and other array element to array
#   - Increment index
# Return index

# CODING
def find_fibonacci_index_by_length(length)
  last_two_digits = [1, 1]
  fibonacci = 1
  index = 2

  while fibonacci < 10**(length - 1) do
    old_num = last_two_digits.shift
    fibonacci = old_num + last_two_digits.last
    last_two_digits << fibonacci
  index += 1
  end
  index
end

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847

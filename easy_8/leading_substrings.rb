# leading_substrings.rb

# PROBLEM
# Input: A string
# Output: An array of all substrings of input string starting with 1st index

# EXAMPLES
# leading_substrings('abc') == ['a', 'ab', 'abc']
# leading_substrings('a') == ['a']
# leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# DATA STRUCTURES
# Array of substrings

# ALGORITHM
# Initialize output array
# Iterate through indices of input string
# For each index
#   Current substring = input string from 1st to current index
#   Append current substring to output array
# Return output array

# CODING
def leading_substrings(str)
  str.split('').map.with_index { |_, idx| str[0..idx] }
end

puts leading_substrings('abc') == ['a', 'ab', 'abc']
puts leading_substrings('a') == ['a']
puts leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
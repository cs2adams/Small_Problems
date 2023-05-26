# all_substrings.rb

# PROBLEM
# Input: A string
# Output: Array of all substrings of a string, ordered by starting position and shortest to longest

# EXAMPLES
# substrings('abcde') == [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]

# DATA STRUCTURES
# An array of strings

# ALGORITHM
# Initialize empty output array
# Iterate through indices of input array
# For each index:
#   Concatenate output array with leading_substrings at current index to end
# Return output array

# CODING
def leading_substrings(str)
  str.split('').map.with_index { |_, idx| str[0..idx] }
end

def substrings(str)
  str.split('').map.with_index { |_, idx| leading_substrings(str[idx..-1]) }.flatten
end

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
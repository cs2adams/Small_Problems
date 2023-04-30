# ascii_string_value.rb

# PROBLEM
# Input: String
# Output: Integer representing sum of ASCII values of each character of string
# If string is empty: Output = 0

# EXAMPLES
# ascii_value('Four score') == 984
# ascii_value('Launch School') == 1251
# ascii_value('a') == 97
# ascii_value('') == 0

# DATA STRUCTURES
# Integer representing running sum of ASCII values

# ALGORITHM
# Initialize sum = 0
# Iterate through characters in the input string
# For each character:
# - Increment sum by ascii value of current character
# Return sum

# CODING

def ascii_value(string)
  string_chars = string.split('')
  total = 0

  string_chars.each { |char| total += char.ord }
  total
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0
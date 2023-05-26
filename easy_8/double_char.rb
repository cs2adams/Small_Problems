# double_char.rb

# PROBLEM
# Input: String
# Output: String with each character of input string doubled

# EXAMPLES
# repeater('Hello') == "HHeelllloo"
# repeater("Good job!") == "GGoooodd  jjoobb!!"
# repeater('') == ''

# DATA STRUCTURES
# String and/or array

# ALGORITHM
# Initialize empty string
# Iterate through input string
# For each character
#   Append character to output string twice
# Return output string

# CODING
def repeater(str)
  output = ''
  str.each_char { |char| output << char*2 }
  output
end

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''
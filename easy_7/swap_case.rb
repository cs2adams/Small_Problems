# swap_case.rb

# PROBLEM
# Input: A string
# Output: A string with uppercase chars changed to lowercase and vice versa

# EXAMPLES
# swapcase('CamelCase') == 'cAMELcASE'
# swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# DATA STRUCTURES
# An array of characters
# Arrays of alphabetic characters (constants)

# ALGORITHM
# Convert input to string of characterize
# Initialize new empty array
# Initialize constants (lowercase and uppercase alphabet)
# For each character in string:
# If it is a lowercase letter
#   Find index of letter in lowercase constant array
#   Find corresponding uppercase letter from other array and push to new array
# Else if uppercase letter
#   Find index of letter in uppercase constant array
#   Find corresponding lowercase letter from other array and push to new array
# Else
#   Push existing char to new array
# Join array and return

# CODING
LOWERCASE = ('a'..'z').to_a
UPPERCASE = ('A'..'Z').to_a

def swapcase(phrase)
  phrase.chars.map do |char|
    if LOWERCASE.include?(char)
      UPPERCASE[LOWERCASE.find_index(char)]
    elsif UPPERCASE.include?(char)
      LOWERCASE[UPPERCASE.find_index(char)]
    else
      char
    end
  end.join('')
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# clean_up_the_words.rb

# PROBLEM
# Input: A string of lowercase words separated by spaces, and some non0alphabetic characters
# Output: A string with non-alphabetic characters removed.
#   - Non-alphabetic characters should be replaced by spaces
#   - Result string should never have more than one space in a row

# EXAMPLES
# cleanup("---what's my +*& line?") == ' what s my line '

# DATA STRUCTURES
# Array of words

# ALGORITHM
# Convert input string to an array of words
#   - Array should be split on all non-digit characters
# Join array with spaces
# Output array

# CODING
def cleanup(string)
  non_alphabetic = %r{[^a-z]}
  first_char = string[0] =~ non_alphabetic ? ' ' : ''
  last_char = string[-1] =~ non_alphabetic ? ' ' : ''

  words = string.split(non_alphabetic)
  words.delete('')
  words.join(' ').prepend(first_char) << last_char
end

p cleanup("---what's my +*& line?") == ' what s my line '

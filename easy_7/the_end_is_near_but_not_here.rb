# the_end_is_near_but_not_here.rb

# PROBLEM
# Input: A string of at least two words (separated by spaces)
# Output: The 2nd last word in the input string

# EXAMPLES
# penultimate('last word') == 'last'
# penultimate('Launch School is great!') == 'is'

# DATA STRUCTURE
# - an array of words in the string

# ALGORITHM
# - convert input string to array of words
# Return the 2nd last elementof the array

# CODING
# def penultimate(words)
#   words.split[-2]
# end

# puts penultimate('last word') == 'last'
# puts penultimate('Launch School is great!') == 'is'

# Method 2: Return middle word of phrase

# PROBLEM
# Input: A string
# Output: The middle word of the string
#   - if even number of words in string, return the middle 2
#   - If input string is empty, return empty string
#   - If only one word, return that word
#   - if multiple blank spaces in a row, remove them all

# EXAMPLES
# middle_word('the cat jumped over the big brown fox') == 'over the'
# middle_word('cameron       stuart      adams') == 'stuart'
# middle_word('') == ''
# middle_word('word') == 'word'
# middle_word('last word') == 'last word')
# middle_word('Launch School is great!') == 'School is'

# DATA STRUCTURES
#   - Array of words in string (no spaces)

# ALGORITHM
# Convert input string to array of words
# Find length of array
# If even:
#   Return array[length / 2 - 1 .. length / 2], joined with space
# Else:
#   Return array[length / 2]
# End

def middle_word(phrase)
  return '' if phrase == ''
  words = phrase.split
  num_words = words.size
  if num_words.even?
    words[num_words / 2 - 1 .. num_words / 2].join(' ')
  else
    words[num_words / 2]
  end
end

puts middle_word('the cat jumped over the big brown fox') == 'over the'
puts middle_word('cameron       stuart      adams') == 'stuart'
puts middle_word('') == ''
puts middle_word('word') == 'word'
puts middle_word('last word') == 'last word'
puts middle_word('Launch School is great!') == 'School is'
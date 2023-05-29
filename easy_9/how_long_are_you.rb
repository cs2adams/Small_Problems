# how_long_are_you.rb

# PROBLEM
# Input: A string with space-separated words
# Output: An array. Each element of array is a word
# from the input string, followed by a space and then
# the length of the word
# If empty string --> return empty array
# If no spaces -> return array with single element
#   i.e. assume 1 word

# EXAMPLES
# word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

# word_lengths("baseball hot dogs and apple pie") ==
#   ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

# word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

# word_lengths("Supercalifragilisticexpialidocious") ==
#   ["Supercalifragilisticexpialidocious 34"]

# word_lengths("") == []

# DATA STRUCTURES
# An array of words and an ouptut array built element-by-element

# ALGORITHM
# Save words from input string into an array
# Initialize empty output array
# For each word from the input string
#   new_word = word + ' ' + length of word
#   Append new_word to end of output array
# Return output array

# CODING
def word_lengths(str)
  str.split.map { |word| word + ' ' + word.size.to_s }
end

puts word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

puts word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

puts word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

puts word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

puts word_lengths("") == []
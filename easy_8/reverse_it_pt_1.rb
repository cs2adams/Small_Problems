# reverse_it_pt_1.rb

# PROBLEM
# Input: String of words (words are separated by spaces)
# Output: String with words in reverse order

# EXAMPLES
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'
# puts reverse_sentence('') == ''
# puts reverse_sentence('    ') == '' # Any number of spaces results in ''

# DATA STRUCTURES
# Array to hold words

# ALGORITHM
# Create array of words from input string
# Reverse array
# Join array with spaces

# CODING
def reverse_sentence(sentence)
  sentence.split.reverse.join(' ')
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''
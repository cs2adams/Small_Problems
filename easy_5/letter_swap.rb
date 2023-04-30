# letter_swap.rb

# PROBLEM
# input: A string of words separated by spaces
# Outputa: A string with the 1st and last letter of each word swapped

# EXAMPLES
# swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'

# DATA STRUCTURES
# Array of words from input string

# ALGORITHM
# Convert input string to array of words
# Iterate through array. For each element:
# Remove 1st element
# Remove last element
# Add first element to end
# Add last element to beginning
# Join array as string separated by spaces

# CODING
def swap(sentence)
  words = sentence.split

  words.each do |word|
    first_char = word[0]
    last_char = word[-1]
    word[0] = last_char
    word[-1] = first_char
  end

  words.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'
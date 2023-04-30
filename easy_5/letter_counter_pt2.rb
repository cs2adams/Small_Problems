# letter_counter_pt_2.rb

# PROBLEM
# Input: A string of words separated by spaces
# Output: A hash with keys = length of word, value = # of words with that length
# non-letter characters should not count toward word length

# DATA STRUCTURE
# Array of words
# Hash of word lengths and #s (the output)

# ALGORITHM
# Convert input string to array of words
# For each word in the array
#   - current_length = count alphabetic characters
#   - hash[current_length] += 1
# Return hash


# CODING
def word_sizes(sentence)
  words = sentence.split
  word_size_hash = Hash.new(0)

  words.each do |word|
    current_length = word.count('a-zA-Z')
    word_size_hash[current_length] += 1
  end
  word_size_hash
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}
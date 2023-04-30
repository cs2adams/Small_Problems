# letter_count_pt_1.rb

# PROBLEM
# Input: String of words separated by spaces
# Output: Hash with keys representing # of letters, values = # words of that length
# If string is empty: return empty hash

# EXAMPLES
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}

# DATA STRUCTURES
# - Array of words
# - Hash of word lengths and counts (to be returned by method)

# ALGORITHM
# - Convert input string to array of words
# - Initialize empty hash
# - For each word in the array:
#   - Obtain current_size of word
#   - If current_size is a pre-existing hash key:
#     - hash[current_size] += 1
#   - else
#     hash[current_size] = 1
# - Return hash

# CODING
def word_sizes(sentence)
  words = sentence.split
  word_size_hash = Hash.new

  words.each do |word|
    current_length = word.size
    if word_size_hash.fetch(current_length, false)
      word_size_hash[current_length] += 1
    else
      word_size_hash[current_length] = 1
    end
  end
  word_size_hash
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}
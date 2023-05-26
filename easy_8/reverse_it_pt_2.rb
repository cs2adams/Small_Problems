#  reverse_it_pt_2.rb

# PROBLEM
# Input: String of words (separated by spaces)
# Output: New string that is identical to input string, except words >= 5 chars have been reversed

# EXAMPLES
# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

# DATA STRUCTURES
# Array of words

# ALGORITHM
# Convert input string to array of words
# Initialize empty output array
# Iterate through words in the array of words.
# For each word:
#   If word length >= 5
#     Reverse the word and append to output array
#   Else
#     Append the word to output array

# CODING
def reverse_words(sentence)
  sentence.split.map do |word|
    if word.size >= 5
      word.reverse
    else
      word.dup
    end
  end.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
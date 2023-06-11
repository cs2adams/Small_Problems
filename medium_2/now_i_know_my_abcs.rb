# PROBLEM
# Input: A string (a word)
# Output: boolean indicating whether the word can be spelled from the spelling block

# EXAMPLES
# block_word?('BATCH') == true
# block_word?('BUTCH') == false
# block_word?('jest') == true

# DATA STRUCTURES
# Nested array to represent spelling block

# ALGORITHM
# Initialize spelling block array
# If word == word with duplicates deleted
#   return false
#
# For each 2-element inner array
#   if word contains both elements
#     return false
#
# return true

# CODING
SPELLING_BLOCK = [
  ['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'],
  ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'],
  ['V', 'I'], ['L', 'Y'], ['Z', 'M']
]

def block_word?(word)
  return false unless word.chars == word.chars.uniq

  word = word.upcase
  !SPELLING_BLOCK.any? do |char1, char2|
    word.include?(char1) && word.include?(char2)
  end
end

puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true
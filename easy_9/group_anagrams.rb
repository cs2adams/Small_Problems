# group_anagrams.rb

# PROBLEM
# Input: Array
# Output: Print groups of words that are anagrams.

# EXAMPLES
# words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
#           'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
#           'flow', 'neon']

# Output:
# ["demo", "dome", "mode"]
# ["neon", "none"]
# #(etc)

# DATA STRUCTURES
# Hash with keys as unique ID word, values as array of anagrams from input

# ALGORITHM
# Initialize empty hash
# Iterate through input array
# For each word in the array:
#   sorted_word = current word sorted alphabetically
#   If hash contains sorted_word:
#     Append current word to Hash[sorted_word}]
#   Else
#     Hash[sorted_word] = [current_word]
# For each key in hash:
#   Print hash[key]

# CODING
def print_anagrams(words)
  anagrams = Hash.new([])

  words.each { |word| anagrams[word.chars.sort.join('').to_sym] += [word] }
  anagrams.each_value { |current_anagrams| p current_anagrams }
  nil
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

print_anagrams(words)
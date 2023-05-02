# delete_vowels.rb

# PROBLEM
# Input: Array of strings
#Output: Array of strings with vowels removed
# Any words that are entirely vowels should be empty string in output

# EXAMPLES
# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# DATA STRUCTURES
# Array

# ALGORITHM
# Initialize new empty output string
# Iterate through input array
# For each word in the array:
#   Delete vowels and push to output string
# Return output string

# CODING
def remove_vowels(words)
  vowels_removed = []

  words.each do |word|
    vowels_removed << word.delete('aeiouAEIOU')
  end
  vowels_removed
end

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
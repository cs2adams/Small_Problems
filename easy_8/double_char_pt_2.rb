# double_char_pt_2.rb

# PROBLEM
# Intput: String
# Output: String with every consonant character doubled

# EXMAPLES
# double_consonants('String') == "SSttrrinngg"
# double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# double_consonants("July 4th") == "JJullyy 4tthh"
# double_consonants('') == ""

# DATA STRUCTURES
# String

# ALGORITHM
# Initialize empty output string
# Iterate through input string
# For each character in input string:
#   If character is consonant:
#     append to output string twice
# Return output string

# CODING
def double_consonants(str)
  output = ''
  str.each_char do |char|
    output << char if char.match(/[a-zA-Z&&[^aeiouAEIOU]]/)
    output << char
  end
  output
end

puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""
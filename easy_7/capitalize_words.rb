# capitalize_words.rb

# PROBLEM
# Input: String
# Output: String with 1st letter of every word capitalized, all others lowercase
# Words are separated by spaces

# EXAMPLES
# word_cap('four score and seven') == 'Four Score And Seven'
# word_cap('the javaScript language') == 'The Javascript Language'
# word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# DATA STRUCTURES
# An array of words

# ALGORITHM
# Convert input string to array of words
# For each word:
#   reference word, capitalize and push to new arrray
# Return new array, joined to string

# CODING
# def word_cap(phrase)
#   words = phrase.split
#   words.map { |word| word.capitalize }.join(' ')
# end

# def word_cap(phrase)
#   words = phrase.split
#   words.map do |word|
#     first = word[0].upcase
#     last = word[1..-1].downcase
#     first + last
#   end.join(' ')
# end

def word_cap(phrase)
  phrase.downcase.split.each { |word| word[0] = word[0].upcase }.join(' ')
end

puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
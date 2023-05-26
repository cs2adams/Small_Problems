# palindromic_substrings.rb

# PROBLEM
# Input: A string
# Output: Array of substrings that are palindromes, in order of appearance
#   - Array should contain duplicates if they appear more than once
#   Substrings can contain non-alphanumeric characters
#   Single substrings are not palindromes

# EXAMPLES
# palindromes('abcd') == []
# palindromes('madam') == ['madam', 'ada']
# palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]

# DATA STRUCTURES
# An array of all subtrings
# An output array of palindromic substrings

# ALGORITHM
# Create array containing all substrings
# Initialize empty output array
# For each substring in array:
#   If substring is equal to reversed substring
#     Append substring to output array
# Return output array

# CODING
def leading_substrings(str)
  str.split('').map.with_index { |_, idx| str[0..idx] }
end

def substrings(str)
  str.split('').map.with_index { |_, idx| leading_substrings(str[idx..-1]) }.flatten
end

def palindromes(str)
  substrings(str).select do |substr|
    filtered_substr = substr.delete('^a-zA-Z0-9').downcase
    filtered_substr == filtered_substr.reverse && substr.size > 1
  end
end

puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

p palindromes('abcd')
p palindromes('madam')
p palindromes('hello-madam-did-madam-goodbye')
p palindromes('knitting cassettes')
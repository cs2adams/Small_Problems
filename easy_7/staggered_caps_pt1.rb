# staggered_caps_pt1.rb

# PROBLEM
# Input: A string
# Output: A new string with every other letter capitalized, starting with 1st
# Non-letter characterize should be unchanged but still count in the alternating sequence

# EXAMPLES
# staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# staggered_case('ALL_CAPS') == 'AlL_CaPs'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# DATA STRUCTURES
# A string

# ALGORITHM
# Initialize empty string
# Index = 0
# While index < size of string - 1
#   Convert string[index] to upcase and push to new string
#   Convert string[index +1] to lowercase and push to new string
#   increment index by 2
# If index < size of string then push last letter to new string (uppercase)
# Return new string

# CODING
def staggered_case(phrase, first_lowercase = false)
  if first_lowercase
    first_char = phrase[0]
    phrase = phrase[1..-1]
  end
  
  output_string = ''
  index = 0

  while index < phrase.size - 1
    output_string << phrase[index].upcase << phrase[index + 1].downcase
    index += 2
  end
  output_string << phrase[-1].upcase if index < phrase.size
  output_string = first_char.downcase + output_string if first_lowercase
  output_string
end

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

puts staggered_case('I Love Launch School!',true)
puts staggered_case('ALL_CAPS',true)
puts staggered_case('ignore 77 the 444 numbers',true)
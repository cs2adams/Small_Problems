# staggered_caps_pt2.rb

# PROBLEM
# Input: A string
# Output: A string with every other letter capitalized starting with 1st
#   Non-letter characters should be kept unchanged but don't count in alternating sequence

# EXAMPLES
# staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# staggered_case('ALL CAPS') == 'AlL cApS'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

# DATA STRUCTURES
# A new string

# Algorihtm
# Set uppercase = true
# For each character in the input string
#   If char is a letter
#     If uppercase
#       push lowercase char to new string
#     Else
#       push uppercase char to new string
#     uppercase = !uppercase
#   Else
#     push char to new string
# Return output

# CODING
def staggered_case(phrase, count_char = false)
  uppercase = true
  output = ''

  phrase.each_char do |char|
    if char =~ /[a-zA-Z]/
      if uppercase
        output << char.upcase
      else
        output << char.downcase
      end
      uppercase = !uppercase
    else
      output << char
      uppercase = !uppercase if count_char
    end
  end
  output
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

puts staggered_case('I Love Launch School!', true) == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS', true) == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers', true) == 'IgNoRe 77 ThE 444 NuMbErS'
# lettercase_counter.rb

# PROBLEM
# Input: A string
# Output: A hash with keys as :lowercase, :uppercase and :neither
#     Values should be ints indicating count of each type of letter

# EXAMPLES
# letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# DATA STRUCTURES
# Output hash

# ALGORITHN
# Iterate through string
# For each char:
#   If lowercase: :lowercase += 1
#   If uppercase: :uppercase += 1
#   If neither: :neither += 1
# Return hash

# CODING
def letter_case_count(string)
  hash = {lowercase: 0, uppercase:0, neither: 0}
  string.chars.each_with_object(hash) do |char, hash|
    if char.match(/[a-z]/)
      hash[:lowercase] += 1
    elsif char.match(/[A-Z]/)
      hash[:uppercase] += 1
    else
      hash[:neither] += 1
    end
  end
end

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

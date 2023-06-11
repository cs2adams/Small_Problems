# lettercase_percentage_ratio.rb

# PROBLEM
# Input: A string
# Output: Hash containing three key-value pairs
#   lowercase: float percentage of lowercase characters
#   uppercase: float percentage of uppercase characters
#   neither: float percentage neither upper nor lower case characters

# EXAMPLES
# letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
# letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
# letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

# DATA STRUCTURES
# Hash
# Array of characters

# ALGORITHM
# Convert input string to array
# Initialize hash with default value of 0.0
# For each character in array
#   if lowercase:
#     increment hash[:lowercase]
#   else if uppercase
#     increment hash[:uppercase]
#   else
#     increment hash[:neither]
#
# Return hash

# CODING
def letter_percentages(str)
  percentages = {lowercase: 0.0, uppercase: 0.0, neither: 0.0}

  str.chars.each do |char|
    if char.match(/[a-z]/)
      percentages[:lowercase] += 1
    elsif char.match(/[A-Z]/)
      percentages[:uppercase] += 1
    else
      percentages[:neither] += 1
    end
  end
  percentages.each_key { |k| percentages[k] = (percentages[k] / str.size * 100).round(1) }
end

puts letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
puts letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
puts letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

puts letter_percentages('abcdefGHI')
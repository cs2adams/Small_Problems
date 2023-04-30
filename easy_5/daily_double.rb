# daily_double.rb

# PROBLEM
# Input: a string
# Output: A new string with all duplicate letters removed from input
# If input is an empty string, output should be an empty string

# EXAMPLES
# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''

# DATA STRUCTURES
# String

# ALGORITHM
# Initialize new empty string
# Iterate through input string.
# For each character:
#   - If current_char != last element of new_string:
#     - Append current_char to new_string
# Return new string

# def crunch(input_string)
#   new_string = ''

#   input_string.each_char do |char|
#     new_string << char unless new_string[-1] == char
#   end
#   new_string
# end

# def crunch(input_string)
#   input_string.gsub(/(.)\1{1,}/, '\1')
# end

def crunch(input_string)
  input_array = input_string.chars
  comparison_array = input_array[1..-1].to_a + [' ']

  input_array.select!.with_index { |char, ind| char !=comparison_array[ind] }
  input_array.join('')
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
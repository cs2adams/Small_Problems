# PROBLEM
# input: A string of numeric characters. May or may not have leading +/- sign.
# Output: An integer representation of the input string (may be positive or negative depending on sign of input)

# EXAMPLES:
# string_to_signed_integer('4321') == 4321
# string_to_signed_integer('-570') == -570
# string_to_signed_integer('+100') == 100
# string_to_signed_integer('-0') == 0

# DATA STRUCTURES:
# - A hash to map string characters to their corresponding integer
# - An array of characters with each element being a character of the input string

# ALGORITHM:
# - Convert input string to array
# - If first element is not '+' or '-'
#   - Return string_to_integer(input string)
# - Otherwise:
#   - Remove first element from array and map to either 1 or -1 depending on sign
#   - Multiply mapped element by string_to_integer(input_string) and return the result

# CODING

require('pry')

CHAR_TO_INT = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
  'A' => 10,
  'B' => 11,
  'C' => 12,
  'D' => 13,
  'E' => 14,
  'F' => 15
}

def string_to_integer(string, base = 10)
  string_as_integer = 0
  exponent = 0
  string_array = string.upcase.split('')

  while string_array.size > 0
    current_char = string_array.pop
    current_digit = CHAR_TO_INT[current_char]

    string_as_integer += current_digit * (base**exponent)
    exponent += 1
  end

  string_as_integer
end

def string_to_signed_integer(signed_string)
  string_array = signed_string.upcase.split('')
  multiplier = 1
  
  first_char = string_array.first
  
  if %w(- +).include?(first_char)
    signed_string = signed_string[1..-1]
    multiplier = -1 if first_char == '-'
  end

  multiplier * string_to_integer(signed_string)
end



puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
puts string_to_signed_integer('-0') == 0
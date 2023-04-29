# string_to_number.rb

# PROBLEM
# Input: A string of numeric characters
# Output: An integer

# EXAMPLES
# string_to_integer('4321') == 4321
# string_to_integer('570') == 570
# string_to_integer('0') == 0

# DATA STRUCTURES
# Array of strings (each element is a character in the string)
# Hash containing numeric strings as keys, integer digits as values

# ALGORITHM
# - Convert input string to array of individual characters
# - Initialize "exponent" integer = 1
# - Initialize output = 0
# - Loop through array of characters by popping off the last element at each iteration.
# - For each character:
#   - Pop off last element (a character) and assign to "current_character"
#   - current_digit = hash[current_character]
#   - output += current_digit * (10 ** exponent)
#   - exponent += 1
# - Return output


# FURTHER EXPLORATION

# PROBLEM
# Input: String of hexadecimal characters
# Output: Integer representing the hexadecimal value

# EXAMPLES
# hexadecimal_to_integer('4D9f') == 19871
# hexadecimal_to_integer('0') == 0

# DATA STRUCTURES
# - Hash with hexadecimal to integer conversion
# Array of strings (each element is a character of the input string)

# ALGORITHM
# - Convert input string to array of individual characters
# - Initialize "exponent" integer = 0
# - Initialize output = 0
# - Loop through array of characters by popping off the last element at each iteration.
# - For each character:
#   - Pop off last element (a character) and assign to "current_character"
#   - current_digit = hash[current_character]
#   - output += current_digit * (16 ** exponent)
#   - exponent += 1
# - Return output
# CODING
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

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
puts string_to_integer('0') == 0

puts string_to_integer('4D9f', 16) == 19871
puts string_to_integer('0', 16) == 0
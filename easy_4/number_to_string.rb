# number_to_string.rb

# PROBLEM
# Input: A positive integer or 0
# Output: A string representation of the integer

# EXAMPLES:
# integer_to_string(4321) == '4321'
# integer_to_string(0) == '0'
# integer_to_string(5000) == '5000'

# DATA STRUCTURES
# - Hash to map ints to chars
# - Output string to push chars to

# ALGORITHM
# - Initialize output string
# - While input integer is greater than zero
#   - Modulus = integer % 10
#   - Current_char = hash[modulus]
#   - Insert current_char as first character of output string
#   - Integer = integer - modulus
#   - Integer = integer / 10
# - Return output string

# CODING

INT_TO_STRING = {
  0 => '0',
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9'
}

def integer_to_string(int)
  int_as_string = ''

  loop do
    mod = int % 10
    int_as_string = INT_TO_STRING[mod][0] << int_as_string
    int = (int - mod) / 10
    break if int == 0
  end
  int_as_string
end


puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
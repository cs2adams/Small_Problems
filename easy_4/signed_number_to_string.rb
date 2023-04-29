# signed_number_to_string.rb

# PROBLEM
# Input: An integer
# Output: A string representation of the input integer, prepended with '-' if input < 0

# EXAMPLES
# signed_integer_to_string(4321) == '+4321'
# signed_integer_to_string(-123) == '-123'
# signed_integer_to_string(0) == '0'

# DATA STRUCTURES
# An output string

# ALGORITHM
# Initialize first_char = ''
# first_char = '-' if input < 0
# Output = signed integer_to_string(input)
# Prepend first_char to output and return

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

def signed_integer_to_string(number)
  if number > 0
    first_char = '+'
  elsif number < 0
    first_char = '-'
  else
    first_char = ''
  end
  
  integer_to_string(number.abs).prepend(first_char)
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
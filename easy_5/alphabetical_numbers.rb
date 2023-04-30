# alphabetical_numbers.rb

# PROBLEM
# Input: Array of integers between 0-19
# Output: Array of integers sorted based on 1st letter

# EXAMPLES
# alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]

# DATA STRUCTURE
# Hash with ints as keys, words as values
# Output array

# ALGORITHM
# Create new array of strings with each element being a number
#   - Same order as input string
# Sort the string array
# Map string array back to numeric array and return it

# CODING
NUMBER_TO_STRING= {
  0 => 'zero',
  1 => 'one',
  2 => 'two',
  3 => 'three',
  4 => 'four',
  5 => 'five',
  6 => 'six',
  7 => 'seven',
  8 => 'eight',
  9 => 'nine',
  10 => 'ten',
  11 => 'eleven',
  12 => 'twelve',
  13 => 'thirteen',
  14 => 'fourteen',
  15 => 'fifteen',
  16 => 'sixteen',
  17 => 'seventeen',
  18 => 'eighteen',
  19 => 'nineteen'
}

STRING_TO_NUMBER = NUMBER_TO_STRING.to_a.map do |key_val_pair|
  key_val_pair.reverse
end.to_h

def alphabetic_number_sort(numbers)
  number_strings = numbers.map { |num| NUMBER_TO_STRING[num] }
  number_strings.sort.map { |num| STRING_TO_NUMBER[num]}
end

puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
# word_to_digit.rb

# PROBLEM
# Input: A sentence string (separated by spaces)
# Output: Same string with "digit words" converted to numeric digits

# EXAMPLES
# word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# DATA STRUCTURES
# A hash to map word to digits
# Array of words from input string
# Array of words in output string built incrementally

# ALGORITHM
# Initialize hash with digit words as keys, digit numbers as values
# Initialize empty output string
# Split input string into array
#
# For each word in input string:
#   if the word contains a key in the hash
#     Find starting index of key in word
#     new_word = ''
#     If starting index is not zero
#       Append word[0..starting_index - 1] to new_word
#     Append numeric representation to new_word
#     If starting_index + length of key < length of word
#       Append word[starting_index + length of key..-1] to new_word
#     Push new_word to output array
#   Else
#     Push word to output array
#
# Return output array

# CODING
DIGITS = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3',
  'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7',
  'eight' => '8', 'nine' => '9'
}

def digit(word)
  DIGITS.keys.each do |dig|
    return dig if word.include?(dig)
  end
  nil
end

def phone_number(str)
  "(#{str[0, 3]}) #{str[3, 3]}-#{str[6, 4]}"
end

def format_phone_number(str)

  str.split.map do |word|
    current_digits = word.chars.select do |char|
      DIGITS.values.include?(char)
    end.join('')
    
    if word.include?(current_digits) && current_digits.size == 10
      word.gsub(current_digits, phone_number(current_digits))
    else
      word
    end
  end.join(' ')
end

def word_to_digit(sentence)

  digits_together = ''
  current_digits = ''

  sentence.split.each do |word|
    if digit(word)
      current_digits << word
    else
      digits_together << current_digits + ' ' + word

      if digits_together.length > 0
        current_digits = ' '
      else
        current_digits = ''
      end
    end
  end
     

  output = digits_together.split.map do |word|

    current_word = word
    current_digit = digit(current_word)
    current_digit_num = DIGITS[current_digit]
    
    while current_digit
      if current_word.size > current_digit.size
        new_word = ''
        digit_index = current_word.index(current_digit)
        digit_end_index = digit_index + current_digit.size

        new_word << current_word[0..digit_index - 1] if digit_index > 0
        new_word << current_digit_num
        new_word << current_word[digit_end_index..-1] if digit_end_index < current_word.size

        current_word = new_word        
      else
        current_word = current_digit_num
      end
      current_digit = digit(current_word)
      current_digit_num = DIGITS[current_digit]
    end
    
    current_word
  end
  
  output = output.join(' ')
  output = format_phone_number(output)
  sentence.delete!(sentence) << output
end

sentence = 'Please call me 4 5va at five five five one two three four. Thanks.'
puts word_to_digit(sentence)# == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
puts sentence

sentence = 'Please call me 4 5va at one two three four five six seven eight nine zero. Thanks.'
puts word_to_digit(sentence)# == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
puts sentence
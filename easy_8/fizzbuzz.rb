# fizzbuzz.rb

# PROBLEM
# Input: Two integers
# Output: Print out all numbers from start int to end int. If # div by 3: Print Fizz, if div by 5: Print buzz, if div by both: print FizzBuzz
# Return nil

# EXAMPLES
# fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

# DATA STRUCTURES
# Array to store #s and/or Fizz, Buzz, FizzBuzz

# ALGORITHM
# Counter = 1st int
# while counter < last int
#   if counter % 3 == 0 && counter % 5 == 0
#     print "FizzBuzz, "
#   else if counter % 3 == 0
#     print "Fizz, "
#   else if counter % 5 == 0
#     print "Buzz, "
#   else
#     print counter + ', '
#   counter += 1
# print last int as fizzbuzz representation without the comma

# CODING
def fizzbuzz(start, finish)
  output = (start..finish).map do |num|
    if num % 3 == 0 && num % 5 == 0
      'FizzBuzz'
    elsif num % 3 == 0
      'Fizz'
    elsif num % 5 == 0
      'Buzz'
    else
      num
    end
  end.join(', ')
  puts output
end

fizzbuzz(1,15)
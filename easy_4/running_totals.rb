# running_totals.rb

# PROBLEM
# Input: Array of numbers
# Output: New array with same # of elements as input
#   Each element of the output array is the running total of input array

# Explicit requirements:
# - New array
# - Input is empty array --> output is new empty array

# EXAMPLES/TEST CASES
# Given

# DATA STRUCTURES
# Build output array sequentially

# ALGORITHM
# - Set counter = 0
# - Set current_sum = 0
# Iterate through input array
#   courrent_sum += input[counter]
#   output << current_sum
#   counter += 1


# CODING

# Version 1: Looping algorithm
# def running_total(numbers)
#   results = []
#   counter = 0
#   running_total = 0

#   loop do
#     break if counter == numbers.size
#     running_total += numbers[counter]
#     results << running_total

#     counter += 1
#   end
#   results
# end

# VERSION 2: More "Rubyist"
# def running_total(numbers)
#   results = []
#   numbers.each_index { |ind| results[ind] = numbers[0..ind].sum }
#   results
# end

# VERSION 3: Using Enumberable#each_with_object
# def running_total(numbers)
#   sum = 0

#   numbers.each_with_object([]) do |num, arr|
#     sum += num
#     arr << sum
#   end
# end

# VERSION 4: Using Enumerable#inject
def running_total(numbers)
  result = []

  numbers.each_index { |ind| result << numbers[0..ind].inject(:+) }
  result
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []



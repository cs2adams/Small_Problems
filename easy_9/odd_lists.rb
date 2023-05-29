# odd_lists.rb

# PROBLEM
# Input: An array
# Output: An array containing every other element (starting with 1st) of input array
# If input is empty: Return empty array

# EXAMPLES
# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# oddities(['abc', 'def']) == ['abc']
# oddities([123]) == [123]
# oddities([]) == []
# oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

# DATA STRUCTURES
# An array

# ALGORITHM
# Initialize empty output array
# Initialize counter = 0
# while counter < array size
#   if counter % 2 == 0
#     append input_array[counter] to output array
#   counter = counter + 1
# return output array

# CODING
# def oddities(input_array)
#   input_array.select.with_index { |_, idx| idx.even? }
# end

# def oddities(input_array)
#   output = []
#   input_array.each_with_index { |el, idx| output << el if idx.even? }
#   output
# end

def oddities(input_array)
  0.upto((input_array.size + 1) / 2 - 1 ).map { |i| input_array[i * 2] }
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
puts oddities([1, 2, 3, 4, 1]) == [1, 3, 1]
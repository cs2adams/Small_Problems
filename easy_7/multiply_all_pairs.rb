# multiply_all_pairs.rb

# PROBLEM
# Input: Two arrays of numbers
# Output: Sorted array containing all possible
#   combinations in which an element from the 1st
#   array is multiplied with an element from the 2nd
#   array
#   Output can include duplicates
#   # elements of output = length of array1 x length of array2

# EXAMPLES
# multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# DATA STRUCTURES
# An output array

# ALGORITHM
# Initialize output array
# Iterate through array 1.
# For each element in array1:
#   - num1 = current element of array1
#   - For each element in array2:
#     -num2 = current element of array2
#     - Push num1 x num2 to output array
# Sort output array

# CODING
def multiply_all_pairs(array1, array2)
  output = []
  array1.each do |num1|
    array2.each { |num2| output << num1 * num2 }
  end
  output.sort
end

puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
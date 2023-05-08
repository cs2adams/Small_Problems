# multiply_lists.rb

# PROBLEM
# Input: Two arrays of equal length, each a list of numbers
# Output: New array with each element the product of the two corresponding elements of the input arrays

# EXAMPLES
# multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# DATA STRUCTURES
# Array for output

# ALGORITHM
# Initialize empty output array
# Iterate through one of the input arrays
# For each element:
#   product = arr1[idx] * arr2[idx]
#   Push product to output array
# Return output array

# CODING
def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |arr| arr.inject(:*) }
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
# merge_sorted_lists.rb

# PROBLEM
# Input: Two sorted arrays
# Output: A sorted array containing all values from the 2 inputs
#   Input arrays must not be mutated
#   Method must not call a sort sub-method but rather build the output incrementally

# EXAMPLES
# merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
# merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
# merge([], [1, 4, 5]) == [1, 4, 5]
# merge([1, 4, 5], []) == [1, 4, 5]

# DATA STRUCTURES
# Array

# ALGORITHM
# idx1 = 0
# idx2 = 0
# output = []
#
# Loop until idx1 == length of array1 and idx2 OR length of array2
#   element_1 = array1[idx1]
#   element_2 = array2[idx2]
#   
#   if element_1 < element_2
#     push element_1 to output array
#     idx1 = idx1 + 1
#   else
#     push element_2 to output array
#     idx2 = idx2 + 1
#
# if idx1 == size of array1
#   push array2[idx2 to end] to output array
# else
#   push array1[idx1 to end] to output array
#
# return output array

# CODING
def merge(arr1, arr2)
  arr1_length = arr1.size
  arr2_length = arr2.size

  idx1 = 0
  idx2 = 0

  merged = []

  until idx1 == arr1_length|| idx2 == arr2_length
    first = arr1[idx1]
    second = arr2[idx2]

    if first < second
      merged << first
      idx1 += 1
    else
      merged << second
      idx2 += 1
    end
  end

  merged + if idx1 == arr1_length
             arr2[idx2..-1]
           else
             arr1[idx1..-1]
           end
end

puts merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
puts merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
puts merge([], [1, 4, 5]) == [1, 4, 5]
puts merge([1, 4, 5], []) == [1, 4, 5]
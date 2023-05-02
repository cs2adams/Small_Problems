# reversed_arrays_pt1.rb

# PROBLEM
# Input: An array
# Output: The same array object with element order reversed
#   - If input is empty array: return empty array
#   - If input has only one element: No modifications made

# EXAMPLES:
# list = [1,2,3,4]
# result = reverse!(list)
# result == [4, 3, 2, 1] # true
# list == [4, 3, 2, 1] # true
# list.object_id == result.object_id # true

# list = %w(a b e d c)
# reverse!(list) == ["c", "d", "e", "b", "a"] # true
# list == ["c", "d", "e", "b", "a"] # true

# list = ['abc']
# reverse!(list) == ["abc"] # true
# list == ["abc"] # true

# list = []
# reverse!(list) == [] # true
# list == [] # true

# DATA STRUCTURES
# Helper array to store elements

# ALGORITHM
# Copy input array to helper array
# For each element in input array:
#   Input_array[index] = helper_array[-1 - index]
# Return input_array

# CODING
def reverse!(input_array)
  helper = input_array.map { |el| el }
  input_array.map!.with_index { |_, ind| helper[-1 - ind] }
end

list = [1,2,3,4]
result = reverse!(list)
puts result == [4, 3, 2, 1] # true
puts list == [4, 3, 2, 1] # true
puts list.object_id == result.object_id # true

list = %w(a b e d c)
puts reverse!(list) == ["c", "d", "e", "b", "a"] # true
puts list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
puts reverse!(list) == ["abc"] # true
puts list == ["abc"] # true

list = []
puts reverse!(list) == [] # true
puts list == [] # true


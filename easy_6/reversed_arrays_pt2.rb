# reversed_arrays_pt2.rb

# PROBLEM
# Input: array
# Output: New array with element order reversed

# EXAMPLES
# reverse([1,2,3,4]) == [4,3,2,1]          # => true
# reverse(%w(a b e d c)) == %w(c d e b a)  # => true
# reverse(['abc']) == ['abc']              # => true
# reverse([]) == []                        # => true

# list = [1, 3, 2]                      # => [1, 3, 2]
# new_list = reverse(list)              # => [2, 3, 1]
# list.object_id != new_list.object_id  # => true
# list == [1, 3, 2]                     # => true
# new_list == [2, 3, 1]                 # => true

# DATA STRUCTURES
# Helper array

# ALGORITHM
# Initialize helper array = input_array
# Initialize output array
# Iterate through input array
#   - output[index] = helper[-1 - index]
# Return output

# CODING
# def reverse(input_array)
#   helper = input_array
#   input_array.map.with_index { |_, idx| helper[-1 - idx]}
# end

def reverse(input_array)
  input_array.each_with_object([]) { |el, arry| arry.unshift(el)}
end

puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse(%w(a b e d c)) == %w(c d e b a)  # => true
puts reverse(['abc']) == ['abc']              # => true
puts reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1, 3, 2]                     # => true
puts new_list == [2, 3, 1]                 # => true
# rotation_pt_1.rb

# PROBLEM
# Input: An array
# Output: A new array with the 1st element from the input moved to last

# EXAMPLES
# rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# rotate_array(x) == [2, 3, 4, 1]   # => true
# x == [1, 2, 3, 4]                 # => true

# DATA STRUCTURES
# An array

# ALGORITHM
# Output array = input array indexed at all but 1st element
# Push 1st element of input to output array
# Return output array

# CODING
def rotate_array(arr)
  arr[1..-1] << arr[0]
end

def rotate_string(str)
  rotate_array(str.chars).join('')
end

def rotate_integer(num)
  rotate_string(num.to_s).to_i
end

puts rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
puts rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
puts rotate_array(x) == [2, 3, 4, 1]   # => true
puts x == [1, 2, 3, 4]                 # => true

puts rotate_string('cameron')
puts rotate_integer(1234)
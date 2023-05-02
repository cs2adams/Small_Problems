# halvsies.rb

# PROBLEM
# Input: An array
# Output: Two arrays (nested) containing 1st and 2nd half of orginal
# Middle element (if odd length) should be in first arry
# If single element array: Output 2nd element should be empty
# If input is empty array: Output should be nested array with two empty arrays

# EXAMPLES
# halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# halvsies([5]) == [[5], []]
# halvsies([]) == [[], []]

# DATA STRUCTURES
# An array

# ALGORITHM
# middle_ind = (input length - 1) / 2
# arry1 = input from 0 to middle ind
# arry2 = input from middle ind + 1 to end
# output = array of arry1 and arry2

# CODING
def halvsies(arry)
  middle_ind = (arry.size - 1) / 2
  [arry[0..middle_ind], arry[(middle_ind + 1)..-1]]
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]
  
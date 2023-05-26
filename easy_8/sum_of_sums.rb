# sum_of_sums.rb

# PROBLEM
# Input: An array of 1 or more numbers
# Output: Integer representing the sum of each leading subsequence

# EXAMPLES
# sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# sum_of_sums([4]) == 4
# sum_of_sums([1, 2, 3, 4, 5]) == 35

# DATA STRUCTURES
# A running total and a an index

# ALGORITHM
# Initialize sum = 0, idx = 0
# Iterate through the indexes of the input array from the first to last index
# For each index: 
#   idx = current index
#   Iterate through the input array from the first index to idx
#   For each element of the input array:
#     sum = sum + current element
# Return the sum

# CODING
def sum_of_sums(arr)
  arr.map.with_index { |_, idx| arr[0..idx] }.flatten.inject(:+)
end

puts sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
puts sum_of_sums([4]) == 4
puts sum_of_sums([1, 2, 3, 4, 5]) == 35
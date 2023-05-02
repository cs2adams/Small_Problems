# combining_arrays.rb

# PROBLEM
# Input: Two arrays
# Output: Combined arrays with duplicates removed

# EXAMPLES
# merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# DATA STRUCTURES
# An array

# ALGORITHM
# output = array1
# concatenate output with array2
# remove duplicates and return

# CODING
def merge(arry1, arry2)
  output = arry1 + arry2
  output.uniq
end

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
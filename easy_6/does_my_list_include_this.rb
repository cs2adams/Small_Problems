# does_my_list_include_this.rb

# PROBLEM
# Input: An array, a search value
# Output: Boolean - true if array contains search value, false if not

# EXAMPLES
# include?([1,2,3,4,5], 3) == true
# include?([1,2,3,4,5], 6) == false
# include?([], 3) == false
# include?([nil], nil) == true
# include?([], nil) == false

# DATA STRUCTURES
# The input array

# ALGORITHM
# Iterate through input array
#   Compare each element to search value
#   Retur true if search value == element
# Return false

# CODING
def include?(arry, val)
  arry.any? { |el| el == val }
end

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false
# grocery_list.rb

# Input: Array with elements as subarrays containing grocery item (string) and quantity (integer)
# Output: An array of strings. Each grocery item should appear in the output
# array, as a string, the appropriate number of times

# EXAMPLES
# buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
#   ["apples", "apples", "apples", "orange", "bananas","bananas"]

# DATA STRUCTURES
# An array

# ALGORITHM
# Initialize empty output array
# Iterate through input array
# For each element:
#   item = current_element[1]
#   quantity = current_element[2]
#   while quantity > 0
#     append item to output array
#     quantity = quantity - 1
#   end
# return output array

# CODING
def buy_fruit(fruits)
  output = []

  fruits.each do |(fruit, quantity)|
    quantity.times { output << fruit }
  end
  
  output
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
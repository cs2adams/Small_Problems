# array_average.rb

# PROBLEM
# Input: Array of 1 or more positive inteegers
# Output: Integer representing average of input integers

# EXAMPLES
# puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

# DATA STRUCTURES
# Integer to increment

# ALGORITHM
# total = 0
# size = size of input array
# iterate through input array
# for each element:
#   total = total + current element
# output = total / size
# return output

# CODING
def average(ints)
  total = 0
  num_ints = 0

  ints.each do |num|
    total += num
    num_ints += 1
  end
  
  total.to_f / num_ints.to_f
end

puts average([1, 6])# == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8])# == 25
puts average([9, 47, 23, 95, 16, 52])# == 40
# multiplicative_average.rb

# PROBLEM
# Input: Array of integers
# Output: STDOUT showing ints multiplied together, than divided by # of ints - result to 3 decimal places
# Array is non-empty

# EXAMPLES
# show_multiplicative_average([3, 5])                # => The result is 7.500
# show_multiplicative_average([6])                   # => The result is 6.000
# show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

# DATA STRUCTURES
# Input array and counter int

# ALGORITHM
# Initialize counter = 1
# For each int in input:
#   Counter = counter * current_int
# Counter = counter converted to floating point
# Counter = counter / length of input array
# Format output

# CODING
def show_multiplicative_average(ints)
   result = ints.inject(:*).to_f / ints.size
   puts format('=> The result is %.3f', result)
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
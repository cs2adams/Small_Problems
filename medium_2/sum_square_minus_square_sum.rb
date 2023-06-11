# sum_square_minus_square_sum.rb

# PROBLEM
# Input: An integer n
# Output: An integer
#   the square of the 1st n integers summed minus the sum of the 1st n integers squared

# EXAMPLES
# sum_square_difference(3) == 22
#    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
# sum_square_difference(10) == 2640
# sum_square_difference(1) == 0
# sum_square_difference(100) == 25164150

# DATA STRUCTURES
# Integer

# ALGORITHM
# sum = 0
# square_sum = 0
#
# for i in 1 to n
#   sum = sum + i
#   square_sum = square_sum + i ** 2
# 
# return sum ** 2 - square_sum

# CODING
def sum_square_difference(n)
  (1.upto(n).inject(:+))**2 - 1.upto(n).map{ |i| i**2 }.inject(:+)
end

puts sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
puts sum_square_difference(10) == 2640
puts sum_square_difference(1) == 0
puts sum_square_difference(100) == 25164150
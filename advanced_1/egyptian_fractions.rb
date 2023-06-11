# egyptian_fractions.rb

# "egyptian" method

# PROBLEM
# Input: A rational number
# Output: Array of denominators of the Egyptian fraction representation of the Rational


# EXAMPLES
# egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
# egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
# egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

# DATA STRUCTURE
#   - array
#   - rational #

# ALGORITHM
# current_denominator = 0
# current_num = 0
# denoms = []
#
# while current_num < num
#   current_denom +=1
#   test_num = curent_num + Rational(1, current_denom)
#   next if test_num > num
#   
#   push current_denom to denoms
#   current_num = test_num
#
# denoms

# CODING
require 'pry'
require 'pry-byebug'
def egyptian(num)
  current_denom = 0
  current_num = 0
  denoms = []

  while current_num < num
    current_denom += 1
    test_num = current_num + Rational(1, current_denom)
    next if test_num > num

    denoms << current_denom
    current_num = test_num
  end

  denoms
end

p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]


# "unegyptian" method

# PROBLEM
# Input: An array of denominators representing an egyptian fraction
# Output: The rational number represented by the Egyptian fraction

# EXAMPLES
# unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
# unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
# unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
# unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
# unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
# unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
# unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
# unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)

# DATA STRUCTURES
# Rational number

# ALGORITHM
# output = 0
#
# for each element in the array
#   output = output + Rational(1, el)
#
# return output

# CODING
def unegyptian(arr)
  arr.map { |el| Rational(1, el) }.inject(:+)
end

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)
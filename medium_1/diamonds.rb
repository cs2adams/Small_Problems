# diamonds.rb

# PROBLEM
# Input: An odd integer
# Output: Print 4-pointed diamond of asterisks and return nil

# EXAMPLES
# diamond(1)

# *

# diamond(3)

#  *
# ***
#  *

#  diamond(9)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *

# DATA STRUCTURES
# Integers to count
# Array to store output

# ALGORITHM
# midpoint = input / 2
# for i in 0 to input - 1
#   num_asterisk = input - 2 * absolute value of (i - midpoint)
#   num_spaces_each_side = (input - num_asterisk) / 2
#   print num_spaces_each_side + num_asterisk + num_spaces_each_side

# CODING
def diamond(n)
  midpoint = n / 2

  diamond_array = 0.upto(n - 1).map do |i|
    num_asterisk = n - 2 * (i - midpoint).abs
    spaces = "#{' ' * ((n - num_asterisk) / 2)}"

    "#{spaces}#{'*' * num_asterisk}#{spaces}"
  end

  puts diamond_array
end

def diamond_outline(n)
  midpoint = n / 2

  diamond_array = 0.upto(n - 1).map do |i|
    num_asterisk = n - 2 * (i - midpoint).abs

    asterisks = num_asterisk == 1 ? '*' : "*#{' ' * (num_asterisk - 2)}*"
    spaces = "#{' ' * ((n - num_asterisk) / 2)}"

    "#{spaces}#{asterisks}#{spaces}"
  end

  puts diamond_array
end

diamond(1)
diamond(3)
diamond(9)

diamond_outline(1)
diamond_outline(3)
diamond_outline(9)
# seeing_stars.rb

# PROBLEM
# Input: An odd integer n >= 7
# Output: Print an 8-pointed star in an nxn grid

# EXAMPLES
# star(7)

# *  *  *
#  * * *
#   ***
# *******
#   ***
#  * * *
# *  *  *

# star(9)

# *   *   *
#  *  *  *
#   * * *
#    ***
# *********
#    ***
#   * * *
#  *  *  *
# *   *   *

# DATA STRUCTURES
# Array

# ALGORITHM
# star = [string of n stars]
# for i in 0 to n / 2 - 1
#   current_string = star + '' * i + star, centered in n
#   push current string to start and end of star array
# print each line of star array

# CODING
def stars(n)
  star_array = ['*' * n]

  0.upto(n / 2 - 1) do |i|
    current_line = ('*' + ' ' * i + '*' + ' ' * i + '*').center(n)
    star_array.unshift(current_line) << current_line
  end

  puts star_array
end

stars(7)
stars(9)
stars(21)
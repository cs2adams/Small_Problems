# tri-angles.rb

# PROBLEM
# Input: 3 integers representing angles
# Output: symbol representing triangle type (:acute, :right, :obtuse or :invalid)

# EXAMPLES
# triangle(60, 70, 50) == :acute
# triangle(30, 90, 60) == :right
# triangle(120, 50, 10) == :obtuse
# triangle(0, 90, 90) == :invalid
# triangle(50, 50, 50) == :invalid

# DATA STRUCTURES
# Array to hold angles

# ALGORITHM
# Sort array of angles
# Return invalid if array[0] <= 0 or sum of angles != 180
# 
# if array[2] > 90
#   return :obtuse
# else if array[2] == 90
#   return :right
# else
#   return :acute

# CODING
def triangle(ang1, ang2, ang3)
  angles = [ang1, ang2, ang3].sort
  return :invalid if angles.reduce(:+) != 180 || angles[0] <= 0

  largest_angle = angles.max
  return :obtuse if largest_angle > 90
  return :right if largest_angle == 90
  :acute
end

puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid
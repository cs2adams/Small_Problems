# triangle_sides.rb

# PROBLEM:
# Input: Three integers representing lengths of sides of a triangle
# Output: Symbol representing triangle type (:equilateral, :isosceles, :scalene or :invalid)

# EXAMPLES
# triangle(3, 3, 3) == :equilateral
# triangle(3, 3, 1.5) == :isosceles
# triangle(3, 4, 5) == :scalene
# triangle(0, 3, 3) == :invalid
# triangle(3, 1, 1) == :invalid

# DATA STRUCTURES
# Array

# ALGORITM
# Make array of input integers
# Sort array
# if array[0] + array[1] < array[2]
#   return :invalid
# copy array with duplicates removed
# if copy has length of 1
#   return :equilateral
# else if copy has length of 2
#   return :isosceles
# else
#   return :scalene

# CODING
def triangle(length1, length2, length3)
  lengths = [length1, length2, length3].sort
  return :invalid if lengths[0] + lengths[1] < lengths[2] || lengths[0] <= 0

  unique_lengths = lengths.uniq
  return :scalene if unique_lengths.size == 3
  return :isosceles if unique_lengths.size == 2
  :equilateral
end

puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid
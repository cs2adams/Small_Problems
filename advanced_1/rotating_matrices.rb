# rotating_matrices.rb

# rotating_matrices.rb

# PROBLEM
# Input: A nested array representing an m x n matrix
# Output: A new array, which is the input array rotated 90 degrees clockwise

# EXAMPLES
# matrix1 = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# matrix2 = [
#   [3, 7, 4, 2],
#   [5, 1, 0, 8]
# ]

# new_matrix1 = rotate90(matrix1)
# new_matrix2 = rotate90(matrix2)
# new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

# p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
# p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
# p new_matrix3 == matrix2

# DATA STRUCTURES
# Nested array

# ALGORITHM
# num_rows = length of matrix
# num_cols = length of matrix[0]
# Initialize empty matrix new_matrix
# 
# for i in 0 to num_cols - 1
#   new_matrix[i] = empty matrix
#
#   for j in 1 to num_rows
#     insert matrix[num_rows - j][i] at start of new_matrix[i]
#
# return new_matrix

# CODING
require 'pry'
require 'pry-byebug'

def rotate90(matrix)
  num_rows = matrix.size
  num_cols = matrix.first.size
  new_matrix = []

  (0...num_cols).each do |col|
    new_matrix[col] = []

    (0...num_rows).each do |row|      
      new_matrix[col].unshift(matrix[row][col])
    end
  end

  new_matrix
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2

def rotate_degrees(matrix, degrees)
  return matrix.dup if degrees % 360 == 0
  rotate_degrees(rotate90(matrix), degrees - 90)
end

p rotate_degrees(matrix1, 0)
p rotate_degrees(matrix1, 90)
p rotate_degrees(matrix1, 180)
p rotate_degrees(matrix1, 270)
p rotate_degrees(matrix1, 360)

p rotate_degrees(matrix2, 0)
p rotate_degrees(matrix2, 90)
p rotate_degrees(matrix2, 180)
p rotate_degrees(matrix2, 270)
p rotate_degrees(matrix2, 360)
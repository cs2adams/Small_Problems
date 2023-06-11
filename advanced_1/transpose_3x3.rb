# transpose_3x3.rb

# PROBLEM
# Input: A 3 by 3 matrix in nested array format
# Output: A new nested array representing the transposed matrix

# EXAMPLES
# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# new_matrix = transpose(matrix)

# p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

# DATA STRUCTURES
# Nested array

# ALGORITHM
# Initialize new_matrix
# for i in 0 to size of input matrix - 1
#   new_matrix[i] = []
# 
#   for j in 0 to size of matrix - 1
#     new_matrix[i] << matrix[j][i]
#
# Return new_matrix

# CODING
require 'pry'
require 'pry-byebug'
def transpose(matrix)
  matrix.map.with_index do |_, i|
    row = []

    0.upto(matrix.size - 1) do |j|
      row << matrix[j][i]
    end

    row
  end
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

def transpose!(matrix)
  matrix_size = matrix.size

  (0..matrix_size - 2).each do |i|
    (i + 1..matrix_size - 1).each do |j|
      matrix[i][j], matrix[j][i] = matrix[j][i], matrix[i][j]
    end
  end

  matrix
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose!(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == new_matrix
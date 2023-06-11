# transpose_mxn.rb

# PROBLEM
# Input: A nested array representing an m x n matrix
# Output: A new nested array representing the transposed matrix

# EXAPMLES
# transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
# transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
# transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
#   [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
# transpose([[1]]) == [[1]]

# DATA STRUCTURES
# Array

# ALGORITHM
# new_matrix = []
# For i in 0 to size of input matrix[0] - 1
#   new_matrix[i] = []
#
#   For j in 0 to size of input matrix - 1
#     new_matrix[i] << matrix[j][i]
#
# return new_matrix

# CODING
def transpose(matrix)
  new_matrix = []
  num_rows = matrix.size
  num_cols = matrix[0].size

  (0..num_cols - 1).each do |col|
    new_matrix[col] = (0..num_rows - 1).map { |row| matrix[row][col]}
  end

  new_matrix
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
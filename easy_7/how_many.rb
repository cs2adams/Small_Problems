# how_many.rb

# PROBLEM
# Input: An array of strings
# Output:
#   - Print each unique word in the input on its own line,
#   - Followed by the number of times that word appears in the input
#   - Return nil

# EXAMPLES
# vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'truck',
#   'motorcycle', 'motorcycle', 'car', 'truck'
# ]

# count_occurrences(vehicles)

# Output:
# # car => 4
# # truck => 3
# # SUV => 1
# # motorcycle => 2

# DATA STRUCTURES
# Hash with keys = words, values = counts

# ALGORITHM
# Initialize empty hash
# Iterate through input array.
# For each element in array
#   - Initialize hash[element] = 0 if key does not exist
#   - hash[element] = hash[element] + 1
# For each key and value in hash:
#   Print key and value (formatted) to console

# CODING
def count_occurrences(arr)
  num_occurrences = Hash.new(0)
  arr.each { |el| num_occurrences[el.downcase] += 1 }
  num_occurrences.each { |k, v| puts "#{k} => #{v}" }
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
]

count_occurrences(vehicles)

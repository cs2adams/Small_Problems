# combine_two_lists.rb

# PROBLEM
# Input: Two arrays
# Output: New array containing all elements from both (alternating order)
# Both arrays are non-empty and same length

# EXAMPLE
# interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# DATA STRUCTURE
# A new array

# ALGORITHM
# index = 0
# While index < size of array1
#   push array1[index] to new array
#   push array2[index] to new array
#   index = index + 1
# Return new array

# CODING
def interleave(arry1, arry2)
  arry1.each_with_object([]).with_index do |(el, arry), idx|
    arry << el
    arry << arry2[idx]
  end
end

def interleave_with_zip(arry1, arry2)
  arry1.zip(arry2).flatten
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
puts interleave_with_zip([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
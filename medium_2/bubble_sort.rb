# bubble_sort.rb

# PROBLEM
# Input: An array
# Output: The same array sorted in place using the bubble sort algorithm

# EXAMPLES
# array = [5, 3]
# bubble_sort!(array)
# array == [3, 5]

# array = [6, 2, 7, 1, 4]
# bubble_sort!(array)
# array == [1, 2, 4, 6, 7]

# array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
# bubble_sort!(array)
# array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

# ALGORITHM
# keep_sorting = true
# while keep_sorting
#   keep_sorting = false
#   for idx in 0 to length of array - 2
#     if array at idx > array at idx + 1
#       swap elements in place
#       keep_sorting = true

# return sorted array

# CODING
require 'pry'
require 'pry-byebug'
def bubble_sort!(arr)
  keep_sorting = true

  loop do
    last_ind = 0

    0.upto(arr.size - 2) do |idx|
      if arr[idx] > arr[idx + 1]
        arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
        last_ind = idx + 1
      end
    end

    break if last_ind <= 1
  end

  arr
end

array = [5, 3]
bubble_sort!(array)
puts array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
puts array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
puts array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
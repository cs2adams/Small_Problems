# merge_sort.rb

# PROBLEM
# Input: An array containing a single type of data (e.g. all numbers or all strings)
# Output: Sorted array (sorted using "merge sort" algorithm)

# EXAMPLES
# merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
# merge_sort([5, 3]) == [3, 5]
# merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
# merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
# merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

[6, 2, 7, 1, 4]
[[6, 2, 7], [1, 4]]
[[[6, 2], [7]], [[1], [4]]]
[[[[6], [2]], [7]], [[1], [4]]]
[[[2, 6], [7]], [[1], [4]]]
[[2, 6, 7], [1, 4]]
[1, 2, 4, 6, 7]

# PROCEDURAL ALGORITHM
# broken down = [arr]
#
# loop
#   no_subarrs = true
  # for each element in broken down[-1]
  #   current_el = element
  #   next_el = []
  #   prev_el = nil
  #   next_breakdown = []
  #   tracker = []
  #
  #   loop
  #     next_el = current_el[0]
  #
  #     if next_el is an array
  #       prev_el = current_el
  #       curent_element = next_el
  #     else
  #       break out of loop
  #
  #   if current_el length == 1
  #     next_element << current_el
  #   else
  #     midpoint = length of current_el / 2
  #     next_breakdown << [[current_el[0 to midpoint - 1], current_el[midpoint to end]]
  #
  #   break if no_subarrs
#     

# DATA STRUCTURES
# Nested array

# ALGORITHM
# if length of array == 1
#   return array
#
# midpoint = length of array / 2
# first = array[0 to midpoint - 1]
# second = array[midpoint to end]
#
# merged = merge(merge_sort(first), merge_sort(second))
# return merged

# CODING
require 'pry'
require 'pry-byebug'
def merge(arr1, arr2)
  arr1_length = arr1.size
  arr2_length = arr2.size

  idx1 = 0
  idx2 = 0

  merged = []

  until idx1 == arr1_length|| idx2 == arr2_length
    first = arr1[idx1]
    second = arr2[idx2]

    if first < second
      merged << first
      idx1 += 1
    else
      merged << second
      idx2 += 1
    end
  end

  merged + if idx1 == arr1_length
             arr2[idx2..-1]
           else
             arr1[idx1..-1]
           end
end

def merge_sort(arr)
  arr_length = arr.size
  return arr if arr_length == 1

  midpoint = arr_length / 2
  merge(merge_sort(arr[0...midpoint]), merge_sort(arr[midpoint..-1]))
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

def breakdown(arr)
  broken_down = [arr]
  
  loop do
    next_level_breakdown = []

    broken_down[-1].each do |sub_arr|

      midpoint = sub_arr.size / 2
      next_level_breakdown << sub_arr[0...midpoint] << sub_arr[midpoint..-1]
    end

    broken_down << next_level_breakdown


  def merge_sort_procedural(arr)

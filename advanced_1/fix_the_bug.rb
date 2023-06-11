# fix_the_bug.rb

def my_method(array)
  if array.empty?
    []
  elsif array.size >= 2
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

# The program printed nil for all inputs except for an empty array
# This is because the elsif condition was not supplied
# The Ruby interpreter applied the next line (call to Array#map) as the conditional,
# which returns a truthy value, so the elsif branch was always executed when the array
# was not empty. However, the elsif branch did not contain anything except for the call
# to Array#map (which was evaluated as the conditional), so the branch returned nil.
# This can be fixed by adding a conditional array.size >= 2 to the elsif clause
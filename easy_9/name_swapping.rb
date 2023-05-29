# name_swapping.rb

# PROBLEM
# Input: String with first and last name (separated by space)
# Output: String formatted as "Last Name, First Name"

# EXAMPLES
#swap_name('Joe Roberts') == 'Roberts, Joe'

# DATA STRUCTURES
# An array to save first and last name, and an output string

# ALGORITHM
# Save name_array: with 1st and last names as separate elements
# Return new string formatted as last name, comma, first name

# CODING
def swap_name(name)
  name.split.reverse.join(', ')
end

puts swap_name('Joe Roberts') == 'Roberts, Joe'

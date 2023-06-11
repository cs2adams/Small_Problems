# matching_parentheses.rb

# PROBLEM
# Input: A string
# Output: Boolean indicating whether there is a closing bracket for each opening bracket

# EXAMPLES
# balanced?('What (is) this?') == true
# balanced?('What is) this?') == false
# balanced?('What (is this?') == false
# balanced?('((What) (is this))?') == true
# balanced?('((What)) (is this))?') == false
# balanced?('Hey!') == true
# balanced?(')Hey!(') == false
# balanced?('What ((is))) up(') == false

# DATA STRUCTURES
# Integer
# Array of input characters

# ALGORITHM
# counter = 0
# For each element in array
#   if element == '('
#     counter = counter + 1
#   else if counter == ')'
#     counter = counter -1
#   if counter < 0
#     return false
# return counter == 0

# CODING
def balanced?(str)
  parens = 0
  square_brackets = 0
  curly_brackets = 0
  single_quotes = 0
  double_quotes = 0

  str.chars.each do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    square_brackets += 1 if char == '['
    square_brackets -= 1 if char == ']'
    curly_brackets += 1 if char == '{'
    curly_brackets -= 1 if char == '}'
    single_quotes += 1 if char == "'"
    double_quotes += 1 if char == '"'
    
    return false if [parens, square_brackets, curly_brackets].any? { |char| char < 0 }
  end
  
  [parens, square_brackets, curly_brackets].none? { |num| num != 0 } &&
    [single_quotes, double_quotes].all? { |num| num.even? }
end

puts balanced?('What (is) this?') == true
puts balanced?('What is) this?') == false
puts balanced?('What (is this?') == false
puts balanced?('((What) (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('Hey!') == true
puts balanced?(')Hey!(') == false
puts balanced?('What ((is))) up(') == false
puts balanced?('{The force awakens}}')
puts balanced?('{Yep}')
puts balanced?('[the force]')
puts balanced?(']the force[]')
puts balanced?("'OK' he said")
puts balanced?("'Not 'ok'")
puts balanced?('"Yep"')
puts balanced?('"Yep "Nope"')
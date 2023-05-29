# grade_book.rb

# PROBLEM
# Input: Three integers between 0 and 100 representing percentage grades
# Output: The letter grade associated with the average of the three scores

# EXAMPLES
# get_grade(95, 90, 93) == "A"
# get_grade(50, 50, 95) == "D"

# DATA STRUCTURE
# Integers and strings

# ALGORITHM
# Compute mean of 3 grades
# If mean > 90
#   Return 'A'
# Else if mean > 80
#   Return 'B'
# Else if mean > 70
#   Return 'C'
# Else if mean > 60
#   Return 'D'
# Else
#   Return 'F'

# CODING
def get_grade(grade1, grade2, grade3)
  average_grade = (grade1 + grade2 + grade3) / 3

  if average_grade > 90
    'A'
  elsif average_grade > 80
    'B'
  elsif average_grade > 70
    'C'
  elsif average_grade > 60
    'D'
  else
    'F'
  end
end

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"

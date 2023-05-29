# welcome_stranger.rb

# PROBLEM
# Input:
#   Array containing 2 or more elements representing a person's name(s)
#   Hash containing two keys: :title and :occupation, with strings as values
# Output: Greeting string referencing person's full name, title and occupation

# EXAMPLES
# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => "Hello, John Q Doe! Nice to have a Master Plumber around."

# DATA STRUCTURES
# String

# ALGORITHM
# Print string, referencing required elements from method arguments

# CODING
def greetings(name, occupation)
  puts "Hello, #{name.join(' ')}! Nice to" \
    " have a #{occupation[:title]} #{occupation[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })

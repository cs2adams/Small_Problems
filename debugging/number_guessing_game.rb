# number_guessing_game.rb
require 'pry'
require 'pry-byebug'

def valid_integer?(string)
  string.to_i.to_s == string
end

def guess_number(max_number, max_attempts, winning_number = nil)
  return if max_attempts == 0
  winning_number = (1..max_number).to_a.sample unless winning_number

  input = nil
  until valid_integer?(input)
    print 'Make a guess: '
    input = gets.chomp
  end

  guess = input.to_i

  if guess == winning_number
    puts 'Yes! You win.'
  else
    puts 'Nope. Too small.' if guess < winning_number
    puts 'Nope. Too big.'   if guess > winning_number

    # Try again:
  guess_number(max_number, max_attempts - 1, winning_number)
  end
end

guess_number(10, 3)
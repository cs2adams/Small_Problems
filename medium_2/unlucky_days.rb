# unlucky_days.rb

# PROBLEM
# Input: Calendar year (an integer)
# Output: # of Fridays the 13th in the given year (an integer)

# EXAMPLES
# friday_13th(2015) == 3
# friday_13th(1986) == 1
# friday_13th(2019) == 2

# DATA STRUCTURES
# Integer (starting day and ending day and counter)

# ALGORITHM
# Determine starting and ending day
# num_unlucky_days = 0
# current_day = start_day
# while current_day <= last_day
#   if current_day is a friday and current_day is 13th of the month
#     num_unlucky_days = num_unlucky_days + 1
#   current_day = current_day + 1
# return num_unucky_days

# CODING
require 'date'
def friday_13th(year)
  day = Date.new(year, 1, 1)
  num_unlucky_days = 0
  
  until day.year == year + 1
    if day.friday? && day.day == 13
      num_unlucky_days += 1
    end
    day = day.next
  end
  num_unlucky_days
end

def five_fridays(year)
  num_months = 0
  current_month = 1

  while current_month <= 12
    day = Date.new(year, current_month, 1)
    num_fridays = 0

    while day.month == current_month
      num_fridays += 1 if day.friday?
      day = day.next
    end

    num_months += 1 if num_fridays >= 5
    current_month += 1
  end
  num_months
end

puts friday_13th(2015) == 3
puts friday_13th(1986) == 1
puts friday_13th(2019) == 2

1995.upto(2023) { |year| puts five_fridays(year)}
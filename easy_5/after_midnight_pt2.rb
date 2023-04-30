# after_midnight_pt2.rb

# PROBLEM
# Input: Time in 24-hr format ('HH:MM')
# output: integer representing time before or after midnight

# EXAMPLES
# after_midnight('00:00') == 0
# before_midnight('00:00') == 0
# after_midnight('12:34') == 754
# before_midnight('12:34') == 686
# after_midnight('24:00') == 0
# before_midnight('24:00') == 0

# DATA STRUCTURES
# Strings and integers to be used during data transformation

# ALGORITHM
# AFTER_MIDNIGHT
# parse input to obtain hours and minutes
# convert hours and minutes to integers
# minutes_after_midnight = hours * 60 + minutes
# subtract 1440 from minutes_after_midnight until < 1440

# AFTER_MIDNIGHT
# parse input to obtain hours and minutes
# convert hours and minutes to integers
# minutes_after_midnight = hours * 60 + minutes
# subtract 1440 from minutes_after_midnight until <= 0

# CODING
require('time')
MIN_PER_HR = 60
HR_PER_DAY = 24
MIN_PER_DAY = MIN_PER_HR * HR_PER_DAY

def after_midnight(time)
  time = Time.parse(time)
  hours = time.hour
  minutes = time.min
  minutes_after_midnight = hours * MIN_PER_HR + minutes

  minutes_after_midnight -= MIN_PER_DAY until minutes_after_midnight < MIN_PER_DAY
  minutes_after_midnight
end

def before_midnight(time)
  time = Time.parse(time)
  hours = time.hour
  minutes = time.min
  minutes_after_midnight = hours * MIN_PER_HR + minutes

  minutes_after_midnight -= MIN_PER_DAY until minutes_after_midnight <= 0
  -minutes_after_midnight
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0

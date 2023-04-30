# after_midnight.rb

# PROBLEM
# Input: Integer representing number of minutes before or after midnight
# Output: String of form hh:mm representing the input time in 24h format

# EXAMPLES
# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"

# DATA STRUCTURES
# - output string

# ALGORITHM
# set time = input
# - while time < 0 || time >= 24 * 60
#   - if time < 0
#     - time += 24 * 60
#   - else
#     - time -= 24 * 60
# 
# - num_min = time % 60
# - num_hr = (time - num_min) / 60
# output = num_hr + ':' + num_min
# if num_hr < 10
#   - prepend '0' on output
# return output

# PROBLEM 3
# Input: Integer representing # min before or after midnight Saturday night
# Output: Formatted date and time

# EXAMPLES
# date_and_time(-4231) == 'Thursday 01:29'

# DATA STRUCTURES
# Time object
# Array of days of week for

# ALGORITHM
# set MIN_PER_WEEK
# time_in_min %= MIN_PER_WEEK
# num_min = time_in_min % 60
# time_in_min -= num_min
# hr = time_in_min / 60
# day_of_week = time_in_min / 24
# day_of_week_str = days[day_of_week]
# return formatted date string


# CODING
MIN_PER_DAY = 24* 60


# def time_of_day(time_in_min)
#   # multiplier = time_in_min.abs
#   # multiplier /= time_in_min if multiplier != 0

  
#   # until time_in_min >= 0 && time_in_min < MIN_PER_DAY
#   #   time_in_min -= MIN_PER_DAY * multiplier
#   # end
#   time_in_min = time_in_min % MIN_PER_DAY

#   num_min = (time_in_min % 60)
#   num_hr = ((time_in_min - num_min) / 60).to_s
#   num_min = num_min.to_s

#   [num_min, num_hr].each { |num| num.prepend('0') if num.to_i < 10 }

#   "#{num_hr}:#{num_min}"
# end

MIN_PER_WEEK = MIN_PER_DAY * 7
DAYS_OF_WEEK =  %w(Sunday Monday Tuesday Wednesday) \
              + %w(Thursday Friday Saturday)

def time_of_day(time_in_min)
  time_in_min = time_in_min % MIN_PER_DAY
  hr, min = time_in_min.divmod(60)
  time = Time.new(0, 1, 1, hr, min)
  time.strftime('%H:%M')
end

def date_and_time(time_in_min)
  time_in_min = time_in_min % MIN_PER_WEEK
  minutes = time_in_min % 60
  hours = (time_in_min - minutes) / 60
  day = hours / 24
  hours = hours % 24

  minutes = minutes.to_s
  hours = hours.to_s
  days = DAYS_OF_WEEK[day]

  "#{days} #{format('%02d:%02d', hours, minutes)}"
end
  


# puts time_of_day(0) == "00:00"
# puts time_of_day(-3) == "23:57"
# puts time_of_day(35) == "00:35"
# puts time_of_day(-1437) == "00:03"
# puts time_of_day(3000)
# puts time_of_day(800) == "13:20"
# puts time_of_day(-4231) == "01:29"

puts date_and_time(-4231) == 'Thursday 01:29'
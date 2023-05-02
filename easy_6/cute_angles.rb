# cute_angles.rb

# PROBLEM
# Input: Float representing angle betwen 0 and 360 degrees
# Output: String of form %(deg°min'sec"))
# Minutes and seconds should have 2 digits (with leading zeroes)
# Degrees sould have 1-3 digits

# EXAMPLES
# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# DATA STRUCTURES
# Output string

# ALGORITHM
# Degrees = Input rounded down
# Minutes_float = (Input - Degrees)  * 60
# Minutes = Minutes_float rounded down
# Seconds = (Minutes_float - Minutes) * 60 rounded to nearest whole #
# Format output string and return

# CODING
DEGREE = "\xC2\xB0"

def dms(degrees_float)
  degrees_float = degrees_float % 360
  degrees = degrees_float.floor.to_i
  minutes_float = ((degrees_float - degrees) * 60) % 60
  minutes = minutes_float.floor.to_i
  seconds = (((minutes_float - minutes) * 60) % 60).round.to_i

  if seconds == 60
    minutes += 1
    seconds = 0
  end

  "#{degrees}#{DEGREE}#{sprintf('%02d',minutes)}'#{sprintf('%02d',seconds)}\""
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

puts dms(400) == %(40°00'00")
puts dms(-40) == %(320°00'00")
puts dms(-420) == %(300°00'00")
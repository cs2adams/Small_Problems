# 1000_lights.rb

# PROBLEM
# Input: Integer representing # of light switches
# Output: Array of integers representing which numbered switches are left on
# after going through and flipping every switch, then every
# other switch, then every third switch etc.

# EXAMPLES
# switch_lights(5) == [1, 4]
# switch_lights(10) == [1, 4, 9]

# DATA STRUCTURES
# Array of switches
# Hash mapping off -> On and on -> off

# ALGORITHM
# Initialize hash with mapping data
# Initialize array of switches with value = :off
#
# For i in 1 to n
#   idx = i - 1
#   while idx < length of switch array
#     flip switch at switch_array[idx]
#     idx = idx + i
# 
# Initialize empty output array
# For each element in switch_array
#   If switch is on
#     Push current index to output array
# Return output array

# CODING
SWITCH_LOGIC = { on: :off, off: :on }

def flip_switch(state)
  SWITCH_LOGIC[state]
end

def select_switches(switches, state)
  output = []
  switches.each_with_index do |current_state, idx|
    output << idx + 1 if current_state == state
  end
  output
end

def flip_switches(n)
  switches = Array.new(n, :off)
  
  switches.each_index do |i|
    j = i
    
    while j < switches.size
      switches[j] = flip_switch(switches[j])
      j += i + 1
    end

    print_current_switches(switches, i + 1)
  end

  output = []
  switches.each_with_index do |state, idx|
    output << idx + 1 if state == :on
  end
  
  output
end

def format_switch_list(switches, state)
  first = switches[0..-2]
  last = switches[-1]
  state_description = state == 'on' ? 'on' : 'now off'

  statement = ''

  if first.size > 1
    statement << first.join(', ') + ','
  else
    statement << first[0]
  end

  statement + " and #{last} are #{state_description}"
end

def print_current_switches(switches, round)
  on_switches = select_switches(switches, :on)
  off_switches = select_switches(switches, :off)
  
  if off_switches == []
    puts 'round 1: every light is turned on'
    return
  end

  start_statement = "round #{round}: lights "
  off_statement = format_switch_list(off_switches, 'off')
  on_statement = format_switch_list(on_switches, 'on')
  
  puts "#{start_statement}#{off_statement}; #{on_statement}"
end

puts flip_switches(5) == [1, 4]
puts flip_switches(10) == [1, 4, 9]
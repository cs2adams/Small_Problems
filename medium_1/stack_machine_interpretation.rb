# stack_machine_interpretation.rb

# PROBLEM
# Input: String of commands
# Output: Parse input string and print requested values

# EXAMPLES
# minilang('PRINT')
# # 0

# minilang('5 PUSH 3 MULT PRINT')
# # 15

# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8

# minilang('5 PUSH POP PRINT')
# # 5

# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7

# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6

# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12

# minilang('-3 PUSH 5 SUB PRINT')
# # 8

# minilang('6 PUSH')
# # (nothing printed; no PRINT commands)

# DATA STRUCTURES
# An array to ipmlement the stack
# An integer variable (the register)
# An array of input commands to be parsed
# Hash to hold method calls
# Commands implemented as individual methods

# ALGORITHM

# CODING
def stack_is_empty?(data)
  return false unless data[:stack] == []
  data[:errors] << 'Empty stack condition detected.'
  true
end

def n(data, num)
  data[:register] = num
end

def push(data)
  data[:stack].push(data[:register])
end

def add(data)
  return if stack_is_empty?(data)
  data[:register] += data[:stack].pop
end

def sub(data)
  return if stack_is_empty?(data)
  data[:register] -= data[:stack].pop
end

def mult(data)
  return if stack_is_empty?(data)
  data[:register] *= data[:stack].pop
end

def div(data)
  return if stack_is_empty?(data)
  data[:register] /= data[:stack].pop
end

def mod(data)
  return if stack_is_empty?(data)
  data[:register] = data[:register] % data[:stack].pop
end

def pop(data)
  return if stack_is_empty?(data)
  data[:register] = data[:stack].pop
end

def print(data)
  puts data[:register]
  true
end

def is_integer?(str)
  str.to_i.to_s == str
end

def execute(command, data)
  return n(data, command.to_i) if is_integer?(command)

  case command
  when 'PUSH'   then  push(data)
  when 'ADD'    then  add(data)
  when 'SUB'    then  sub(data)
  when 'MULT'   then  mult(data)
  when 'DIV'    then  div(data)
  when 'MOD'    then  mod(data)
  when 'POP'    then  pop(data)
  when 'PRINT'  then  print(data)
  else
    data[:errors] << 'Invalid token.'
    return
  end
end  

def parse_input(input, data)
  commands = input.split

  commands.each do |command|
    result = execute(command, data)

    if result == nil
      return data[:errors].each { |error| puts error }
    end
  end
  nil
end

def minilang(input)
  data = { register: 0, stack: [], errors: []}
  parse_input(input, data)
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)

# FURTHER EXPLORATION
minilang('3 PUSH 5 MOD PUSH 7 PUSH 4 PUSH 5 MULT PUSH 3 ADD SUB DIV PRINT')


minilang('5 PUSH ADD ADD PUSH PUSH PRINT')

minilang('5 PROD PUSH ADD PRINT')

p minilang('3 PUSH 5 MOD PUSH 7 PUSH 4 PUSH 5 MULT PUSH 3 ADD SUB DIV PRINT')
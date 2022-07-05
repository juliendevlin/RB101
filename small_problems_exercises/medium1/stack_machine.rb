def minilang(program)
  stack = []
  register = 0
  program_sequence = program.split(' ')

  program_sequence.each do |program_action|
    if program_action.to_i.to_s == program_action
      register = program_action.to_i
    elsif program_action == 'PUSH'
      stack << register
    elsif program_action == 'ADD'
      register += stack.pop
    elsif program_action == 'SUB'
      register -= stack.pop
    elsif program_action == 'MULT'
      register *= stack.pop
    elsif program_action == 'DIV'
      register /= stack.pop
    elsif program_action == 'MOD'
      register %= stack.pop
    elsif program_action == 'POP'
      register = stack.pop
    elsif program_action == 'PRINT'
      puts register
    end
  end
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

# frozen_string_literal: true

def print_in_box(message)
  border_line = "+ #{'-' * (message.length + 2)} +"
  side_line = "|#{' ' * (message.length + 2)}|"

  puts border_line
  puts side_line
  puts "| #{message} |"
  puts side_line
  puts border_line
end

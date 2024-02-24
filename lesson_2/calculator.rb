# frozen_string_literal: true

# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts("=> #{message}")
end

def valid_number?(num)
  num.to_i != 0
end

def operation_to_message(opo)
  case opo
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end
prompt(MESSAGES['welcome'])

name = ''
loop do
  name = gets.chomp

  break unless name.empty?

  prompt(MESSAGES['valid_name'])
end

prompt("Hi #{name}")

loop do
  number1 = ''
  loop do
    prompt(MESSAGES['first_number'])
    number1 = gets.chomp

    break if valid_number?(number1)

    prompt(MESSAGES['valid_number'])
  end

  number2 = ''
  loop do
    prompt(MESSAGES['second_number'])
    number2 = gets.chomp

    break if valid_number?(number2)

    prompt(MESSAGES['valid_number'])
  end

  operator_prompt = <<-MSG
  What operation would you like to perform?
  1) add
  2) subtract
  3) multiply
  4) divide
  MSG
  prompt(operator_prompt)

  operator = ''
  loop do
    operator = gets.chomp

    break if %(1 2 3 4).include?(operator)

    prompt('Must choose 1, 2, 3 or 4')
  end

  prompt("#{operation_to_message(operator)} the two numbers")

  result = case operator
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_f / number2.to_f
           end

  prompt("The answer is #{result}")

  prompt(MESSAGES['repeat_calculation'])
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thank you ')

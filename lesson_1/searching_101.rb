# frozen_string_literal: true

numbers = []

puts 'Enter the 1st number:'
number = gets.chomp.to_i
numbers.push(number)

puts 'Enter the 2nd number:'
number = gets.chomp.to_i
numbers.push(number)

puts 'Enter the 3rd number:'
number = gets.chomp.to_i
numbers.push(number)

puts 'Enter the 4th number:'
number = gets.chomp.to_i
numbers.push(number)

puts 'Enter the 5th number:'
number = gets.chomp.to_i
numbers.push(number)

puts 'Enter the last number:'
final_number = gets.chomp.to_i
numbers.push(final_number)

if numbers.include? final_number
  puts "The number #{final_number} appears in #{numbers}."
else
  puts "The number #{final_number} does not appear in #{numbers}"
end

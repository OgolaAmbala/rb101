# frozen_string_literal: true

def calculate_age(name = 'Teddy')
  puts "What is your name?"
  name = gets.chomp
  age = rand(20..200)
  puts "#{name} is #{age} years old"
end

calculate_age

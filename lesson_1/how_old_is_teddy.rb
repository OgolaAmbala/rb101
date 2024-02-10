# frozen_string_literal: true

def calculate_age(name = 'Teddy')
  age = rand(20..200)
  puts "#{name} is #{age} years old"
end

calculate_age

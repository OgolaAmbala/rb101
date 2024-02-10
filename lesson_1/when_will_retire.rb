# frozen_string_literal: true

current_date = Time.now
current_year = current_date.year

puts 'What is your age?'
current_age = gets.chomp.to_i

puts 'At what age would you like to retire?'
retirement_age = gets.chomp.to_i

years_to_retirement = retirement_age - current_age

retirement_year = current_year + years_to_retirement

puts "It's #{current_year}. You will retire in #{retirement_year}."

puts "You have only #{years_to_retirement} years of work to go!"

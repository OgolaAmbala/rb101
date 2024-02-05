# frozen_string_literal: true

puts 'What is your name?'
player_name = gets.chomp
if player_name.include?('!')
  puts "HELLO #{player_name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{player_name}"
end

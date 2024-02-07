# frozen_string_literal: true

puts 'Please write a word or multiple words'
string = gets.chomp

count = 0

string.each_char do |letter|
  count += 1 if letter != ''
end

puts "There are #{count} characters in \"#{string}\"."

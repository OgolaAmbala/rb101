# frozen_string_literal: true

SQMTRS_TO_FEET = 10.7639

puts 'Enter the length of the room in metres'
length = gets.chomp.to_f
puts 'Enter the width of the room in metres'
width = gets.chomp.to_f

puts "The area of the room is #{(length * width).round(2)} square metres (#{(length * width * SQMTRS_TO_FEET).round(2)}
square feet)"

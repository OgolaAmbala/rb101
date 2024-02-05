# frozen_string_literal: true

puts  'What is the bill?'
bill_amount = gets.chomp.to_f.round

puts 'What is the tip percentage?'
tip_percentage = gets.chomp.to_f.round

tip_amount = (bill_amount * (tip_percentage / 100)).round(2)

bill_total = (bill_amount + tip_amount).round(2)

puts "The tip is #{tip_amount}"

puts "The total bill is #{bill_total}"

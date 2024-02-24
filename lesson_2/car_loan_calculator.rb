# frozen_string_literal: true

# Create a method for a loan calculator to work out monthly payments for a car loan
# Input one is the loan amount
# Input two is the annual percentage rate (APR)
# Input three is the length of the loan
#
def prompt(message)
  puts("=> #{message}")
end

prompt('Welcome to the Car Loan Application. Find what it will cost to buy your dream car!')

prompt('=> How much would you like to borrow to buy your dream car?')
loan_amount = gets.chomp.to_i

prompt("=> Over how many months would you like to borrow #{loan_amount} for?")
loan_term = gets.chomp.to_i

prompt('What interest rate would you like to borrow at?')
annual_percentage_rate = gets.chomp.to_f
monthly_interest_rate = (annual_percentage_rate / 100) / 12

puts "Loan of GB£ #{loan_amount} for a period of #{loan_term} months at an interest rate of #{annual_percentage_rate}."

def monthly_payment(loan_amount, monthly_interest_rate, loan_term)
  numerator = loan_amount * monthly_interest_rate
  denominator = 1 - ((1 + monthly_interest_rate)**-loan_term)
  (numerator / denominator).round(2)
end
# def monthly_payment(loan_amount, monthly_interest_rate, loan_term)
#  loan_amount * (monthly_interest_rate / (1 - ((1 + monthly_interest_rate)**-loan_term))).round(2)
# end

puts "Your monthly payment will be: #{monthly_payment(loan_amount, monthly_interest_rate, loan_term)}"

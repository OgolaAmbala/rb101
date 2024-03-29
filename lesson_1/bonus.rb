# frozen_string_literal: true

def calculate_bonus(salary, bonus)
  bonus ? (salary * 0.5) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(50_000, true) == 25_000

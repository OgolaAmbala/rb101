# frozen_string_literal: true

numbers = (1..99).to_a

numbers.each do |num|
  puts num if num.odd?
end

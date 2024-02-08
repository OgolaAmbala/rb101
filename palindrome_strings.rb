# frozen_string_literal: true

def palindrome?(string)
  string.reverse == string
end

p palindrome?('madam')

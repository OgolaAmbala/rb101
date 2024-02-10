# frozen_string_literal: true

def palindrome?(string)
  string.reverse == string
end

def palindromic_number?(number)
  string_representation = number.to_s
  palindrome?(string_representation)
end

p palindromic_number?(787845)

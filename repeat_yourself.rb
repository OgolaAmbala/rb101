# Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates


def repeat(string, number)
  i = 0
  while i < number do
    puts string
    i += 1
  end
end

repeat("Hello", 3)
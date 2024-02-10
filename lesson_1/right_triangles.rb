# frozen_string_literal: true

def triangle(num)
  spaces = num - 1
  stars = 1

  x = 0

  while x < num
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
    x += 1
  end
end

triangle(7)

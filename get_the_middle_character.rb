# frozen_string_literal: true

def center_of(string)
  if (string.length % 2).zero?
    string[(string.length / 2) - 1] + string[(string.length / 2)]
  else
    string[(string.length / 2)]
  end
end

p center_of('Nairobi')
p center_of('London')



def always_negative(num)
  case
    when num > 0
      puts num * -1
    when num < 0
      puts num * -1
    else
    puts 0
  end
end

always_negative(-50)


=begin
  def negative(number)
  number > 0 ? -number : number
end
=end

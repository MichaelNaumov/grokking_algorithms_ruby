module Recursive
  def self.recursive_countdown n
    puts n
    if n == 0
      return
    else
      recursive_countdown(n - 1)
    end
  end

  def self.factorial num
    raise ArgumentError, "Argument should be > 0" if num < 0
    if num == 1
      num
    elsif num == 0
      1
    else
      num * factorial(num - 1)
    end
  end
end

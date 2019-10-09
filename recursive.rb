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
    if num == 1
      num
    else
      num * factorial(num - 1)
    end
  end
end

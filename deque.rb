class Deque
  attr_reader :items

  def initialize
    @items = []
  end

  def append(item)
    @items.push item
  end

  def append_left(item)
    @items.unshift item
  end

  def pop_left
    @items.shift
  end

  def pop
    @items.pop
  end

  def size
    @items.length
  end
end

module BinarySearch
  def self.binary_search list, item
    low = 0
    high = list.length - 1

    while low <= high
      mid = (high + low) / 2
      guess = list[mid]

      return mid if guess == item
      if guess > item
        high = mid - 1
      else
        low = mid + 1
      end
    end
  end
end

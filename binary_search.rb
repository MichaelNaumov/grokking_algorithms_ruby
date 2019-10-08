def binary_search list, item
  low = 0
  high = list.length - 1

  while low <= high
    mid = (high + low) / 2
    guess = list[mid]

    p "Position of #{item} is #{mid}" if guess == item
    if guess > item
      high = mid - 1
    else
      low = mid + 1
    end
  end
end

list = [1,3,4,5,6,7,8,9,10]
i = 3

binary_search list, i

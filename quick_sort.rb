module QuickSort
  def self.quicksort arr
    raise ArgumentError, "Argument should be an array" unless arr.kind_of?(Array)
    return arr if arr.length < 2
    pivot = arr[0]
    less = arr[1..arr.length-1].select { |i| i if i <= pivot }
    greater = arr[1..arr.length-1].select {|i| i if i > pivot }
    quicksort(less) + [pivot] + quicksort(greater)
  end
end

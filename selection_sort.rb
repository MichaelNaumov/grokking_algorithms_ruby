module SelectionSort
  def self.smallest arr
    min = arr[0]
    idx = 0
    arr.each_with_index do |val, i|
      min, idx = val, i if val < min
    end
    idx
  end

  def self.selection_sort arr
    new_arr = []
    (0..arr.length-1).each do |i|
      min = smallest arr
      new_arr.push(arr.delete_at(min))
    end
    new_arr
  end
end

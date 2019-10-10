require "rspec"
require_relative "../selection_sort"

describe SelectionSort do
  it "returns ordered array" do
    array = [7,6,5,4,2,2,1]
    ordered_array = array.sort

    expect(subject.selection_sort(array)).to eq(ordered_array)
  end
end

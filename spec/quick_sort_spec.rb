require "rspec"
require_relative "../quick_sort"

describe QuickSort do
  it "returns ordered list" do
    array = [7,6,5,4,2,2,1]

    expect(subject.quicksort(array)).to eq(array.sort)
  end

  it "raises an error if the argument is not an array" do
    expect{ subject.quicksort(1) }.to raise_error(ArgumentError)
  end
end

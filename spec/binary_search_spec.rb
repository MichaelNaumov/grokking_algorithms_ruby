require "rspec"
require_relative "../binary_search"

describe BinarySearch do
  it "returns proper position" do
    list = [1,2,3,4,5,6,7,8,9]
    guess = 8
    expect(subject.binary_search(list, guess)).to eq(7 )
  end
end

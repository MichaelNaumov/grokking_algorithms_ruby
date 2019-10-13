require "rspec"
require_relative "../recursive"

describe Recursive do
  context "factorial" do
    it "returns proper value" do
      expect(subject.factorial(3)).to eq(6)
    end

    it "returns factorial for 0" do
      expect(subject.factorial(0)).to eq(1)
    end

    it "raises an error if the argument is < 0" do
      expect{ subject.factorial(-2) }.to raise_error(ArgumentError)
    end
  end

  context "sum" do
    it "returns proper sum" do
      expect(subject.sum([1,2,3])).to eq([1,2,3].sum)
    end

    it "return 0 if the array is empty" do
      expect(subject.sum([])).to eq(0)
    end

    it "raises an error if the argument is not an array" do
      expect{ subject.sum(1) }.to raise_error(ArgumentError)
    end
  end
end

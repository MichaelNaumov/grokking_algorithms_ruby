require "rspec"
require_relative "../deque"

describe Deque do
  it "appends the deque" do
    expect(subject.append(3)).to eq([3])
  end

  it "appends an item to the left" do
    subject.append(3)
    expect(subject.append_left(6)).to eq([6,3])
  end

  describe "operations" do 
    before do
      subject.append(3)
      subject.append(6)
    end

    it "pops left item correctly" do
      expect(subject.pop_left).to eq(3)
    end

    it "pops item correctly" do
      expect(subject.pop).to eq(6)
    end

    it "returns correct size" do
      expect(subject.size).to eq(2)
    end
  end
end

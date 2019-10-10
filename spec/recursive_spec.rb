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

    it "raises erros if the argument is < 0" do
      expect{ subject.factorial(-2) }.to raise_error(ArgumentError)
    end
  end
end

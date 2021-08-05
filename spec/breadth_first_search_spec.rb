require "rspec"
require_relative "../breadth_first_search"

describe BreadthFirstSearch do
  describe "positive results" do 
    before(:each) do
      @positive_graph = {}
      @positive_graph["you"] = ["alice", "bob", "claire", "monny"]
      @positive_graph["bob"] = ["anuj", "peggy"] 
      @positive_graph["alice"] = ["peggy"]
      @positive_graph["claire"] = ["thom", "monny"] 
    end

    it "finds correct item" do
      expect(subject.search(@positive_graph, "you")).to be_truthy
    end

    it "prints out the correct item" do
      expect do
        subject.search(@positive_graph, "you")
      end.to output("monny is a seller!").to_stdout
    end
  end

  describe "negative results" do 
    before(:each) do
      @negative_graph = {}
      @negative_graph["you"] = ["alice", "bob", "claire"]
      @negative_graph["bob"] = [] 
      @negative_graph["alice"] = []
      @negative_graph["claire"] = []

    end

    it "returns false if there are no results" do
      expect(subject.search(@negative_graph, "you")).to be_falsey
    end
  end
end

require_relative "deque"

module BreadthFirstSearch
  def self.person_is_seller?(person)
    person[0] == "m"
  end

  def self.search(graph, name)
    search_queue = Deque.new
    graph[name].each do |item| 
      search_queue.append item
    end
    searched = []

    while search_queue.items.any?
      person = search_queue.pop_left

      if !searched.include? person
        if person_is_seller? person
          print person + " is a seller!"
          return true
        else
          graph[person].each do |item| 
            search_queue.append item
          end
          searched << person
        end
      end
    end
    false
  end
end

# graph = {}

# graph["you"] = ["alice", "bob", "claire"] 
# graph["bob"] = ["anuj", "peggy"] 
# graph["alice"] = ["peggy"]
# graph["claire"] = ["thom", "monny"] 
# graph["anuj"] = []
# graph["peggy"] = []
# graph["thom"] = []
# graph["monny"] = []

# BreadthFirstSearch.search(graph, "you")

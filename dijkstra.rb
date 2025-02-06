module Dijkstra
  def self.find_lowest_cost_node costs, processed
    lowest_cost = Float::INFINITY
    lowest_cost_node = nil
    costs.keys.each do |node|
      cost = costs[node]
      if cost < lowest_cost && !processed.include?(node)
        lowest_cost = cost
        lowest_cost_node = node
      end
    end
    lowest_cost_node
  end

  def self.find_path (node, graph, costs, parents, processed)
    while node != nil
      cost = costs[node]
      neighbors = graph[node]
      neighbors.keys.each do |n|
        new_cost = cost + neighbors[n]
        if costs[n] > new_cost
          costs[n] = new_cost
          parents[n] = node
        end
      end
      processed << node
      node = find_lowest_cost_node(costs, processed)
    end
  end
end

graph = { start: { a: 6, b: 2 }, a: { fin: 1 }, b: { a: 3, fin: 5 }, fin: {} }
infinity = Float::INFINITY
costs = { a: 6, b: 2, fin: infinity }
parents = { a: :start, b: :start, fin: nil }
processed = []

node = Dijkstra.find_lowest_cost_node costs, processed
Dijkstra.find_path node, graph, costs, parents, processed

puts "Costs: #{costs}"
puts "Parents: #{parents}"

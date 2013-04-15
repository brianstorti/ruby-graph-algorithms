require_relative "graph"
require_relative "node"
require_relative "edge"
require_relative "strong_components"

graph = Graph.new

graph.add_node(node1 = Node.new("Node #1"))
graph.add_node(node2 = Node.new("Node #2"))
graph.add_node(node3 = Node.new("Node #3"))
graph.add_node(node4 = Node.new("Node #4"))
graph.add_node(node5 = Node.new("Node #5"))

graph.add_edge(node1, node2)
graph.add_edge(node1, node5)
graph.add_edge(node2, node3)
graph.add_edge(node2, node4)
graph.add_edge(node3, node2)
graph.add_edge(node4, node1)

sc = StrongComponents.new(graph).connected_components
sc.each do |key, value|
  p "#{key} => #{value.map(&:to_s)}"
end

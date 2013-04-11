require_relative "graph"
require_relative "node"
require_relative "strong_components"

graph = Graph.new

graph.nodes << (node1 = Node.new("Node #1"))
graph.nodes << (node2 = Node.new("Node #2"))
graph.nodes << (node3 = Node.new("Node #3"))
graph.nodes << (node4 = Node.new("Node #4"))
graph.nodes << (node5 = Node.new("Node #5"))

graph.add_edge(node1, node2)
graph.add_edge(node1, node5)
graph.add_edge(node2, node3)
graph.add_edge(node2, node4)
graph.add_edge(node3, node2)

p StrongComponents.new(graph).connected_components[0].map(&:to_s)

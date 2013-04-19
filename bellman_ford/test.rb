require "pp"
require_relative "graph"
require_relative "node"
require_relative "edge"
require_relative "bellman_ford"

graph = Graph.new

graph.add_node(node0 = Node.new("Node #0"))
graph.add_node(node1 = Node.new("Node #1"))
graph.add_node(node2 = Node.new("Node #2"))
graph.add_node(node3 = Node.new("Node #3"))
graph.add_node(node4 = Node.new("Node #4"))

graph.add_edge(node0, node1, 1)
graph.add_edge(node0, node4, 2)
graph.add_edge(node1, node2, 4)
graph.add_edge(node2, node4, 1)
graph.add_edge(node2, node3, 20)
graph.add_edge(node3, node4, -25)

shortest_path = BellmanFord.new(graph, node0).shortest_path_to(node4)
pp shortest_path.map(&:to_s)
# => ["Node #0", "Node #1", "Node #2", "Node #3", "Node #4"]

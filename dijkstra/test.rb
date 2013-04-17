require "pp"
require_relative "graph"
require_relative "node"
require_relative "edge"
require_relative "dijkstra"

graph = Graph.new

graph.add_node(node0 = Node.new("Node #0"))
graph.add_node(node1 = Node.new("Node #1"))
graph.add_node(node2 = Node.new("Node #2"))
graph.add_node(node3 = Node.new("Node #3"))
graph.add_node(node4 = Node.new("Node #4"))
graph.add_node(node5 = Node.new("Node #5"))
graph.add_node(node6 = Node.new("Node #6"))
graph.add_node(node7 = Node.new("Node #7"))

graph.add_edge(node0, node1, 5)
graph.add_edge(node0, node4, 9)
graph.add_edge(node0, node7, 8)
graph.add_edge(node1, node2, 12)
graph.add_edge(node1, node3, 15)
graph.add_edge(node1, node7, 4)
graph.add_edge(node2, node3, 3)
graph.add_edge(node2, node6, 11)
graph.add_edge(node3, node6, 9)
graph.add_edge(node4, node5, 4)
graph.add_edge(node4, node6, 20)
graph.add_edge(node4, node7, 5)
graph.add_edge(node5, node2, 1)
graph.add_edge(node5, node6, 13)
graph.add_edge(node7, node5, 6)
graph.add_edge(node7, node2, 7)

shortest_path = Dijkstra.new(graph, node0).shortest_path_to(node3)
pp shortest_path.map(&:to_s)
# => ["Node #0", "Node #4", "Node #5", "Node #2", "Node #3"]

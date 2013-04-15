require "pp"
require_relative "graph"
require_relative "node"
require_relative "edge"
require_relative "kruskal"

graph = Graph.new

graph.add_node(node0 = Node.new("Node #0"))
graph.add_node(node1 = Node.new("Node #1"))
graph.add_node(node2 = Node.new("Node #2"))
graph.add_node(node3 = Node.new("Node #3"))
graph.add_node(node4 = Node.new("Node #4"))
graph.add_node(node5 = Node.new("Node #5"))
graph.add_node(node6 = Node.new("Node #6"))
graph.add_node(node7 = Node.new("Node #7"))

graph.add_edge(node0, node7, 16)
graph.add_edge(node2, node3, 17)
graph.add_edge(node1, node7, 19)
graph.add_edge(node0, node2, 26)
graph.add_edge(node5, node7, 28)
graph.add_edge(node1, node3, 29)
graph.add_edge(node1, node5, 32)
graph.add_edge(node2, node7, 34)
graph.add_edge(node4, node5, 35)
graph.add_edge(node1, node2, 36)
graph.add_edge(node4, node7, 37)
graph.add_edge(node0, node4, 38)
graph.add_edge(node6, node2, 40)

 pp Kruskal.new.compute_mst(graph).map(&:to_s)

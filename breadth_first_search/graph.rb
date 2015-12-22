class Graph

  # We are dealing with an undirected graph,
  # so I increment the "adjacents" in both sides.
  # The breadth first will work the same way with
  # a directed graph.
  def add_edge(node_a, node_b)
    node_a.adjacents << node_b
    node_b.adjacents << node_a
  end
end

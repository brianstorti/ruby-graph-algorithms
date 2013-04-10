class Graph
  def initialize
    @nodes = []
  end

  def add_node(node)
    @nodes << node
  end

  def add_edge(node_a, node_b)
    node_a.adjacents << node_b
    node_b.adjacents << node_a
  end
end

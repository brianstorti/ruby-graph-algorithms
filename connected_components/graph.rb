class Graph
  attr_accessor :nodes

  def initialize
    @nodes = []
  end

  def add_edge(node_a, node_b)
    node_a.adjacents << node_b
    node_b.adjacents << node_a
  end
end

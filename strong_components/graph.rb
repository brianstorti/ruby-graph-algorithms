class Graph
  attr_accessor :nodes
  attr_accessor :edges

  def initialize
    @nodes = []
    @edges = []
  end

  def add_node(node)
    nodes << node
    node.graph = self
  end

  def add_edge(from, to)
    edges << Edge.new(from, to)
  end

  def reverse!
    edges.each do |e|
      e.from, e.to = e.to, e.from
    end
  end
end

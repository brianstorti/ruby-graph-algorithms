class Node
  attr_accessor :name, :graph

  def initialize(name)
    @name = name
  end

  def adjacent_edges
    graph.edges.select{|e| e.from == self}
  end

  def to_s
    @name
  end
end

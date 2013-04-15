class Node
  attr_accessor :name, :graph

  def initialize(name)
    @name = name
  end

  def adjacents
    graph.edges.select{|e| e.from == self}.map(&:to)
  end

  def to_s
    @name
  end
end

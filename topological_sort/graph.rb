class Graph
  attr_accessor :nodes

  def initialize
    @nodes = []
  end

  def add_edge(from, to)
    from.adjacents << to
  end
end

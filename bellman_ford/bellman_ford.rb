class BellmanFord
  def initialize(graph, source_node)
    @graph = graph
    @source_node = source_node
    @path_to = {}
    @distance_to = {}

    compute_shortest_path
  end

  def shortest_path_to(node)
    path = []
    while node != @source_node
      path.unshift(node)
      node = @path_to[node]
    end

    path.unshift(@source_node)
  end

  private
  def compute_shortest_path
    update_distance_of_all_edges_to(Float::INFINITY)
    @distance_to[@source_node] = 0

    @graph.nodes.size.times do
      @graph.edges.each do |edge|
        relax(edge)
      end
    end
  end

  def update_distance_of_all_edges_to(distance)
    @graph.nodes.each do |node|
      @distance_to[node] = distance
    end
  end

  def relax(edge)
    if @distance_to[edge.to] > @distance_to[edge.from] + edge.weight
      @distance_to[edge.to] = @distance_to[edge.from] + edge.weight
      @path_to[edge.to] = edge.from
    end
  end
end

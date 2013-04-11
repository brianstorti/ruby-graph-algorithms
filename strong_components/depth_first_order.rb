class DepthFirstOrder
  attr_accessor :reverse_post

  def initialize(graph)
    @graph = graph
    @reverse_post = []
    @visited = []

    graph.nodes.each do |node|
      dfs(node) unless @visited.include?(node)
    end
  end

  private
  def dfs(node)
    @visited << node
    node.adjacents.each do |adj_node|
      dfs(adj_node) unless @visited.include?(adj_node)
    end

    @reverse_post << node
  end
end

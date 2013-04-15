class DepthFirstOrder
  attr_accessor :reverse_post_order, :visited

  def initialize(graph)
    @graph = graph
    @reverse_post_order = []
    @visited = []

    graph.nodes.each do |node|
      dfs(node) unless @visited.include?(node)
    end
    p @reverse_post_order.map(&:to_s)
  end

  private
  def dfs(node)
    @visited << node
    node.adjacents.each do |adj_node|
      dfs(adj_node) unless @visited.include?(adj_node)
    end

    @reverse_post_order << node
  end
end

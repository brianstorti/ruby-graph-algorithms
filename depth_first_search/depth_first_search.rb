class DepthFirstSearch
  def initialize(graph, source_node)
    @graph = graph
    @node = source_node
    @marked = {}
    @edge_to = {}

    dfs(source_node)
  end

  # After the depth-first search is done we can find
  # any vertice connected to "node" in constant time [O(1)]
  # and find a path to this node in linear time [O(n)].
  def path_to(node)
    return unless has_path_to?(node)
    path = []
    current_node = node

    while(current_node != @node) do
      path.unshift(current_node)
      current_node = @edge_to[current_node]
    end

    path.unshift(@node)
  end

  private
  def dfs(node)
    @marked[node] = true
    node.adjacents.each do |adj_node|
      next if @marked[adj_node]

      dfs(adj_node)
      @edge_to[adj_node] = node
    end
  end

  def has_path_to?(node)
    @marked[node]
  end
end

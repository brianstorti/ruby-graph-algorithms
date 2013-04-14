class ConnectedComponent
  attr_accessor :connected_components

  def initialize(graph)
    @graph = graph
    @visited = []
    @connected_components = {}

    counter = 0
    @graph.nodes.each do |node|
      next if @visited.include?(node)

      dfs(node, counter)
      counter += 1
    end
  end

  private
  def dfs(node, counter)
    @visited << node
    @connected_components[counter] ||= []
    @connected_components[counter] << node

    node.adjacents.each do |adj_node|
      dfs(adj_node, counter) unless @visited.include?(adj_node)
    end
  end
end

# Topological sort works only for DAGs (Directed acyclic graphs).
# The objective of this sort is do redraw the DAG so all edged
# point upwards.
class TopologicalSort
  attr_accessor :post_order

  def initialize(graph)
    @post_order = []
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

    @post_order << node
  end
end

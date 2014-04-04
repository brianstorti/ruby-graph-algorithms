require_relative "depth_first_order"

# Step 1: Run depth first in the reverse graph
# Step 2: Run depth first search again, considering the vertices
#         in the order given by the first dfs
class StrongComponents
  attr_accessor :strong_components

  def initialize(graph)
    @graph = graph
    @visited = []
    @strong_components = {}
    counter = 0

    graph.reverse!
    nodes = DepthFirstOrder.new(graph).reverse_post_order
    nodes.each do |node|
      next if @visited.include?(node)

      dfs(node, counter)
      counter += 1
    end
  end

  private
  def dfs(node, counter)
    @visited << node
    @strong_components[counter] ||= []
    @strong_components[counter] << node

    node.adjacents.each do |adj_node|
      dfs(adj_node, counter) unless @visited.include?(adj_node)
    end
  end
end

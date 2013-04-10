# Put unvisited nodes on a queue
# Solves the shortest path problem: Find path from "source" to "target"
# that uses the fewest number of edges
# It's not recursive (like depth first search)
#
# The steps are quite simple:
# * Put s into a FIFO queue and mark it as visited
# * Repeat until the queue is empty:
#   - Remove the least recently added node n
#   - add each of n's unvisited neighbors to the queue and
#     mark them as visited

class BreathFirstSearch
  def initialize(graph, source_node)
    @graph = graph
    @node = source_node
    @visited = []
    @edge_to = {}

    dfs(source_node)
  end

  def shortest_path_to(node)
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
    # Remember, in the breath first search we always
    # use a queue. In ruby we can represent both
    # queues and stacks as an Array, just by using
    # the correct methods to deal with it. In this case,
    # we use the "shift" method to remove an element
    # from the beginning of the Array.
    queue = []
    queue << node
    @visited << node

    while queue.any?
      current_node = queue.shift
      current_node.adjacents.each do |adjacent_node|
        next if @visited.include?(adjacent_node)
        queue << adjacent_node
        @visited << adjacent_node
        @edge_to[adjacent_node] = current_node
      end
    end
  end

  # If we visited the node, so there is a path
  # from our source node to it.
  def has_path_to?(node)
    @visited.include?(node)
  end
end

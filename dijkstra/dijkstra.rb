require_relative "priority_queue"

class Dijkstra
  def initialize(graph, source_node)
    @graph = graph
    @source_node = source_node
    @path_to = {}
    @distance_to = {}
    @pq = PriorityQueue.new

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
  # This method will compute the shortest path from the source node to all the
  # other nodes in the graph.
  def compute_shortest_path
    update_distance_of_all_edges_to(Float::INFINITY)
    @distance_to[@source_node] = 0

    # The prioriy queue holds a node and its distance from the source node.
    @pq.insert(@source_node, 0)
    while @pq.any?
      node = @pq.remove_min
      node.adjacent_edges.each do |adj_edge|
        relax(adj_edge)
      end
    end
  end

  def update_distance_of_all_edges_to(distance)
    @graph.nodes.each do |node|
      @distance_to[node] = distance
    end
  end

  # Edge relaxation basically means that we are checking if the shortest known
  # path to a given node is still valid (i.e. we didn't find an even
  # shorter path).
  def relax(edge)
    return if @distance_to[edge.to] <= @distance_to[edge.from] + edge.weight

    @distance_to[edge.to] = @distance_to[edge.from] + edge.weight
    @path_to[edge.to] = edge.from

    # If the node is already in this priority queue, the only that happens is
    # that its distance is decreased.
    @pq.insert(edge.to, @distance_to[edge.to])
  end
end

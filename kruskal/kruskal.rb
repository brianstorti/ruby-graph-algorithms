require_relative "union_find"

class Kruskal
  def compute_mst(graph)
    mst = []
    edges = graph.edges.sort!

    union_find = UnionFind.new(graph.nodes)
    while edges.any? && mst.size <= graph.nodes.size
      edge = edges.shift
      if !union_find.connected?(edge.node1, edge.node2)
        union_find.union(edge.node1, edge.node2)
        mst << edge
      end
    end

    mst
  end
end

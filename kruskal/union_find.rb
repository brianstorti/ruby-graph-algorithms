class UnionFind
  def initialize(nodes)
    @unions = {}
    nodes.each_with_index do |node, index|
      @unions[node] = index
    end
  end

  def connected?(node1, node2)
    @unions[node1] == @unions[node2]
  end

  def union(node1, node2)
    return if connected?(node1, node2)
    node1_id = @unions[node1]
    node2_id = @unions[node2]

    @unions.each do |node, id|
      @unions[node] = node1_id if id == node2_id
    end
  end
end

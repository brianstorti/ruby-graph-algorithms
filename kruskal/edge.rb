class Edge
  attr_accessor :node1, :node2, :weight

  def initialize(node1, node2, weight)
    @node1, @node2, @weight = node1, node2, weight
  end

  def <=>(other)
    self.weight <=> other.weight
  end

  def to_s
    "#{node1.to_s} <=> #{node2.to_s} with weight #{weight}"
  end
end

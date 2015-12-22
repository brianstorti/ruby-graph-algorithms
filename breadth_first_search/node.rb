require "set"

class Node
  attr_accessor :name, :adjacents

  def initialize(name)
    # I'm using a Set instead of an Array to
    # avoid duplications. We don't want node1
    # connected to node2 twice.
    @adjacents = Set.new
    @name = name
  end

  def to_s
    @name
  end
end

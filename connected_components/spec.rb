require 'minitest/autorun'

require_relative 'graph'
require_relative 'node'
require_relative 'connected_components'

describe ConnectedComponent do
  before do
    @node1 = Node.new("Node #1")
    @node2 = Node.new("Node #2")
    @node3 = Node.new("Node #3")
    @node4 = Node.new("Node #4")
    @node5 = Node.new("Node #5")

    @graph = Graph.new

    @graph.nodes = [@node1, @node2, @node3, @node4, @node5]
  end

  it 'finds the connected components' do
    @graph.add_edge(@node1, @node2)
    @graph.add_edge(@node3, @node4)

    connected_components = ConnectedComponent.new(@graph).connected_components.values
    connected_components.must_include [@node1, @node2]
    connected_components.must_include [@node3, @node4]
    connected_components.must_include [@node5]
  end
end

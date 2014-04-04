require 'minitest/autorun'

require_relative 'graph'
require_relative 'node'
require_relative 'edge'
require_relative 'strong_components'

describe StrongComponents do
  before do
    @graph = Graph.new

    @graph.add_node(@node1 = Node.new('Node #1'))
    @graph.add_node(@node2 = Node.new('Node #2'))
    @graph.add_node(@node3 = Node.new('Node #3'))
    @graph.add_node(@node4 = Node.new('Node #4'))
    @graph.add_node(@node5 = Node.new('Node #5'))
  end

  it 'finds the strong components in a graph' do
    @graph.add_edge(@node1, @node2)
    @graph.add_edge(@node1, @node5)
    @graph.add_edge(@node2, @node3)
    @graph.add_edge(@node2, @node4)
    @graph.add_edge(@node3, @node2)
    @graph.add_edge(@node4, @node1)

    strong_components = StrongComponents.new(@graph).strong_components.values
    strong_components.must_include [@node3, @node2, @node1, @node4]
    strong_components.must_include [@node5]
  end
end

require 'minitest/autorun'

require_relative 'graph'
require_relative 'node'
require_relative 'breath_first_search'

describe BreathFirstSearch do
  before do
    @node1 = Node.new("Node #1")
    @node2 = Node.new("Node #2")
    @node3 = Node.new("Node #3")
    @node4 = Node.new("Node #4")
    @node5 = Node.new("Node #5")
  end

  it 'finds the shortest path to a node' do
    graph = Graph.new
    graph.add_edge(@node1, @node2)
    graph.add_edge(@node2, @node3)
    graph.add_edge(@node2, @node4)
    graph.add_edge(@node4, @node5)
    graph.add_edge(@node1, @node5)

    path = BreathFirstSearch.new(graph, @node1).shortest_path_to(@node5)

    path.must_equal [@node1, @node5]
  end
end

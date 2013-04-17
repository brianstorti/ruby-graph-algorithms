# A very simple priority key implementation to help our Dijkstra algorithm
#
class PriorityQueue
  attr_accessor :queue

  def initialize
    @queue = {}
  end

  def contains?(key)
    !@queue[key].nil?
  end

  def any?
    @queue.any?
  end

  def insert(key, value)
    return if contains?(key)

    @queue[key] = value
    order_queue
  end

  def remove_min
    @queue.shift.first
  end

  def decrease_key(key, value)
    @queue[key] = value
    order_queue
  end

  private
  def order_queue
    @queue.sort_by {|_key, value| value }
  end
end

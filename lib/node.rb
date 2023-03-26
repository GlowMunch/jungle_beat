class Node 
  attr_accessor :data, :next_node

  def initialize(data, nxt = nil)
    @data = data
    @next_node = nxt
  end
end
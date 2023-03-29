class Node 
  attr_accessor :data, :next_node

  def initialize(data, nxt = nil)
    @data = data
    @next_node = nxt
  end
end

#Suggested code, dont understand. 
  # def data=(datas)
  #   @data = datas
  # end

  # def next_node=(node)
  #   @next_node = node
  # end
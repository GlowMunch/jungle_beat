class LinkedList
  attr_accessor :head, :append#, :count

  def initialize 
    @head = nil
  end

  def append(sound)
    if head == nil
      @head = Node.new(sound, nil)
    else
      last_node = @head
      while last_node.next_node != nil
        last_node = last_node.next_node
      end
        last_node.next_node = Node.new(sound, nil)
    end
  end
  
  # def count
  #   count = 0
  #   current_node = @head
  #   while current_node.next_node != nil
  #     current_node = current_node.next_node
  #     count += 1
  #   end
  #     count += 1
  # end
end



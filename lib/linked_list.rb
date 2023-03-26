class LinkedList
  attr_accessor :head, :append, :count

  def initialize(head = nil)
    @head = head
  end

  def append(sound)
    if head == nil
      @head = Node.new(sound)
    else
      while head != nil
        head = @head.next_node
      end
        @head.next_node = Node.new(sound, nil)
    end
  end
  
  def count
    count = 0
    current_node = @head
    while current_node.next_node != nil
      current_node = current_node.next_node
      count += 1
    end
      count += 1
  end
end



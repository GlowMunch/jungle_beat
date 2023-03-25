class LinkedList

  attr_reader :head
  def initialize(head = nil)
    @head = head
    #@head = Node.new(nil, nil)
  end

  def append(sound)
      head = Node.new(sound, nil)
    while head.next_node != nil
      head = node.next_node
    end
      head.next_node = Node.new(sound, nil)
    end
  end

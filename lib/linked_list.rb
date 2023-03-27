class LinkedList
  attr_accessor :head, :append, :count, :to_string, :prepend

  def initialize 
    @head = nil
  end
  
#what is the diff between list.head and @head in pry

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
  
  def count
    count = 0
    current_node = @head
    while current_node.next_node != nil
      current_node = current_node.next_node
      count += 1
    end
      count += 1
  end

  def to_string
    string = ""
    current_node = @head
    while current_node != nil
      string << current_node.data + " "
      current_node = current_node.next_node
    end
      string.chomp(" ")
  end

  def prepend(data)
    if head != nil
      old_head = head
      @head = Node.new(data, nil)
      head.next_node = old_head
    else head == nil
      @head = Node.new(data, nil)
    end
  end

  def insert(data)
    
  end

end



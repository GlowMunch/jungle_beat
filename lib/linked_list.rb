class LinkedList
  attr_accessor :head, #:append, :count, :to_string, :prepend, :insert
  def initialize (head = nil)
    @head = head
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

  def insert(location, data)
    pos = 0
    current_node = @head
    while pos != location
      current_next_node = current_node
      current_node = current_node.next_node
      pos += 1
    end
      insert_node = Node.new(data, current_node)
      current_next_node.next_node = insert_node
  end

  def find(index, qty)
    pos = 0
    returns = 0
    found = ""
    current_node = @head
    while pos != index
      current_node = current_node.next_node
      pos += 1
    end
    while returns != qty
      found << current_node.data + " "
      returns += 1
      current_node = current_node.next_node
    end
      found.chomp(" ")
  end
  
  def includes?(check)
    current_node = @head
    while (current_node.data != check) && (current_node.next_node != nil)
      current_node = current_node.next_node
    end
    if current_node.data == check
      true
    else
      false
    end
  end

  def pop
    current_node = @head
    while current_node.next_node != nil
      new_last_node = current_node
      current_node = current_node.next_node
    end
      new_last_node.next_node = nil
  end

end

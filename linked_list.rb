class Node
  attr_accessor :content, :next_node

  def initialize(content, next_node = nil)
    @content = content
    @next_node = next_node
  end

end

class List
  attr_accessor :head

  def initialize(head)
    @head = head
  end

  def add_node(value)
    current_node = @head
    while current_node.next_node != nil
      current_node = current_node.next_node
    end
    current_node.next_node = Node.new(value,nil)
  end

  def remove_node(value)
    current_node = @head
    if current_node.content == value
      @head = current_node.next_node
    else
      while current_node != nil && current_node.next_node != nil && current_node.next_node.content != value
        current_node = current_node.next_node
      end
    end
    if current_node != nil && current_node.next_node != nil
      current_node.next_node = current_node.next_node.next_node
    end
  end

  def display
    current_node = @head
    while current_node.next_node != nil
      p current_node.content
      current_node = current_node.next_node
    end
      p current_node.content
  end

  def size
    current_node = @head
    length = 1
    if current_node.content == nil
      return length - 1
    else
      while current_node.next_node != nil
        length +=1
        current_node = current_node.next_node
      end
      return length
    end
  end

end

node_1 = Node.new(1)
list = List.new(node_1)
list.add_node(2)
list.add_node(3)
list.add_node(4)
list.display
list.remove_node(2)
list.display
p node_1.next_node

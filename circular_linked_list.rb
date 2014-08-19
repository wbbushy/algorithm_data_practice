class Node
  attr_accessor :content, :next_node, :prev_node

  def initialize(content, next_node = nil)
    @content = content
    @next_node = next_node
  end

end

class CircularLinkedList
  attr_accessor :head

  def initialize(head, tail = nil)
    @head = head
    @tail = tail
  end

  def add_after_value(value, content)
    current_node = @head
    until current_node.content == value
      current_node = current_node.next_node
    end
    new_node = Node.new(content)
    new_node.next_node = current_node.next_node
    current_node.next_node = new_node
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

end

node_1 = Node.new(1)
list = CircularLinkedList.new(node_1)
list.add_after_value(1, 2)
list.add_after_value(2, 3)
p list.head.content == 1
p list.head.next_node.content == 2
p list.head.next_node.next_node.content == 3

class Node

  def initialize(content, next_node = nil)
    @content = content
    @next_node = next_node
  end

end

class CircularLinkedList

  def initialize(head, tail = nil)
    @head = head
    @tail = tail
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

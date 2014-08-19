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

end

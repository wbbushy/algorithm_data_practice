class Node
  attr_accessor :content, :next_node, :prev_node

  def initialize(content, next_node = nil, prev_node = nil)
    @content = content
    @next_node = next_node
    @prev_node = prev_node
  end
end


class DoubleLinkedList
  attr_accessor :head

  def initialize(head)
    @head = head
  end
end

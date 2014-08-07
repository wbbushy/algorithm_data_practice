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

  def add_node

  end

  def remove_node

  end

  def get

  end

  def size

  end

end

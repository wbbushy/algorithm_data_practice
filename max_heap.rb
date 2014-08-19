class Node

  def initialize(value, parent = nil, child = nil)
    @value = value
    @parent = parent
    @child = child
  end

end

class MaxHeap

  def initialize(head)
    @head = head
  end

end

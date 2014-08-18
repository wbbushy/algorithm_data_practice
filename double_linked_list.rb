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

  def add_node(value)
    current_node = @head
    while current_node.next_node != nil
      current_node = current_node.next_node
    end
    current_node.next_node = Node.new(value)
    current_node.next_node.prev_node = current_node
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
      current_node.next_node.prev_node = current_node
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

  def add_after_value(value, content)
    current_node = @head
    until current_node.content == value && current_node.next_node != nil
      current_node = current_node.next_node
    end
    new_node = Node.new(content)
    new_node.prev_node = current_node
    new_node.next_node = current_node.next_node
    current_node.next_node.prev_node = new_node
    current_node.next_node = new_node
  end

  def add_before_value(value, content)
    current_node = @head
    until current_node.content == value && current_node.next_node != nil
      current_node = current_node.next_node
    end
    new_node = Node.new(content)
    new_node.next_node = current_node
    new_node.prev_node = current_node.prev_node
    current_node.prev_node.next_node = new_node
    current_node.prev_node = new_node
  end

end

node_1 = Node.new(1)
double_linked_list = DoubleLinkedList.new(node_1)
double_linked_list.add_node(2)
double_linked_list.add_node(3)
double_linked_list.add_node(4)
double_linked_list.display
p double_linked_list.head.next_node.next_node.next_node.prev_node.content == 3
p double_linked_list.head.next_node.next_node.next_node.prev_node.prev_node.content == 2
double_linked_list.remove_node(3)
p double_linked_list.head.next_node.next_node.content == 4
p double_linked_list.head.next_node.next_node.prev_node.content == 2
p double_linked_list.head.next_node.next_node.prev_node.prev_node.content == 1
double_linked_list.add_after_value(2, 3)
p "------------------------------"
double_linked_list.display
p double_linked_list.head.next_node.next_node.next_node.content == 4
p double_linked_list.head.next_node.next_node.next_node.prev_node.prev_node.prev_node.content == 1
p "-------------------------------"
double_linked_list.remove_node(2)
double_linked_list.display
double_linked_list.add_before_value(3, 2)
double_linked_list.display
p double_linked_list.head.next_node.next_node.next_node.content == 4
p double_linked_list.head.next_node.next_node.next_node.prev_node.prev_node.prev_node.content == 1












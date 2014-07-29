#Original Stack Class

# class Stack

#   def initialize
#     @store = []
#   end

#   def push(x)
#     @store.push(x)
#   end

#   def pop
#     raise "Alert - Stack is Empty" if self.empty?
#     @store.pop
#   end

#   def peek
#     @store.last
#   end

#   def empty?
#     @store.empty?
#   end

# end

#Queue Stack

class Stack

  def initialize
    @store = []
  end

  def enqueue(x)
    @store.push(x)
  end

  def dequeue
    raise "Alert - Stack is Empty" if self.empty?
    @store.shift
  end

  def peek
    @store.first
  end

  def empty?
    @store.empty?
  end

end

new_queue = Stack.new

new_queue.enqueue("a")
new_queue.enqueue("b")
new_queue.enqueue("c")
p new_queue.peek == "a"
new_queue.dequeue
p new_queue.peek == "b"

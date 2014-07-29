class Stack

  def initialize
    @store = []
  end

  def push(x)
    @store.push(x)
  end

  def pop
    raise "Alert - Stack is Empty" if self.empty?
    @store.pop
  end

  def peek
    @store.last
  end

  def empty?
    @store.empty?
  end

end

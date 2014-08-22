class MaxBinaryHeap

  def initialize
    @heap = []
  end

  # takes a value and moves it up the heap by continually swapping it with its
  # parent so long as its value is more than its parent's value
  def sift_up(index)
    parent = (index - 1) / 2
    if parent >= 0 and @heap[parent] < @heap[index]
      @heap[parent], @heap[index] = @heap[index], @heap[parent]
      sift_up(parent)
    end
  end

  # take a value and move it down the heap by recursively swapping it with
  # the larger of the two children if the value is less than both of the
  # childrens' values
  def sift_down(index)
    child = (i * 2) + 1
    return if child >= @heap.length
    child += 1 if child + 1 < @heap.length and @heap[child] > @heap[child+1]
    if @heap[index] > @heap[child]
      @heap[child], @heap[index] = @heap[index], @heap[child]
      sift_down(child)
    end
  end


  def heapify(data_array)
    data_array.each do |element|
      @heap << element
      sift_up(@heap.length - 1)
    end
  end
end

data = [100, 2, 7, 17 ,3 ,25, 1, 36, 19]
new_heap = MaxBinaryHeap.new
new_heap.heapify(data)
p new_heap


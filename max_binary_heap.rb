class MaxBinaryHeap

  def initialize
    @heap = []
  end

  # takes a value and moves it up the heap by continually swapping it with its
  # parent so long as its value is more than its parent's value
  def sift_up(index)
    while index != 0
      parent = (index - 1) / 2
      if @heap[parent] < @heap[index]
        swap(index, parent)
      end
      index = parent
    end
  end

  # take a value and move it down the heap by recursively swapping it with
  # the larger of the two children if the value is less than both of the
  # childrens' values
  def sift_down(index)
    while true
      left = (2 * index) + 1
      right = (2 * index) + 2
      child = compare(left, right) ? left : right
      if !compare(index, child)
        swap!(index, child)
        index = child
      else
        break
      end
    end
  end

end

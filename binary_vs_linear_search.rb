def linear_search(array, target)
  index = 0
  until array[index] == target || array[index] == nil
    index += 1
  end
  return arr[index] == nil ? "nil" : index
end

def binary_search(array, target)
  low = 0
  high = array.length - 1
  i = 0
  until low > high
    i = (low + high)/2
    if array[i] > target
      high = i - 1
    elsif array[i] < target
      low = i + 1
    else
      return i
    end
  end
  return -1
end


test_array = (100..200).to_a
puts binary_search(test_array, 135) == 35

test_array = [13, 19, 24, 29, 32, 37, 43]
puts binary_search(test_array, 35) == -1



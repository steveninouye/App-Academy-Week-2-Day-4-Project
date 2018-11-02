def max_windowed_range(array, window_size)
  max_range = 0
  array.each_with_index do |el, idx|
    next if idx + window_size > array.length
    sub_arr = array[idx...idx + window_size].sort
    range = sub_arr.last - sub_arr.first
    max_range = range if range > max_range
  end
  max_range
end

# def window(arr, win_siz)
#   result = 0
#   min = {:idx => 0 , :val => 0}
#   max = {:idx => 0 , :val => 0}
#   i = 0
#   while i + win_siz < arr.length
#     if arr[i] < min[:val] || min[:idx] + win_siz == i
#       min[:idx] = i
#       min[:val] = arr[i]
#     end
#     if arr[i] > max[:val] || max[:idx] + win_siz == i
#       max[:idx] = i
#       max[:val] = arr[i]
#     end
#     cache = max[:val] - min[:val]
#     result = cache if cache > result
#     i += 1
#   end
#   result
# end

#[1,2,3,4,5,56], 3

class MyQueue
  def initialize
    @store = stack
  end

  def peek
    @store[0]
  end

  def size
    @store.length
  end

  def empty?
    @store.empty?
  end

  def enqueue(el)
    @store << el
  end

  def dequeue
    @store.shift
  end
end

class MyStack
  def initialize
    @store = []
  end

  def peek
    @store.last
  end

  def size
    @store.length
  end

  def empty?
    @store.empty?
  end

  def pop
    @store.pop
  end

  def push(el)
    @store.push(el)
  end
end


class StackQueue

  attr_reader :max, :min

  def initialize(array, window_size)
    @in_stack = MyStack.new
    @out_stack = MyStack.new
  end

  def size
    @array.length
  end

  def empty?
    @array.empty?
  end

  def enqueue(el)
    @in_stack.push(el)
  end

  def dequeue
    @out_stack.pop
  end
end

#StackQueue



p window([1, 0, 2, 5, 4, 8], 2)

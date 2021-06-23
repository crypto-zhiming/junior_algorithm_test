class MyHeap
  attr_accessor :pq, :length

  def initialize
    @length = 0
    @pq = Array.new
  end

  def push(value)
    @length += 1
    @pq[@length] = value
    swim(@length)
  end

  def pop
    rtn = @pq[1]
    @pq[1], @pq[@length] = @pq[@length], nil
    @length -= 1
    sink(1)
    rtn
  end

  def empty?
    0 == @length
  end

  private

  def swim(index)
    while index > 1 && @pq[index] < @pq[index / 2]
      exch(index, index / 2)
      index /= 2
    end
  end

  def sink(index)
    while index * 2 <= @length
      left, right = index * 2, index * 2 + 1
      child = left  
      child = right if @pq[right] != nil && @pq[right] < @pq[left]
      break if @pq[index] <= @pq[child]
      exch(index, child)
      index = child
    end
  end

  def exch(i, j)
    @pq[i], @pq[j] = @pq[j], @pq[i]
  end 
end

my_heap = MyHeap.new
(0...5).to_a.reverse.each { |num| my_heap.push(num) }

(5...10).to_a.each do |num|
  my_heap.push(num)
  puts my_heap.pop
end

while !my_heap.empty?
  puts my_heap.pop
end

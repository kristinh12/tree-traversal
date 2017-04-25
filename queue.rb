class Queue
  attr_accessor :queue
  
  def initialize
    @queue = []
  end

  def enqueue(item)
    @queue.push(item)
  end

  def dequeue
    @queue.shift
  end

  def empty?
    @queue == []
  end
end
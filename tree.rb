require_relative 'queue.rb'

class Tree
  attr_accessor :payload, :children

  def initialize(payload, children)
    @payload = payload
    @children = children
  end

  def depthSearch(value)
    return self if @payload == value

    @children.each do |child|
      var = child.depthSearch(value)
      return var if var != nil
    end

    return nil
  end

  def breadthSearch(value)
    queue = Queue.new
    queue.enqueue(self)
    
    # Starts to remove "children" from the queue.
    # When removed, it adds any of that node's children to the queue.
    until queue.empty?
      node = queue.dequeue
      return node if node.payload == value
      node.children.each do |child|
        queue.enqueue(child)
      end
    end

    return nil
    end

end

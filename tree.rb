require_relative 'queue.rb'

class Tree
  attr_accessor :payload, :children

  def initialize(payload, children)
    @payload = payload
    @children = children
  end

end



def depthSearch(tree, value)
  return tree if tree.payload == value

  tree.children.each do |child|
    var = depthSearch(child, value)
    return var if var != nil
  end

  return nil
end


def breadthSearch(tree, value)
  return tree if tree.payload == value
  queue = Queue.new

  tree.children.each do |child|
    queue.enqueue(child)
  end

  until queue == nil
    node = queue.dequeue
    return node if node.payload == value
    node.children.each do |child|
      queue.enqueue(child)
    end
  end
  
end

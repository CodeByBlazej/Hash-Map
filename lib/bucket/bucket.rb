require_relative "node"

class Bucket 
  attr_accessor :index, :head, :tail

  def initialize(index)
    @index = index
    @head = nil
    @tail = nil
  end

  def add_node(key, value)
    if @head.nil?
      @head = Node.new(key, value)
    else
      current_node = @head
      new_node = Node.new(key, value)

      while current_node.next_node != nil
        current_node = current_node.next_node
      end
      current_node.next_node = new_node
    end
  end

  def to_s
    arr = [@key, @value]
    p arr
  end
end
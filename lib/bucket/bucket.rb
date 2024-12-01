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

      while current_node.next_node != nil || current_node.key == key
        if current_node.key == key
          current_node.value = value
          return
        end
        current_node = current_node.next_node
      end
      current_node.next_node = new_node
    end
  end

  def get_node(key)
    current_node = @head
    
    while current_node
      if current_node.key == key
        puts current_node.value
        return
      end
      current_node = current_node.next_node
    end

    puts 'nil'
  end

  def has_node?(key)
    current_node = @head
    check = false

    while current_node
      if current_node.key == key
        check = true
      end
      current_node = current_node.next_node
    end
    
    puts check
  end

  def to_s
    arr = [@key, @value]
    p arr
  end
end
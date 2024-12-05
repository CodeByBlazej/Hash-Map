require_relative "node_for_hashset"

class Bucket
  attr_accessor :index, :head, :tail

  def initialize(index)
    @index = index
    @head = nil
    @tail = nil
  end

  def add_node(key)
    if @head.nil?
      @head = Node.new(key)
    else
      current_node = @head
      new_node = Node.new(key)

      while current_node.next_node != nil
        if current_node.key == key
          current_node.key = key
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
        puts current_node.key
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

  def remove(key)
    current_node = @head
    previous_node = nil

    while current_node
      if current_node.key == key && current_node = @head
        puts current_node.key
        @head = current_node.next_node
        return
      elsif current_node.key == key
        puts current_node.key
        previous_node.next_node = current_node.next_node
        return
      end
      previous_node = current_node
      current_node = current_node.next_node
    end
    
    puts 'nil'
  end

  def to_s
    arr = [@key]
    p arr
  end
end
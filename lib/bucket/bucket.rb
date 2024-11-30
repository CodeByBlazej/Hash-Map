class Bucket 
  attr_accessor :index, :key, :value, :head, :next_node

  def initialize(index, key, value)
    @index = index
    @key = key
    @value = value
    @head = nil
    @next_node = nil
  end

  def to_s
    arr = [@key, @value]
    puts arr
  end
end
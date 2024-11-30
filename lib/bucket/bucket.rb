require_relative "node"

class Bucket 
  attr_accessor :index, :head, :tail

  def initialize(index)
    @index = index
    @head = nil
    @tail = nil
  end

  def to_s
    arr = [@key, @value]
    puts arr
  end
end
class Node
  attr_accessor :key, value
  
  def initialize(key, value)
    @next_node = nil
    @key = key
    @value = value
  end
end
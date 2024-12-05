class Node
  attr_accessor :key, :next_node

  def initialize(key)
    @next_node = nil
    @key = key
  end

  def to_s
    displayed_value = [key]
    puts displayed_value
  end
end
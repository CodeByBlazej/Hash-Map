class Node
  attr_accessor :key, :value

  def initialize(key, value)
    @next_node = nil
    @key = key
    @value = value
  end

  def to_s
    displayed_value = [key, value]
    puts displayed_value
  end
end
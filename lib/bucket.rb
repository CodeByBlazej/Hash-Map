class Bucket 
  attr_accessor :index, :key, :value

  def initialize(index, key, value)
    @index = index
    @key = key
    @value = value
  end

  def to_s
    arr = [@key, @value]
    puts arr
  end
end
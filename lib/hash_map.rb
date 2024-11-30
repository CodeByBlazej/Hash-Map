require_relative "bucket/bucket"
require_relative "bucket/node"
require "pry-byebug"

class HashMap
  attr_accessor :load_factor, :capacity, :hash_code
  
  def initialize(load_factor)
    @load_factor = load_factor
    @capacity = 16
    @buckets = []
    @hash_code = nil
  end

  def hash(key)
    hash_code = 0
    prime_number = 31

    key.each_char { |char| hash_code = prime_number * hash_code + char.ord }

    @hash_code = hash_code % @capacity
    # hash_code = @hash_code
  end

  def set(key, value)
    @hash_code = hash(key)
    index = @hash_code
    # raise IndexError if index.negative? || index >= @buckets.length
    # binding.pry
    current_bucket = @buckets[index]

    if current_bucket != nil
      current_bucket.add_node(key, value)
    end

    new_bucket = Bucket.new(index)
    new_bucket.add_node(key, value)
    @buckets[index] = new_bucket
  end

  def to_s
    p @buckets
  
  end
end
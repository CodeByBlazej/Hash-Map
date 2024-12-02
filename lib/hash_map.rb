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

    hash_code % @capacity
  end

  def set(key, value)
    index = hash(key)
    # raise IndexError if index.negative? || index >= @buckets.length
    # binding.pry
    current_bucket = @buckets[index]

    if current_bucket != nil
      current_bucket.add_node(key, value)
    else
      new_bucket = Bucket.new(index)
      new_bucket.add_node(key, value)
      @buckets[index] = new_bucket
    end
  end

  def get(key)
    index = hash(key)
    bucket = @buckets[index]
    return bucket.get_node(key) if bucket != nil
    puts 'nil'
  end

  def has?(key)
    index = hash(key)
    bucket = @buckets[index]
    return bucket.has_node?(key) if bucket != nil
    puts false
  end

  def remove(key)
    index = hash(key)
    bucket = @buckets[index]

    if bucket.nil?
      puts 'nil'
      return
    end

    if bucket != nil && bucket.head.key.nil?
      puts 'nil'
      @buckets[index] = nil
      return
    end
    
    if bucket.head.key != key
      return bucket.remove(key)
    end

    if bucket.head.key == key && bucket.head.next_node.nil?
      puts bucket.head.value
      @buckets[index] = nil
      return
    end

    bucket.remove(key)
  end

  def length
    counter = 0
    @buckets.each { |bucket| bucket != nil ? counter += 1 : counter += 0 }
    puts counter
  end

  def clear
    @buckets = []
  end

  def keys
    keys = []

    @buckets.each do |bucket|
      if bucket != nil
        current_node = bucket.head

        while current_node != nil
          keys << current_node.key
          current_node = current_node.next_node
        end 
      end
    end

    puts keys.inspect
  end

  def to_s
    p @buckets
  
  end
end
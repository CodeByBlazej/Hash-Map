require_relative "bucket_for_hashset/bucket_for_hashset"
require_relative "bucket_for_hashset/node_for_hashset"

class HashSet
  attr_accessor :load_factor, :capacity, :hash_code

  def initialize(capacity, load_factor)
    @load_factor = load_factor
    @buckets = Array.new(capacity)
    @hash_code = nil
  end

  def hash(key)
    hash_code = 0
    prime_number = 31

    key.each_char { |char| hash_code = prime_number * hash_code + char.ord }

    hash_code % @buckets.size
  end

  def set(key)
    resize if length / @buckets.size.to_f > @load_factor

    index = hash(key)
    current_bucket = @buckets[index]

    if current_bucket != nil
      current_bucket.add_node(key)
    else
      new_bucket = Bucket.new(index)
      new_bucket.add_node(key)
      @buckets[index] = new_bucket
    end
  end

  def resize
    new_capacity = @buckets.size * 2
    new_buckets = Array.new(new_capacity)

    @buckets.each do |bucket|
      next unless bucket

      current_node = bucket.head
      while current_node
        new_index = hash(current_node.key)
        new_bucket = new_buckets[new_index] || Bucket.new(new_index)
        new_bucket.add_node(current_node.key)
        new_buckets[new_index] = new_bucket
        current_node = current_node.next_node
      end
    end

    @buckets = new_buckets
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
      puts bucket.head.key
      @buckets[index] = nil
      return
    end

    bucket.remove(key)
  end

  def length
    counter = 0
    @buckets.each { |bucket| bucket != nil ? counter += 1 : counter += 0 }
    puts counter
    counter
  end

  def clear
    @buckets = Array.new(@buckets.size)
  end

  def keys
    keys = []

    @buckets.each do |bucket|
      next unless bucket
      current_node = bucket.head

      while current_node != nil
        keys << current_node.key
        current_node = current_node.next_node
      end 
    end

    puts keys.inspect
  end

  def entries
    keys = []

    @buckets.each do |bucket|
      next unless bucket
      current_node = bucket.head

      while current_node != nil
        keys << [current_node.key] 
        current_node = current_node.next_node
      end
    end

    puts keys.inspect
  end

  def to_s
    p @buckets
  
  end
end
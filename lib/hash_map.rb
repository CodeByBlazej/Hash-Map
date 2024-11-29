class HashMap
  attr_accessor :load_factor, :capacity
  
  def initialize(load_factor, capacity)
    @load_factor = load_factor
    @capacity = capacity
    @buckets = []
  end

  def hash(key)
    hash_code = 0
    prime_number = 31

    key.each_char { |char| hash_code = prime_number * hash_code + char.ord }

    hash_code
  end

  def set(key, value)
    hash_code = hash(key)
    index = hash_code
    new_bucket = Bucket.new(index, key, value)

    if @buckets[index] != nil
      @buckets[index] = new_bucket
    end

    @buckets[index] = new_bucket
  end
end
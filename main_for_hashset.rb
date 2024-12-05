require_relative "lib/hash_set"

test = HashSet.new(16, 0.75)

test.set('apple')

puts test
test.capacity
test.length
test.keys
test.entries
test.get('apple')
test.get('banana')
test.has?('apple')
test.has?('banana')

test.remove('apple')
test.set('elephant')
puts test
test.clear
puts test



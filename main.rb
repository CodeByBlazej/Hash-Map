require_relative "lib/hash_map"

test = HashMap.new(0.75)

test.set('apple', 'red')
test.set('banana', 'yellow')
test.set('apple', 'orange')

puts test

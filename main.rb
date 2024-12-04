require_relative "lib/hash_map"

test = HashMap.new(16, 0.75)

test.set('apple', 'red')
test.set('apple', 'pink')

test.set('banana', 'yellow')
test.set('carrot', 'orange')
test.set('dog', 'brown')
test.set('elephant', 'gray')
test.set('frog', 'green')
test.set('grape', 'purple')
test.set('hat', 'black')
test.set('ice cream', 'white')
test.set('jacket', 'blue')
test.set('kite', 'pink')
test.set('lion', 'golden')
test.set('moon', 'silver')

puts test.capacity

test.length
test.keys
test.values
test.entries

test.get('banana')
test.has?('watermelon')

test.remove('elephant')
# puts test
test.remove('bananaaaa')

test.keys
test.values
test.entries

test.length

test.remove('appleeesdsda')
# puts test

test.clear
test.length
puts test

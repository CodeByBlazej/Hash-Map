require_relative "lib/hash_map"

test = HashMap.new(0.75)

test.set('apple', 'red')
test.set('banana', 'yellow')
test.set('apple', 'orange')
test.set('apple', 'black')
test.set('Carlos', 'im the old value')
test.set('watermelon', 'im the new value')
test.length

test.get('banana')
test.has?('watermelon')


puts test
test.remove('Carlos')
test.remove('apple')
test.remove('watermelon')
test.remove('bananaaaa')
# test.remove('banana')


test.length


test.remove('appleeesdsda')
puts test

test.clear
test.length
puts test

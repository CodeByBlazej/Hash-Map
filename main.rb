require_relative "lib/hash_map"

test = HashMap.new(0.75)

test.set('apple', 'red')
test.set('banana', 'yellow')
test.set('apple', 'orange')
test.set('apple', 'black')
test.set('Carlos', 'im the old value')
test.set('watermelon', 'im the new value')
test.set('m', 'mes')
test.set('h', 'mejhk')
test.set('n', 'mjhke')
test.set('k', 'khjme')
test.set('l', '[me')
test.set('p', 'ime')
test.set('w', 'yme')
test.set('q', 'weme')
test.set('s', 'sme')
test.set('d', 'sadme')
test.set('x', 'sadme')
test.set('yy', 'sadme')
test.set('yiwioqweoy', 'sadme')
test.set('yzxcy', 'sadme')
test.set('yysad', 'sadme')
test.set('yasdasday', 'sadme')
test.set('xczvbyy', 'sadme')
test.set('aayy', 'sadme')
test.set('POyy', 'sadme')
test.set('GHyy', 'sadme')
test.set('GHASDyy', 'sadme')
test.set('GHASDREyy', 'sadme')
test.set('GMNBHyy', 'sadme')
test.set('WGHyy', 'sadme')
test.set('GHyy', 'sadme')
test.set('dGHyy', 'sadme')
test.set('vGHyy', 'sadme')
test.set('cGHyy', 'sadme')
test.set('aGHyy', 'sadme')
test.set('llpoGHyy', 'sadme')
test.set('LOGHyy', 'sadme')
test.set('SSpoiytwasdGHyy', 'sadme')
test.set('POOI', 'ewr')
test.set('CpwesfhsdfjlCSgfr', 'ewr')
test.set('aPOOI', 'ewr')
test.set('xPOOI', 'ewr')
test.set('klop', 'ewr')
test.set('Ptrd', 'ewr')
test.set('saz', 'ewr')
test.set('xjkiy', 'ewr')
test.set('Pweas', 'ewr')
test.set('I', 'ewr')
test.set('POOI12', 'ewr')
test.set('POasdgfOI', 'ewr')
test.set('iuasdytrPOOI', 'ewr')
test.set('lkjPOOI', 'ewr')
test.set('asdtryui13245POOI', 'ewr')
test.set('pioPOOI', 'ewr')
test.set('iopPOOI', 'ewr')
test.set('POiopOI', 'ewr')
test.set('POasdOI', 'ewr')
test.set('xzcPOOI', 'ewr')
test.set('POOI', 'ewr')
puts test.capacity





test.length
test.keys
test.values
test.entries

test.get('banana')
test.has?('watermelon')


puts test
test.remove('Carlos')
test.remove('apple')
test.remove('watermelon')
test.remove('bananaaaa')
# test.remove('banana')

test.keys
test.values
test.entries

test.length


test.remove('appleeesdsda')
puts test
test.keys
test.values

test.clear
test.length
puts test

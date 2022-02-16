a = [1, 2, 3, 4, 5]
puts a[1, 3]

a = [1, 2, 3, 4, 5]
puts a.values_at

a = [1, 2, 3]
puts a[a.size - 1]

a = [1, 2, 3]
puts a[-1]
puts a[-2]
puts a[-2, 2]

a = [1, 2, 3]
puts a.last
puts a.last(2)

a = [1, 2, 3]
puts a.last
puts a.last(2)

a = [1, 2, 3]
puts a.first
puts a.first(2)

a = [1, 2, 3]
puts a[-3] = -10
puts a[-3] = 0

a = [1, 2, 3, 4, 5]
a[1, 3]
puts a

a = []
a.push(1)
a.push(2, 3)

a = [1, 2, 3, 4, 5]
a.delete(2)
puts a

a.delete(5)
puts a

a = [1]
b = [2, 3]
a.concat(b)

p a

a = [1]
b = [2, 3]

puts a
puts b

a = [1]
b = [2, 3]
p a + b

a = [1, 2, 3]
b = [3, 4, 5]
p a | b

a = [1, 2, 3, 4]
b = [3, 4, 5,5, 6, 7]
p a - b
p a + b
p a & b

e, *f = 100, 200, 300

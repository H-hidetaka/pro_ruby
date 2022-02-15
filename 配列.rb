a = [
  1,
  2,
  3,
]
puts a

b = [
  1, 'apple', 2, 'orange', 3, 'cockroch'
]
b << 20
b << 'アイウエオ'
b.delete_at(1)

puts b[1]
puts b[0]
puts b.length

c = [[10,30,40],['アイウエオ','かきくけこ','さしす'],[1,2,3,4]]
puts c[1]

numbers = [1,2,3,4]
sum = 0
numbers.each do |n| sum += n end
puts sum

numbers = [1,2,3,4]
sum1 = 0
numbers.each { |n| sum1 += n}
puts sum1

numbers = [1,2,3,4]
sum1 = 0
numbers.each { |n|
  sum1 += n
}
puts sum1

# map/collect
numbers = [1, 2, 3, 4, 5]
new_numbers = []
numbers.each { |n| new_numbers << n * 10 }
puts new_numbers

numbers = [1, 2, 3, 4, 5]
new_numbers = numbers.map { |n| n * 10 }
puts new_numbers

# select/find_all/reject/
numbers = [1, 2, 3, 4, 5, 6]
even_numbers = numbers.select { |n| n.even? }
puts even_numbers

numbers = [1, 2, 3, 4, 5, 6]
even_numbers = numbers.reject { |n| n.even? }
puts even_numbers

numbers = [1, 2, 3, 4, 5, 6]
non_multiples_of_three = numbers.reject { |n| n % 3 == 0 }
puts non_multiples_of_three

# find/detect]
numbers = [1, 2, 3, 4, 5, 6]
even_numbers = numbers.find { |n| n.even? }
puts even_numbers

# inject/reduce
numbers = [1, 2, 3, 4]
sum = 0
numbers.each { |n| sum += n }
puts sum

numbers = [1, 2, 3, 4]
sum = numbers.inject(0) { |result, n| result + n }
puts sum

# 上記は同じ動きをしている。resultに0が入って、次からは戻り値が順次入っていく。
# n = 0 + 1
# n = 1 + 2
# n = 3 + 3
# n = 6 + 4
# n = 10
# といった動きとなる。

# これが
a = ['ruby','java','perl'].map { |s| s.upcase }
print a
# こうやって変わる
a = ['ruby', 'java', 'parl'].map(&:upcase)
p a

# このコードは
odd = [1, 2, 3, 4, 5, 6, 7, 8].select { |n| n.odd? }
p odd
# こうかわる
odd = [1, 2, 3, 4, 5, 6, 7, 8].select(&:odd?)
p odd

# &:メソッド名　を使える条件
# １、ブロック引数が1こだけである。
# ２、ブロックの中で呼び出すメソッドには引数がない
# ３、ブロックの中では、ブロック引数に対してメソッドを１回呼びだっす以外の処理がない。

odd = [1, 2, 3, 4, 5, 6, 7, 8].select { |n| n % 3 == 0}
p odd

number = [1, 2, 3, 4, 5, 6, 7, 8].map { |n| n.to_s(16)}
p number

number = [1, 2, 3, 4, 5, 6, 7, 8].map do |n|
  m = n * 4
  m.to_s
end
p number

# Range
# 最初の値..最後の値（最後の値を含み）
# 最初の値...最後の値（最後の値を含まない）

puts 1..5
puts  1...5
puts 'a'..'e'
puts 'a'...'e'

(1..5).class
(1...5).class

puts range = 1..5
puts range.include?(0)
puts range.include?(2)

a = [1, 2, 3, 4, 5]
puts a[1...3]
puts a[1..3]

a[1..3]
a = 'abcdef'
puts a[1...3]
puts a[1..3]

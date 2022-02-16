require 'set'

a = Set.new([1, 2, 3])
b = Set.new([3, 4, 5])
puts a | b
puts a - b
puts a & b

e, f = 100, 200, 300
puts e
puts f

e, *f = 100, 200, 300
p e
p f

a = []
a.push(1)
a.push(2, 3)
puts a = []

a = []
b = [2, 3]
puts a.push(1)
puts a.push(b)

a = []
b = []
puts a.push(1)
puts a.push(b)


a = []
b = [2, 3]
a.push(1)
a.push(*[2, 3])
a.push(2, 3)


p a.push(*b)
p a.push(*[2, 3])
p a.push(2,3)

# メソッドの可変長引数
def greeting(*names)
  "#{names.join('と')}、こんにちは！"
end

puts greeting('田中さん')
puts greeting('田中さん', '鈴木さん')
puts greeting('田中さん', '鈴木さん', '佐藤さん')

a = [1, 2, 3]
[-1, 0, *a , 4, 5]

puts [*a]
puts [a]

a = [1, 2, 3]
p [-1, 0, *a, 4, 5]

a = [1, 2, 3]
p [-1, 0] + a + [4, 5]

puts [1, 2, 3] == [1, 2 , 3]
puts [1, 2, 3] == [1, 2, 4]
puts [1, 2, 3] == [1, 2]
puts [1, 2, 3] == [1, 2, 3, 4]

p ['apple', 'melon', 'orange']

p %w!apple melon orange!
p %w(apple melon orange)

p %w(
  apple
  melon
  orange
)
  p %w(big\ apple small\ melon orange
)
prefix = 'This is'
p %W(#{prefix}\ an\ apple small\nmelon orange)

# 文字列を配列に変換
p 'Ruby'.chars
p 'Ruby,JAVA,PERL,PHP'.split(',')

a = Array.new
a = Array.new(5, 0)
print a

a = Array.new(10) { |n| n % 3 + 1 }
p a

a = Array.new(5, 'default')
p a

str = a[0]
p str

p str.upcase!
p a

a = Array.new(5) { 'default'}
p a

str = a[3]
p str

p str.upcase!
p a


a = Array.new(5, 0)
p a

n = a[0]
p n
p n.negative?

a = 'abcde'
p a[2]
p a[1, 3]
p a[-1]

p a = 'abcde'
p a[2]
p a[1, 3]
p a[-1]

p a[0] = 'X'
p a[1, 3] = 'Y'
p a << 'PQR'

fruits = ['apple', 'orange', 'melon']
fruits.each_with_index { |fruit, i| puts "#{fruit}" }

fruits = ['apple', 'orange', 'melon']
p fruits.delete_if.with_index { |fruit, i| fruit.include?('a') && i.odd? }

fruits = ['apple', 'orange', 'melon']
p fruits.map.with_index(10) { |fruit, i| puts "#{fruit}" }

p dimensions = [
  [10, 20],
  [30, 40],
  [50, 60],
]

areas = []

dimensions.each do |dimension|
  length = dimension[0]
  width = dimension[1]
  areas << length * width
end

p areas

dimensions.each do |length, width, foo, bar|
  p [length, width, foo, bar]
end

# ３つの値をブロック引数に渡そうとするが、２つしかないので３つ目の値を捨てられる
p dimensions = [
  [10, 20, 100],
  [30, 40, 200],
  [50, 60, 300],
]

dimensions.each do |length, width|
  p [length, width]
end

dimensions = [
  [10, 20],
  [30, 40],
  [50, 60],
]
dimensions.each_with_index do |length, width, i|
  puts "length: #{length}, width: #{width}, i: #{i}"
end

dimensions = [
  [10, 20],
  [30, 40],
  [50, 60],
]

dimensions.each_with_index do |dimention, i|
  length = dimention[0]
  width = dimention[1]
  puts "length: #{length}, width: #{width}, i: #{i}"
end

# ブロック引数に一気に受け取る。
dimensions = [
  [10, 20],
  [30, 40],
  [50, 60],
]

dimensions.each_with_index do |(length, width), i|
  puts "length: #{length}, width: #{width}, i: #{i}"
end

File.open("./sample.txt","w") do |file|
  file.puts("1行目のテキストです。")
  file.puts("2行目のテキストです。")
  file.puts("3行目のテキストです。")
  file.puts
end

File.open("./aiueo.txt","w") do |file|
  file.puts("1行目のテキストです。色々なものに感謝します。")
  file.puts("2行目のテキストですいろんなものに感謝します。")
  file.puts("3行目のテキストです。感謝なんかしません。")
  file.puts(1,2,3,4,5,6)
  file.puts([1,2,3,4,5])
end

File.open("./sample.erb","w") do |file|
  file.puts("1行目のテキストです。色々なものに感謝します。")
  file.puts("2行目のテキストですいろんなものに感謝します。")
  file.puts("3行目のテキストです。感謝なんかしません。")
  file.puts("do |n| end")
  file.puts([1,2,3,4,5])
end

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

a = [1, 2, 3]
a.delete(100)
a.delete(100) do
  'NG'
end
p a

a.delete 100 do
  'NG'
end
p a

# a.delete 100 { 'NG' }
a.delete(100) { 'NG' }
p a

names = ['田中', '遠藤', '佐藤']
san_names = names.map { |name| "#{name}さん" }
p san_names.join('と')

# names = ['','','']
names = ['田中', '遠藤', '佐藤']
a = names.map { |name| "#{name}さん" }.join('と')
p a

names = ['田中', '竹越', '佐藤ぅ']
main_name = names.map do | name |
  "#{name}さん"
end.join('と')

p main_name

menu = {"うどん" => "300円", "ラーメン" => "500円", "パスタ" => "800円"}
puts menu["うどん"]
print menu["うどん"]

menu = {"うどん" => "300円", "ラーメン" => "500円", "パスタ" => "800円"}

p menu
menu["そば"] = "600"
p menu

menu["うどん"]= "600円"
p menu

menu = {"うどん" => "300円", "ラーメン" => "500円", "パスタ"=> "800円"}
p menu
menu.delete("うどん")
p menu

menu = {"うどん" => "300円", "ラーメン" => "500円", "パスタ" => "800円"}
menu.each {
  |name,price|
  p "#{name}は#{price}です"
}

menu = {"うどん" => "300円", "ラーメン" => "500円","パスタ"=>"800円"}
menu = {}
p menu.empty?

a = [1, 2, 3]
p a.delete(100)

a.delete(100) do
  'NG'
end

p a
# 引数bのかっこを省略可能
a.delete 100 do
  'NG'
end
p a

# エラーが出る。 {}の結合度が強いため。a.delete 100　ではなく、100 { 'NG' }と認識されるため。
# a.delete 100 { 'NG' }
# ＝＞　expecting end-of-input

p a.delete(100) { 'NG' }

# 「と」で配列の中身を結合した
names = ['田中','ち','あ']
p san_names = names.map { |name| "#{name}さん" }

p san_names.join('と')
p san_names.join 'と'

names = ['田中','ち','あ']
a = names.map { |name| "#{name}さん"}.join('と')
p a
# {}とdo...endは基本的に同じで、endの後ろにドットをつけてメソッドを呼び出すことも可能
names = ['田中','鈴木','佐藤']
a = names.map do |name|
  "#{name}さん"
end.join('と')
p a

# timesメソッド
# 0,1,2,3,4が入る
sum = 0
5.times { |n| sum += n }
p sum

# sumに１を加算する処理を5回繰り返す
sum = 0
5.times {sum += 1 }
p sum

# uptoおよびdownメソッド
# [10,11,12,13,14]
a = []
10.upto(14) { |n| a << n }
p a

# [14,13,12,11]
a = []
14.downto(10) { |n| a << n }
p a

# stepメソッド
# nからmまで数値をx個ずつ増やしながら処理
# 1から１０まで２つずつ値を増やしなgら処理をしたい場合
# a = [1,3,5,7,9]
a = []
1.step(10,2) { |n| a << n }
p a

# 10から1まで２つずつ値を減らしながら処理をしたい場合
a = []
10.step(1,-2) { |n| a << n }
p a

# whileとuntil 繰り返し処理用の文
# 1を繰り返す
a = []
while a.size < 5
  a << 1
end
p a

# doを条件式の後ろに入れて1文で
a = []
while a.size < 5
  a << 1
end
p a


# 2/21 21:9 379からスタート
numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
    sum += n
    p sum
end
p sum


numbers.each do |i|
    sum += i
    p sum
end
p sum

numbers.each do |number|
    sum += number
end
p sum

numbers.each { |n|
  sum += n
}
p sum


numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
p sum

# ブロックの外でsum_valueは使えない（ブロック内で初めて登場した変数はブロック外に持ち出せない?
numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
p sum

numbers = [5,6,7,8,9,10]
sum = 0

numbers.each do |n|
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end

puts sum #=> 261
# れいだい
# var = "文字列"

# if var.class == String
#   "varはStringです"
# else
#   "varはStringではありません"
# end

# var = "文字列"

# var.class == String? "varはStringです" : "varはStringではありません"

# 外部で作成されたローカル変数はブロックの内部でも参照d形る/
numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
p sum


# ブロック引数の名前をブロック外にある変数の名前と同じにすると、jブロック内ではブロック引数の値が優先される

nubmers = [1, 2, 3, 4]
sum = 0
sum_value = 100

numbers.each do |sum_value|
  sum += sum_value
end
p sum

nubmers = [1, 2, 3, 4]
sum = 0

nubmers.each do |n| sum += n end
  p sum

nubmers.each { |n| sum += n }
p sum

numbers = [1,2,3,4]
sum = 0
nubmers.each { |n|
  sum += n
}
p sum

# ブロックを使う配列のメソッド
# mapメソッドは各要素に対してブロックを評価した結果を新しい配列にして返します。例えば、下記のように配列の赤く要素を１０倍日した配列を作るコードがあったとします。
numbers = [1, 2, 3 ,4 ,5]
new_numbers = []
numbers.each { |n| new_numbers << n * 10 }
p new_numbers
# mapメソッドを使うとブロックの戻り値が配列の要素となる新しい配列が作成されるため、mapメソッドの戻り値をそのまま新しい変数に入れることができます。
numbers = [1, 2, 3 ,4 ,5]
new_numbers = numbers.map { |n| n * 10}
# numbers.each { |n| new_numbers << n * 10 }
p new_numbers

# selectメソッド（エイリアスはfind_all0は各要素に対してブロックを評価し、その戻り値が真の要素を集めた配列を返すメソッドです・。
nubmers = [1, 2, 3, 4, 5, 6]
even_numbers = numbers.select { |n| n.even? }
p even_numbers

# rejectメソッドはselectメソッドの反対で、ブロックのモドprいちが真に立った要素を除外した配列を返します。言い換えるとブロックの戻り値が偽である要素を集めるメソッドです。
numbers = [1, 2, 3, 4 ,5 , 6]
non = numbers.reject {|n|n % 3 == 0 }
p non

# findメソッド（エイリアスメソッドはdetect)ブロックの戻り値が真になった最初の要素を返します。
numbers = [1, 2, 3, 4 , 5]
even_numbers = numbers.find { |n| n.even? }
p even_numbers

# inject/reduce injectメソッド（エイリアスはreduce）はたたきこみ演算をおこなうメソッドです。このメソッドの動きは実際のサンプルコードを見ながら説明した方がわかりやすいと思います。find/detect

nubmers = [1, 2, 3, 4, 5, 6]
sum = 0
nubmers.each { |n| sum += n }
p sum

nubmers = [1, 2, 3, 4, 5, 6]
sum = nubmers.inject(0) { |result, n| result + n }
p sum
# ブロックの第１引数は初回のみ位injectメソッドの引数が入る。ブロックの第２引数は配列の要素が順番に入ります。ブロックの戻り値は次の回に引き継がれ、ブロックの第１引数に入るます。繰り返し処理が最後まで終わると、ブロックの戻り値がinjectメソッドの戻り値になリマス。結果としてinjectメソッドとブロックは次のようになる。

numbers = [1, 2, 3, 4]
sum = numbers.inject(0) {|result, n| result + n}
p sum
# -> ((((0+1)+2)+3)+4)と同一

a = ['a','b','c','d','e','E'].inject('gjbh') {
  |result,s| result + s
}
p a

# 上級の書き方
a = ['ruby', 'java', 'perl'].map { |s| s.upcase }
p a

a = ['ruby', 'java', 'perl'].map(&:upcase)
p = a

# 範囲
a = [1, 2, 3, 4, 5]
a[1..2]
p a

a = 'abskjvklgda'
a[1..3]
p = a

# 0度以上、１００未満であれば液体と判定７あ
def liquid?(temperature)
  0 <= temperature && temperature < 100
end
p liquid?(-1)
p liquid?(0)
p liquid?(1)
p liquid?(2)
p liquid?(99)
p liquid?(100)

# caseぶん
def charge(age)
  case age
  when 0..5
    0
  when 6..12
    300
  when 13..18
    600
  else
    1800
  end
end

p charge(3)
p charge(0)
p charge(300)
p charge(30)
p charge(16)
# 値が連続する
# (1..5)to_a
# (1...5)to_a

# ('a'..'e')to_a
# ('a'...'e')to_a

# ('bad'..'bag')to_a
# ('bad'..'bag')to_a
# 繰り返し処理を行う

nunmbers = (1..4).to_a
sum = 0
numbers.each {|n| sum += n}
p sum

sum = 0
(1..4).each { |n| sum += n }
p sum

numbers = []
(1..10).step(2) { |n| numbers << n}
p numbers

# テスト工藤開発の開発サイクル
# １、テストコードをかく
# ２、テストが失敗することを確認するう
# ３、１つのテストをパスさせるための実装をかく
# ４、テストがパスすることを確認する
# ５、別のテスパターンをかく
# ６、テストが失敗することを確認する
# ７、仮実装ではなく、ちゃんとしたロジックを書く
# ８、テストがパスすることを確認する。
# ９、ロジックをリファクタリングする
# １０、テストがパスすることおw確認する

# 配列について詳しく

a = [1, 2, 3, 4, 5]
a[1, 3]
p a

a = [1, 2, 3]
a.values_at(0, 2, 4)
p a

a = [1, 2, 3]
a[a.size - 1]
p a

# pushメソッドの説明ではa.push(2,3)のようにして、複数の要素を一度に追加できると説明しました。

a=[]
a.push(1)#=>[1]#2と3を一度に追加する
a.push(2,3)#=>[1,2,3]
p a

a=[]
b=[2,3]

# 配列を引数に渡す場合は、「１つの配列」として渡したいのか、「複数の引数」として渡したいのか遣唐使、後者の場合は＊を使って展開できる

def yeah(*names)
  "#{names.join('と')}、こんにちは！"
end
p yeah

# 気になったところだけ写せばいい.

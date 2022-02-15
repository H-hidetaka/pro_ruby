# n = 11
# if n > 10
#   puts  '10よりおおき'
# else
#   puts '10いか'
# end


# 三項演算子
n = 11
message = n > 10 ? '10より大きい' : '１０以下'
puts message

def greet(country)
  if country == 'japan'
    puts 'やあ'
  else country == 'us'
    puts 'hello'
  end
end

greet('us')

def greet(country = 'japan')
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end

greet
greet('us')

def default_args(a, b, c = 0, d = 0)
  "a=#{a}, b=#{b}, c=#{c}, d=#{d}"
end

puts default_args(1,2)
puts default_args(1,2,3)
puts default_args(1,2,3,4)

a = 'ruby'

puts a.upcase
puts a

puts a.upcase!
puts a

def multiple_three?(n)
  n % 3 == 0
end

puts multiple_three?(2)
puts multiple_three?(3)
puts multiple_three?(3)
puts multiple_three?(6)
puts multiple_three?(66)

# ガベージコレクション：使用されなくなったオブジェクトを回収し、自動的にメモリを開放します。

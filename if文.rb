# if 条件a
#   条件Aが真だった場合の処理
# elsif
#   条件がBだsった場合の処理
# elsif
#   条件がCだった場合の処理
# end

# if文の戻り値を変数に返すこともできる



contry = 'aaa'

greeting =
  if contry == 'japan'
    puts 'こん'
  elsif contry == 'aaa'
    puts 'hel'
  elsif contry == 'ita'
    puts 'c]iasf'
  else
    puts '???'
end

greeting

point = 7
day = 1

if day == 1
  point *= 5
end

puts point



point = 7
day = 1

point *= 5 if day == 1

puts point

def add(a,b)
  a + b
end
add()

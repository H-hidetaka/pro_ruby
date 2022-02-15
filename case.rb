country = 'us'

# if country == 'japan'
# 'こんにちは'
# elsif country == 'us'
#   'hello'
# elsif country == 'italy'
#   'ciao'
# else
#   '??'
# end

message =
case country
when 'japan'
  'こんにちは'
when 'italy'
  'ciao'
when 'us'
  'he'
else
  '???'
end

puts message

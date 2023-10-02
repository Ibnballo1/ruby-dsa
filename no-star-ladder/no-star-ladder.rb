def pattern(n)
  #your code here
  num = 1
  stars = ''
  plus_one = ''
  res = ''
  while num <= n do
    puts "1#{stars}#{plus_one}"
    stars += '*'
    num += 1
    plus_one = num
  end
end

puts pattern(3)
puts pattern(10)
def str_count(str, char)
  count = 0
  str.each_char do |c|
    count += 1 if c == char
  end
  count
end

puts str_count('hello', 'o') # Output=> 1
puts str_count('hello', 'l') # Output => 2
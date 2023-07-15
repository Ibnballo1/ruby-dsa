def find_multiple(number, limit)
  # I want to find the multiples of number up till limit
  multiples_of_num = []
  multiples = 0
  len = limit / number
  count = 1

  len.times do
    multiples = number * count
    multiples_of_num.push(multiples)
    count += 1
  end
  multiples_of_num
end

p find_multiple(2, 6) # => [2, 4, 6]
p find_multiple(3, 17) # => [3, 6, 9, 12, 15]
p find_multiple(4, 43) # => [4, 8, 12, 16, 20, 24, 28, 32, 36, 40]

def solution(number)
  # put your solution here
  sum = 0
  multiple_arr = []
  multiple_of_3 = 0
  multiple_of_5 = 0
  (1..number).each do |num|
    # multiples of 3 less than 10
    multiple_of_3 = 3 * num
    multiple_of_5 = 5 * num

    multiple_arr.push(multiple_of_3) if multiple_of_3 < number
    multiple_arr.push(multiple_of_5) if multiple_of_5 < number
  end
  multiple_arr.uniq.each do |item|
    sum += item
  end
  sum
end

puts solution(10) # => 23
puts solution(20) # => 78
def square_or_square_root(arr)
  new_arr = []
  arr.each do |num|
    (Math.sqrt(num) % 1) > 0 ? new_arr.push(num * num) : new_arr.push(Math.sqrt(num).to_i)
  end
  new_arr
end

p square_or_square_root([4,3,9,7,2,1]) # -> [2,9,3,49,4,1]
p square_or_square_root([7, 9])

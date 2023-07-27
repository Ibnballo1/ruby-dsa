def keep_order(ary, val)
  # your code here
  ary.each_with_index do |item, index|
    if ary[ary.length - 1] < val
      return ary.length
    elsif item >= val
      return index
    end
  end
  return 0
end

p keep_order([1, 2, 3, 4, 7], 5) # => 4
p keep_order([1, 2, 3, 4, 7], 0) # => 0
p keep_order([1, 1, 2, 2, 2], 2) #=> 2
p keep_order([1, 2, 3, 4], -1) # => 0
p keep_order([1, 2, 3, 4], 5) # => 4
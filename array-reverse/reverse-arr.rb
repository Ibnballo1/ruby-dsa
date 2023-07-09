def reverse_list(list)
  # list.reverse
  # OR
  each_li = []
  list.reverse_each do |each_list|
    each_li.push(each_list)
  end
  each_li
end

p reverse_list([1, 2, 3, 4]) # [4, 3, 2, 1]

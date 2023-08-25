def stringy(size)
  # Your code here
  new_str = ''
  size.times do |x|
    if x%2 == 0
      new_str += '1'
    else
      new_str += '0'
    end
  end
  new_str
end

p stringy(6)
  
def stringy(size)
  (1..size).map { |x| x.even? ? '0' : '1' }.join('')
end

p stringy(6)

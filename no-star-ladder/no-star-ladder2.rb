def pattern(n)
  n == 1 ? "1" : pattern(n-1) + "\n1#{'*'*(n-1)}#{n}"
end

puts pattern(3)
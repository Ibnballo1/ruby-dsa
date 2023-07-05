def no_boring_zeros(n)
  n.to_s.length.times {n%10 == 0 ? (n = n / 10) : n}
  n
end

puts no_boring_zeros(1450) # ==> 145
puts no_boring_zeros(960000) # ==> 96
puts no_boring_zeros(0) # ==> 0
puts no_boring_zeros(-1050) # ==> 0
puts no_boring_zeros(-105) # ==> 0
def is_leap_year(year)
  #your code here
  ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0)
end

p is_leap_year(2020) # => true
p is_leap_year(2000) # => true
p is_leap_year(2015) # => false
p is_leap_year(2100) # => false
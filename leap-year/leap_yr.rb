require 'date'

def is_leap_year(year)
  DateTime.leap? year
end

p is_leap_year(2020) # => true
p is_leap_year(2000) # => true
p is_leap_year(2015) # => false
p is_leap_year(2100) # => false

def even_or_odd(number)
    # number.even? ? 'Even' : 'Odd'
    number.odd? ? 'Odd' : 'Even'
  end
  
  p even_or_odd(3)
  p even_or_odd(6)
  p even_or_odd(17)
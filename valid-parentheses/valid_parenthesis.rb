def valid_paren(paren_str)
  str_len = paren_str.length
  left_paren_counter = 0
  right_paren_counter = 0

  if (str_len % 2 != 0)
    return 'false'
  else
    paren_str.each_char {|chr| (chr == '(') ? left_paren_counter += 1 : right_paren_counter += 1}
    (left_paren_counter == right_paren_counter) ? 'true' : 'false'
  end
end

p valid_paren('()') # => return true
p valid_paren('') # => return true
p valid_paren('()(') # => return false
p valid_paren(')(()))') # => return false
p valid_paren('(') # => return false
p valid_paren('(())((()())())') # => return true
p valid_paren(')(') # => return false

def valid_paren(paren_str)
  left_bra, right_bra = 0, 0
  paren_str.each_char do |chr|
    if (chr == ')')
      right_bra += 1
      return false if (right_bra > left_bra)
    else
      left_bra += 1
    end
  end
  right_bra == left_bra
end

p valid_paren('()') # => return true
p valid_paren('') # => return true
p valid_paren('()(') # => return false
p valid_paren(')(()))') # => return false
p valid_paren('(') # => return false
p valid_paren('(())((()())())') # => return true
p valid_paren(')(') # => return false

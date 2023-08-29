def can_arrange_to_balance(bracket_str)
  str_len = bracket_str.length
  left_bra, right_bra = 0, 0

  unless (str_len % 2 == 0)
    return false
  else
    bracket_str.each_char {|char| (char == '(') ? left_bra += 1 : right_bra += 1}
    left_bra == right_bra ? true : false
  end
end

p can_arrange_to_balance('()')
p can_arrange_to_balance('(')
p can_arrange_to_balance('((()))')
p can_arrange_to_balance('((()))(()')
p can_arrange_to_balance(')(())(')
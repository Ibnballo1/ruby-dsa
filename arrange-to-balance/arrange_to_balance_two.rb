def can_arrange_to_balance(bracket_str)
  return false if bracket_str.length.odd?

  left_bra = bracket_str.count('(')
  right_bra = bracket_str.count(')')

  left_bra == right_bra
end

p can_arrange_to_balance('()')
p can_arrange_to_balance('(')
p can_arrange_to_balance('((()))')
p can_arrange_to_balance('((()))(()')
p can_arrange_to_balance(')(())(')
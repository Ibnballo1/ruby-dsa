class String
  def is_upcase?
    self == upcase
  end
end

ob = String.new('CAT')
p ob.is_upcase?
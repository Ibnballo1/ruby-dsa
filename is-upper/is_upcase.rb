class String
  def is_upcase?
    # TODO: Program me
    (self == self.upcase) ? true : false
  end
end

ob = String.new('BoY')
p ob.is_upcase?
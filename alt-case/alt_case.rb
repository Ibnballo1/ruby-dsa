class String
  def to_alternating_case
    #your code here
    new_str = ''
    self.each_char {|chr| new_str += (chr == chr.downcase) ? chr.upcase : chr.downcase}
    new_str
  end
end

ob = String.new('hello world')
ob2 = String.new('HELLO WORLD')
ob3 = String.new('hello WORLD')
ob4 = String.new('12345')
ob5 = String.new('1a2b3c4d5e')
p ob.to_alternating_case
p ob2.to_alternating_case
p ob3.to_alternating_case
p ob4.to_alternating_case
p ob5.to_alternating_case
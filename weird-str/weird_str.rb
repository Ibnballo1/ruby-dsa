def weirdcase string
  #TODO
  newStr = ''
  count = 0
  (0...string.length).each_with_index do |item, index|
    count = 0 if string[item - 1] == ' '
    count % 2 == 0 ? newStr += string[item].upcase : newStr += string[item].downcase
    count += 1
  end
  newStr
end

p weirdcase 'String'
p weirdcase "Weird string case"
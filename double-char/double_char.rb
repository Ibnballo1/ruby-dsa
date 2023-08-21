def double_char(str)
  new_str = ''
  str.each_char do |char|
    new_str += char * 2
  end
  new_str
end

p double_char("String") # => "SSttrriinngg"
p double_char("Hello World") # => "HHeelllloo  WWoorrlldd"
p double_char("1234!_ ") # => "11223344!!__  "

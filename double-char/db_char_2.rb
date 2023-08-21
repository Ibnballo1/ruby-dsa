def double_char(str)
  str.chars.map{|x| x*2}.join
end

p double_char("String") # => "SSttrriinngg"
p double_char("Hello World") # => "HHeelllloo  WWoorrlldd"
p double_char("1234!_ ") # => "11223344!!__  "

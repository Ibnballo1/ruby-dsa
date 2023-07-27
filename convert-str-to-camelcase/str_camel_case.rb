def to_camel_case(str)
  new_str = ''
  str_arr = []

  str.each_char {|character| str_arr.push(character)}

  str_arr.each_with_index do |char, index|
    char = char.upcase if str[index - 1] == '-' || str[index - 1] == '_'
    next if char == '-' || char == '_'
    new_str += char
  end
  new_str
end

puts to_camel_case("the-stealth-warrior") # ==> "theStealthWarrior"
puts to_camel_case("The_Stealth_Warrior") # ==> "TheStealthWarrior"
puts to_camel_case("The_Stealth-Warrior") # ==> "TheStealthWarrior"

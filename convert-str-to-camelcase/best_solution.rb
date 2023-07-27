def to_camel_case(str)
  str.gsub(/[_-](.)/) {"#{$1.upcase}"}
end

puts to_camel_case("the-stealth-warrior") # ==> "theStealthWarrior"
puts to_camel_case("The_Stealth_Warrior") # ==> "TheStealthWarrior"
puts to_camel_case("The_Stealth-Warrior") # ==> "TheStealthWarrior"

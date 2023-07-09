def spin_words(string)
  #TODO
  string.split.map {|word| word.length >= 5 ? word.reverse : word}.join(' ')
end

puts spin_words( "Hey fellow warriors" ) # => returns "Hey wollef sroirraw" 
puts spin_words( "This is a test") # => returns "This is a test" 
puts spin_words( "This is another test" ) # => returns "This is rehtona test"
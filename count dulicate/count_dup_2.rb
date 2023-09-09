def duplicate_count(text)
  text.downcase.chars.group_by(&:itself).count { |_, group| group.length > 1 }
end
  
p duplicate_count("abcde") # => 0
p duplicate_count("aabbcde") # => 2
p duplicate_count("aabBcde") # => 2
p duplicate_count("indivisibility") # => 1
p duplicate_count("Indivisibilities") # => 2
p duplicate_count("aA11") # => 2
p duplicate_count("ABBA") # => 2
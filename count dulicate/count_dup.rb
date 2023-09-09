def duplicate_count(text)
  counter = 0
  previous_char = []
  text.downcase.chars do |chr|
    next if previous_char.include?(chr)
    breaker = 0
    text.downcase.each_char do |chr2|
      if chr == chr2
        breaker += 1
        if breaker > 1
          counter += 1
          break
        end
      end
    end
    previous_char.push(chr)
  end
  counter
end

p duplicate_count("abcde") # => 0
p duplicate_count("aabbcde") # => 2
p duplicate_count("aabBcde") # => 2
p duplicate_count("indivisibility") # => 1
p duplicate_count("Indivisibilities") # => 2
p duplicate_count("aA11") # => 2
p duplicate_count("ABBA") # => 2
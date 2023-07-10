def likes(names)
  #your code here
  names_length = names.length
  if (names_length > 3)
    puts "#{names[0]}, #{names[1]} and #{names_length - 2} others like this"
  elsif (names_length == 3)
    puts "#{names[0]}, #{names[1]} and #{names[2]} like this"
  elsif (names_length == 2)
    puts "#{names[0]} and #{names[1]} like this"
  elsif (names_length == 1)
    puts "#{names[0]} like this"
  else
    puts "no one liked this"
  end
end

likes([])                                # -->  "no one likes this"
likes(["Peter"])                         # -->  "Peter likes this"
likes(["Jacob", "Alex"])                 # -->  "Jacob and Alex like this"
likes(["Max", "John", "Mark"])           # -->  "Max, John and Mark like this"
likes(["Alex", "Jacob", "Mark", "Max"])  # -->  "Alex, Jacob and 2 others like this"
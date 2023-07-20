def rgb(r, g, b)
  # first divide each value by 16 to get its quotient and remainder
  hexadecimal = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F']
  result = ''
  (r, g, b = 0, 0, 0) if (r < 0 || g < 0 || b < 0)
  (r, g, b = 255, 255, 255) if (r > 255 || g > 255 || b > 255)
  rgb_arr = [r/16, r%16, g/16, g%16, b/16, b%16]

  rgb_arr.each {|item| result += hexadecimal[item]}
  result
end

puts rgb(255, 255, 255) # returns FFFFFF
puts rgb(255, 255, 300) # returns FFFFFF
puts rgb(0,0,0) # returns 000000
puts rgb(148, 0, 211) # returns 9400D3
puts rgb(110, 6, 255) # returns 6E06FF
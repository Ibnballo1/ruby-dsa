def rgb(r, g, b)
  hexadecimal = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F']
  result = ''
  r = 0 if r < 0
  g = 0 if g < 0
  b = 0 if b < 0
  r = 255 if r > 255
  g = 255 if g > 255
  b = 255 if b > 255
  
  rgb_arr = [r/16, r%16, g/16, g%16, b/16, b%16]

  rgb_arr.each {|item| result += hexadecimal[item]}
  result
end

puts rgb(255, 255, 255) # returns FFFFFF
puts rgb(255, 255, 300) # returns FFFFFF
puts rgb(0,0,0) # returns 000000
puts rgb(142,-75,299) # returns 8E00FF
puts rgb(148, 0, 211) # returns 9400D3
puts rgb(110, 6, 255) # returns 6E06FF
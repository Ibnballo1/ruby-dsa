def alphabet_position(text)
  alpha_numeric = {
    'A' => 1, 'B' => 2, 'C' => 3, 'D' => 4, 'E' => 5, 'F' => 6, 'G' => 7, 'H' => 8, 'I' => 9, 'J' => 10,
    'K' => 11, 'L' => 12, 'M' => 13, 'N' => 14, 'O' => 15, 'P' => 16, 'Q' => 17, 'R' => 18, 'S' => 19,
    'T' => 20, 'U' => 21, 'V' => 22, 'W' => 23, 'X' => 24, 'Y' => 25, 'Z' => 26
  }
  result = ''

  text.each_char do |char|
    if alpha_numeric.include?(char) || alpha_numeric.include?(char.upcase)
      result += alpha_numeric[char.upcase].to_s
      result += ' '
    end
  end
  result.rstrip
end

p alphabet_position('text')
p alphabet_position("The sunset sets at twelve o' clock.")

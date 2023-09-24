def domain_name(url)
  # return just the domain name
  pattern = /https:\/\/www\./
  pattern2 = /https:\/\//
  pattern3 = /http:\/\//
  pattern4 = /http:\/\/www\./
  pattern5 = /www\./
  match = url.match(pattern)
  match2 = url.match(pattern2)
  match3 = url.match(pattern3)
  match4 = url.match(pattern4)
  match5 = url.match(pattern5)
  extract = ''

  if match
    extract = match[0]
  elsif match4
    extract = match4[0]
  elsif match2
    extract = match2[0]
  elsif match3
    extract = match3[0]
  elsif match5
    extract = match5[0]
  else
    extract = ''
  end
  counter = extract.length
  new_str = ''
  loop do
    break if url[counter] == '.'
    new_str += url[counter]
    counter += 1
  end
  new_str
end

puts domain_name("https://www.cnet.com")
puts domain_name("https://gmail.com")
puts domain_name("http://github.com/carbonfive/raygun")
puts domain_name("dawahtube.com")
puts domain_name("http://www.zombie-bites.com")
puts domain_name("www.zombie.com")
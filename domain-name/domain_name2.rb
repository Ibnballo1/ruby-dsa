# def domain_name(url)
#   URI.parse(url).host.split('.').last(2)[0]
# end

def domain_name(url)
  regex = /(http|https):\/\/(?:www\.)?(?<domain_name>.*?)\./
  url.match(regex)[:domain_name]
end

puts domain_name("https://www.cnet.com")
puts domain_name("https://gmail.com")
puts domain_name("http://github.com/carbonfive/raygun")
puts domain_name("dawahtube.com")
puts domain_name("http://www.zombie-bites.com")
puts domain_name("www.zombie.com")
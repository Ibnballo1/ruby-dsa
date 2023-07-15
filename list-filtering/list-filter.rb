def filter_list(l)
  # return a new list with the strings filtered out
  l.select {|item| item unless item.class == String}
end

p filter_list([1,2,'a','b']) # ==> [1,2]
p filter_list([1,'a','b',0,15]) # ==> [1,0,15]
p filter_list([1,2,'aasf','1','123',123]) # ==> [1,2,123]

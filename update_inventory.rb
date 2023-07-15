def update_inventory(arr1, arr2)
  hash = {}

  arr1.each {|item| hash[item[1]] = item[0]}

  arr2.each do |item|
    sum = 0
    if hash.include?(item[1])
      sum = item[0] + hash[item[1]]
      hash[item[1]] = sum
    else
      hash[item[1]] = item[0]
    end
  end

  new_arr = []
  hash.each {|key, val| new_arr.push([val, key])}

  new_arr
end
  
  curInv = [ [21, "Bowling Ball"], [2, "Dirty Sock"], [1, "Hair Pin"], [5, "Microphone"] ];
  newInv = [ [2, "Hair Pin"], [3, "Half-Eaten Apple"], [67, "Bowling Ball"], [7, "Toothpaste"] ];
  
  p update_inventory(curInv, newInv) # => [
  #   [88, "Bowling Ball"], [2, "Dirty Sock"], [3, "Hair Pin"],
  #   [5, "Microphone"], [3, "Half-Eaten Apple"], [7, "Toothpaste"]
  # ]
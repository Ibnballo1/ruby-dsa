def compareTriplets(a, b)
  alice_point, bob_point = 0, 0
  a.each_with_index do |num, index|
    if num > b[index]
        alice_point += 1
    elsif num < b[index]
        bob_point += 1
    else
        alice_point += 0
        bob_point += 0
    end
  end
  return [alice_point, bob_point]
end

a = [1, 2, 3]
b = [3, 2, 1]

p compareTriplets(a, b)

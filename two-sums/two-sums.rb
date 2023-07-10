# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  hash = Hash.new
  nums.each_with_index do |num, index|
    if hash[target - num]
      return [hash[target - num], index]
    else
      hash[num] = index
    end
  end
end

p two_sum([3,2,4], 6) # => [1, 2]
p two_sum([2,7,11,15], 9) # => [0, 1]
p two_sum([5,75,25], 100) # => [1, 2]
p two_sum([3,3], 6) # => [0, 1]
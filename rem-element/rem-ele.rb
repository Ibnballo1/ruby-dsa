# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
  count = 0
  num_len = nums.length
  check_bool = false
  expected_num = nums.select {|num| num != val}
  num_len.times do |idx|
    check_bool = (nums[idx] = expected_num[idx])
    nums[idx] = check_bool
    check_bool ? count += 1 : nums[idx] = '_'
  end
  count
end

p remove_element([3,2,2,3], 3) # => 2 [2,2]
p remove_element([0,1,2,2,3,0,4,2], 2) # => 5 [0,1,3,0,4]
p remove_element([2], 3) # => 1 [2]

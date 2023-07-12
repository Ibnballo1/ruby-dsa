# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  return 0 if nums.empty?  # If the array is empty, there are no unique elements
  
  unique_count = 1  # Initialize count to 1 for the first element
  current = nums[0]  # Track the current unique element
  puts "Current is #{current}"

  nums.each_with_index do |num, i|
    next if i == 0  # Skip the first element
    
    if num != current  # If the current element is different from the previous unique element
      nums[unique_count] = num  # Update the array in-place
      current = num  # Update the current unique element
      unique_count += 1  # Increment the count of unique elements
    end
  end

  unique_count  # Return the count of unique elements
end

p remove_duplicates([1,1,2]) # => [1,2,_]
# p remove_duplicates([0,0,1,1,1,2,2,3,3,4]) # => [0,1,2,3,4,_,_,_,_,_,_]
# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
# You may assume that each input would have exactly one solution, and you may not use the same element twice.
# You can return the answer in any order.

def two_sum(nums, target)
  nums.each_with_index do |num, index|
    nums[index + 1..-1].each_with_index do |additive, next_index|
      if num + additive == target
        return [index, next_index + index + 1]
      else
        next
      end
    end
  end
end

nums1 = [2,7,11,15]
target1 = 9
# Output: [0,1]

p two_sum(nums1, target1)
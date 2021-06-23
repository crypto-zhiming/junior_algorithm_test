def find_min(nums)
  l, r = 0, nums.length - 1
  while l < r
    mid = l + (r - l) / 2
    if nums[mid] < nums[r]
      r = mid
    else
      l = mid + 1
    end
  end
  nums[l]
end

[
  [3,4,5,1,2],
  [4,5,6,7,0,1,2],
  [11,13,15,17]
].each do |nums|
  puts nums.inspect
  puts "min: #{find_min(nums)}"
  puts '---'
end

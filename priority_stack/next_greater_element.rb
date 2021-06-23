def next_greater_elements(nums)
  length = nums.length
  rtn = Array.new(length, -1)
  stack = []
  2.times {
    nums.each_with_index do |num, index|
      while !stack.empty? && num > nums[stack.last]
        rtn[stack.pop] = num
      end
      stack.push(index)
    end
  }
  return rtn
end

[
  [1,2,1],
  [100,1,11,1,120,111,123,1,-1,-100]
].each do |nums|
  puts "nums: #{nums.inspect}"
  puts next_greater_elements(nums).inspect
  puts '------'
end

def number_of_1_bits(x)
  count = 0
  while x > 0
    count += 1
    x &= (x - 1)
  end
  count
end

(0..8).to_a.each do |num|
  puts "number_of_1_bits #{num} is #{number_of_1_bits(num)}"
end

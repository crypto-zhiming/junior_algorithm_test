# Number of 1 Bits

## References

- [LeetCode 0191](https://leetcode.com/problems/number-of-1-bits/)

## Description

Write a function that takes an unsigned integer and returns the number of '1' bits it has (also known as the Hamming weight).

## Approach 1

```ruby
count = 0
while n > 0
  count += 1 if 1 == n & 1
  n >>= 1
end
count
```

## Approach 2

```ruby
count = 0
while x > 0
  count += 1
  x &= (x - 1)
end
count
```

[number_of_1_bits.rb](number_of_1_bits/number_of_1_bits.rb)

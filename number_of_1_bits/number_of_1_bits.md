# 统计正整数的二进制中 1 的数目

- [LeetCode 0191](https://leetcode.com/problems/number-of-1-bits/)

## 描述

统计正整数的二进制中 1 的数目。

## 方法 1

暴力解法。时间复杂度 O(n) ，n 为二进制的位数。

```ruby
count = 0
while n > 0
  count += 1 if 1 == n & 1
  n >>= 1
end
count
```

## 方法 2

我们使用 x & (x - 1) 来不断更新 x，这个方法总是能够去掉 x 最末位的 1 。时间复杂度 O(n) ，n 为二进制中 1 的数目。

```ruby
count = 0
while x > 0
  count += 1
  x &= (x - 1)
end
count
```

[number_of_1_bits.rb](number_of_1_bits/number_of_1_bits.rb)

## 总结

- 方法 2 效率更高，代码也更简洁

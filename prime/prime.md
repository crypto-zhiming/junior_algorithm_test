# 统计素数个数

## 描述

统计不大于 n 的正整数中素数的个数。```n < 5 * 10^6```

## 方法 1

埃氏筛法。如果某个数为素数，那么其倍数一定不是素数。依据这个原理对素数进行筛选。

```ruby
is_prime = Array.new(n, true)
count = 0

for i in 2...n
  if is_prime[i]
    count += 1
    j = i * 2
    while j < n
      is_prime[j] = false
      j += i
    end
  end
end

count
```


## 方法 2

欧拉筛法。

- 对于任意数字 i，一定有：i 与素数组任意元素的乘积为非素数。
- 如果当前数字 i 能被某个素数整除，那么我们不会将 i 与素数组后面的素数相乘去做筛法。

上述筛法，能够保证非素数仅被其最小的质因数筛一次。

```ruby
primes = []
is_prime = Array.new(n, true)
for i in 2...n
  primes.push(i) if is_prime[i]
  primes.each do |prime|
    num = prime * i
    break if num >= n
    is_prime[num] = false
    break if 0 == i % prime
  end
end
primes.length
```

## 总结

- 方法 1 的效率更低，因为有些数可能会被筛多次，比如 30 会被 2 / 3 / 5 各筛一次。方法 2 的时间复杂度为 O(n) ，该方法能够保证非素数只会被其最小的质因数筛除。

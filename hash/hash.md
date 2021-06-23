# 哈希算法

## 描述

不使用任何内建的哈希表库设计一个哈希映射。(MyHashMap)

## 方法 1

使用步长倍增法来解决哈希碰撞。

```ruby
MOD = 10 ** 5 + 7
@items = []

def put(key, value)
  index = key % MOD
  step = 1
  while true
    if @items[index] == nil || @items[index][0] == key
      @items[index] = [key, value]
      break
    end
    index += step
    step >>= 1
  end  
end
```

## 方法 2

使用链式存储解决哈希碰撞。

```ruby
MOD = 10 ** 5 + 7
@items = Array.new(MOD) { [] }

def put(key, value)
  index = key % MOD
  @items[index].each do |item|
    if item[0] == key
      item[1] = value
      return
    end
  end
  @items[index].push([key, value])
end
```

## 总结

- 方法 1 弊端比较严重，在极端情况下，可能会存在大量 nil，甚至会由于数组过大导致程序崩溃
- 方法 2 在极端情况下，可能会导致链过长，性能变差。但不会导致程序崩溃，只需要调整哈希函数就能解决该问题。

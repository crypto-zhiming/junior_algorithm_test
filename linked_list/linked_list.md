# 环形链表

[LeetCode 0141 环形链表](https://leetcode-cn.com/problems/linked-list-cycle/)

## 描述

给定一个链表，判断链表中是否有环。

## 方法 1

使用一个标记为来表示节点是否已经被访问过。从 root 节点开始遍历链表，并不断标记被访问的节点，如果有节点被标记了两次，则说明链表中存在环。

## 方法 2

快慢指针来解决该问题。我们定义两个指针 slow / fast 。

```ruby
slow = root
fast = root.next
```

我们规定 fast 指针每次向前走两步，slow 指针每次向前走一步。如果这两个指针相遇了，则说明链表中存在环。

```ruby
while(slow != null && fast != null) {
  return true if slow == fast
  slow = slow.next
  fast = fast.next
  fast = fast.next if fast != null
}
return false
```

## 总结

- 方法 1 空间复杂度为 O(n)
- 方法 2 比方法 1 更好，空间复杂度为 O(1)

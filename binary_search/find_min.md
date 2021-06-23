# 寻找循环有序数组中的最小值

[LeetCode 0153 寻找旋转排序数组中的最小值](https://leetcode-cn.com/problems/find-minimum-in-rotated-sorted-array/)

## 描述

循环有序数组：该数组本身不一定直接有序。但是总是存在一个位置 index 能够满足：a[index...n] + a[0...index] 是单调递增的。

## 方法 1

暴力解法。遍历整个数组查找最小值。时间复杂度 O(n) 。

## 方法 2

二分查找，时间复杂度 O(lg n) 。

请参考 [find_min.rb](find_min.rb) 。

# 二叉搜索树的范围和

[LeetCode 0938 二叉搜索树的范围和](https://leetcode-cn.com/problems/range-sum-of-bst/)

## 描述

给定二叉搜索树的根节点 root ，返回值位于范围 [low, high] 之间所有节点的值的和。

## 方法 1

深度优先搜索 DFS 。在做 dfs 的时候需要充分利用二叉搜索树的特点：左小右大。很多时候我们可能并不需要遍历整棵树。

- 如果当前节点为 nil ，返回 0
- 如果当前节点的值小于 low ，则我们只需要遍历当前节点的右孩子
- 如果当前节点的值大于 high，则我们只需要遍历当前节点的左孩子
- 如果当前节点的值在 [low, high] 范围内，则结果应该为 current_node.val + dfs(current_node.left) + dfs(current_node.right)

请参考 [range_sum_bst.rb](range_sum_bst.rb)

## 方法 2

广度优先搜索 BFC 。

## 总结

这个题目使用 dfs 和 bfs 差别不大，要注意的是利用二叉搜索树的特点，可以避免很多不必要的遍历。

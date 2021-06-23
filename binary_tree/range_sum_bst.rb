def range_sum_bst(root, low, high)
  return 0 if nil == root
  return range_sum_bst(root.right, low, high) if root.val < low
  return range_sum_bst(root.left, low, high) if root.val > high
  return root.val + range_sum_bst(root.left, low, high) + range_sum_bst(root.right, low, high)
end

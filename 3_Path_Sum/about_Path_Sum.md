# 112. Path Sum

[leetcodelink](https://leetcode.com/problems/path-sum/)

☑ **Goal:** understanding a trees

```swift
class Solution {
    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
        guard let root = root else { return false }
        if root.left == nil && root.right == nil {
            return root.val == targetSum
        }
        return hasPathSum(root.left, targetSum-root.val) || hasPathSum(root.right, targetSum-root.val)
    }
}

```

- Status: Accepted
- Runtime: 37 ms (21.65%)
- Memory Usage: 14.8 MB (34.2%)
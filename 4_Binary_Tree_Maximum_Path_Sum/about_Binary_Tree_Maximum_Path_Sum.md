# 124. Binary Tree Maximum Path Sum

[leetcodelink](https://leetcode.com/problems/binary-tree-maximum-path-sum/)

☑ **Goal:** improve a trees

1. Try to solve a problem

- Not passed a tree with one node below zero
- Status: Wrong Answer
- 89 / 95 test cases passed.

```swift
/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    var answer = 0
    func maxPathSum(_ root: TreeNode?) -> Int {
        dfs(root)
        return answer

    }

    func dfs(_ node: TreeNode?) -> Int {
        guard let node = node else { return 0 }
        let maxLeftPath = max(dfs(node.left), 0)
        let maxRightPath = max(dfs(node.right), 0)
        answer = max(answer, maxLeftPath + maxRightPath + node.val)

        return max(maxLeftPath, maxRightPath) + node.val
    }
}
```

2. Fix exeption

```swift
/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    var answer = Int.min
    func maxPathSum(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        dfs(root)
        return answer
    }

    func dfs(_ node: TreeNode?) -> Int {
        guard let node = node else { return 0 }
        let maxLeftPath = max(dfs(node.left), 0)
        let maxRightPath = max(dfs(node.right), 0)
        answer = max(answer, maxLeftPath + maxRightPath + node.val)

        return (max(maxLeftPath, maxRightPath) + node.val)
    }
}
```

- Status: Accepted
- Runtime: 85 ms (82.67%)
- Memory Usage: 15.8 MB (92%)
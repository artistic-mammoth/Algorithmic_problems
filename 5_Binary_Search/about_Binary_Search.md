# 704. Binary Search

[leetcodelink](https://leetcode.com/problems/binary-search/)

☑ **Goal:** understand and usage of binary search

1. Classic solution

```swift
class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var low = 0
        var high = nums.count - 1
    
        while low <= high {
            let mid = (low + high) / 2
            let guess = nums[mid]
            if guess == target {
                return mid
            }
            if guess > target {
                high = mid - 1
            }
            else {
                low = mid + 1
            }
        }
        return -1
    }
}
```

- Status: Accepted
- Runtime: 260 ms (41.76%)
- Memory Usage: 14.4 MB (35.68%)

2. Clean up code, use ternary operator

```swift
class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var low = 0
        var high = nums.count - 1
        
        while low <= high {
            let mid = (low + high) / 2
            if nums[mid] == target { return mid }
            nums[mid] > target ? (high = mid - 1) : (low = mid + 1)
        }
        return -1
    }
}
```

- Status: Accepted
- Runtime: 268 ms (14.18%)
- Memory Usage: 14.1 MB (85.5%)


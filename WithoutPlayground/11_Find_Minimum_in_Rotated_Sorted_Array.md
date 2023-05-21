# 153. Find Minimum in Rotated Sorted Array


[leetcodelink](https://leetcode.com/problems/find-minimum-in-rotated-sorted-array/)

```swift
class Solution {
    func findMin(_ nums: [Int]) -> Int {
        var left = 0
        var right = nums.count - 1
        while right - left > 1 {
            let mid = left + (right - left) / 2
            if (nums[mid] > nums[left] && nums[mid] > nums[right]) {
                left = mid
            } else {
                right = mid
            }
        }
        
        return min(nums[left], nums[right])
    }
}
```

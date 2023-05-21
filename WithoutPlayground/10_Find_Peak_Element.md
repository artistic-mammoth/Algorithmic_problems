# 162. Find Peak Element

[leetcodelink](https://leetcode.com/problems/find-peak-element/)

```swift
class Solution {
    func findPeakElement(_ nums: [Int]) -> Int {
        guard nums.count > 1 else { return 0 }
        var l = 0
        var r = nums.count - 1
        
        while l != r {
            let mid = l + (r - l) / 2
            print(mid)
            
            if nums[mid] < nums[mid + 1]{
                l = mid + 1
            }
            else {
                r = mid
            }
        }
        
        return l
    }
}
```
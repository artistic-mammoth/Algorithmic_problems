# 278. First Bad Version

[leetcodelink](https://leetcode.com/problems/first-bad-version/)

```swift
class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var left = 0
        var right = n
        
        while left < right {
            let mid = (left + right) / 2
            if isBadVersion(mid) {
                right = mid
            }
            else {
                left = mid + 1
            }
        }
        
        return right
    }
}
```
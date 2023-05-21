# 69. Sqrt(x)

[leetcodelink](https://leetcode.com/problems/sqrtx/)

```swift
class Solution {
    func mySqrt(_ x: Int) -> Int {
        guard x > 3 else {return x == 0 ? 0 : 1}
        
        var low = 0
        var high = x / 2
        
        while low < high {
            let mid = (low + high) / 2
        
            if mid * mid > x {
                high = mid - 1
            }
            else {
                low = mid + 1
            }
        }
        
        return low * low > x ? low - 1 : low
    }
}
```

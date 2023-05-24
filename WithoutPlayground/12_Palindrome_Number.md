# 9. Palindrome Number


[leetcodelink](https://leetcode.com/problems/palindrome-number/)

```swift
class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let str = String(x).map { String($0) }
        var l: Int = 0
        var r: Int = str.count - 1
        
        while l < r {
            if str[l] != str[r] {
                return false
            }
            else {
                l += 1
                r -= 1
            }
        }
        return true
    }
}
```

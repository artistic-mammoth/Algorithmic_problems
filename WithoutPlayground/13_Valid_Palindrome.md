# 125. Valid Palindrome


[leetcodelink](https://leetcode.com/problems/valid-palindrome/)

```swift
class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let str = s.lowercased().filter { $0.isLetter || $0.isNumber }.map { String($0) }
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

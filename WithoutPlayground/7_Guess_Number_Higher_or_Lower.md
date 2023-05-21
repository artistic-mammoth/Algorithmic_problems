# 374. Guess Number Higher or Lower

[leetcodelink](https://leetcode.com/problems/guess-number-higher-or-lower/)

```swift
class Solution : GuessGame {
    func guessNumber(_ n: Int) -> Int {
        var low = 0
        var high = n
        
        while low <= high {
            let mid = (low + high) / 2
            
            switch guess(mid){
            case 0: return mid
            case -1: high = mid - 1
            case 1: low = mid + 1
            default: break
            }
        }
        return -1
    }
}
```
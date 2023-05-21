# 33. Search in Rotated Sorted Array

[leetcodelink](https://leetcode.com/problems/search-in-rotated-sorted-array/)

- using swift enumerated()

```swift
class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        let sorted = nums.enumerated().sorted(by: { $0.element < $1.element })
        
        var low = 0
        var high = nums.count - 1
        
        while low <= high {
            let mid = (low + high) / 2
            if sorted[mid].element == target { return sorted[mid].offset }
            sorted[mid].element > target ? (high = mid - 1) : (low = mid + 1)
        }
        return -1
    }
}
```

## Additional

- calculate pivot
```swift
private func pivotIndex(_ nums: [Int]) -> Int {
    guard nums.count > 1 else { return 0 }
    for i in 1..<nums.count {
        if nums[i] < nums[i-1] {
            return nums.count - i
        }
    }
    return 0
}
```
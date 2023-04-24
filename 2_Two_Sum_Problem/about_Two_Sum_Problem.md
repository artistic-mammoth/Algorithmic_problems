# 1. Two Sum

[leetcodelink](https://leetcode.com/problems/two-sum/)

I have 3 solution.

1. Straight way and not perfect solution

Problems:
- O(N^2)

```swift
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    for i in 0..<nums.count {
        for j in 0..<nums.count where j != i {
            if nums[i] + nums[j] == target {
                return [i,j]
            }
        }
    }
    return []
}
```

- Status: Accepted
- Runtime: 94 ms (18.12%)
- Memory Usage: 14.4 MB (67.88%)


2. Two Pointer version

```swift
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    let sortedNums = nums.sorted()
    var leftPointer = 0
    var rightPointer = nums.count - 1
    
    while leftPointer < rightPointer {
        let sum = sortedNums[leftPointer] + sortedNums[rightPointer]
        if sum == target {
            if let index1 = nums.firstIndex(of: sortedNums[leftPointer]),
               let index2 = nums.lastIndex(of: sortedNums[rightPointer]) {
                return [index1, index2]
            }
        } else if sum < target {
            leftPointer += 1
        } else {
            rightPointer -= 1
        }
    }
    return []
}
```

- Complexity: O(N⋅logN)
- Status: Accepted
- Runtime: 42 ms (87.36%)
- Memory Usage: 14.7 MB (23.59%)

3. Dictionary version

```swift
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict: [Int: Int] = [:]
    for (i, val) in nums.enumerated() {
        if let j = dict[val] {
            return [j, i]
        } else {
            dict[target - val] = i
        }
    }
    return []
}
```

- Complexity: O(N)
- Status: Accepted
- Runtime: 42 ms (87.36%)
- Memory Usage: 14.2 MB (90.68%)
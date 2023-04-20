
let nums1 = [2,7,11,15]
let target1 = 9

let nums2 = [3,2,4]
let target2 = 6

let nums3 = [3,3]
let target3 = 6

func twoSumFirstTry(_ nums: [Int], _ target: Int) -> [Int] {
    for i in 0..<nums.count {
        for j in 0..<nums.count where j != i {
            if nums[i] + nums[j] == target {
                return [i,j]
            }
        }
    }
    return []
}

func twoSumPonter(_ nums: [Int], _ target: Int) -> [Int] {
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

func twoSumDictionaty(_ nums: [Int], _ target: Int) -> [Int] {
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


twoSumDictionaty(nums1, target1)
twoSumDictionaty(nums2, target2)
twoSumDictionaty(nums3, target3)

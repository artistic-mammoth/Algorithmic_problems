let nums = [-1,0,3,5,9,12]
let target = 9

func search(_ nums: [Int], _ target: Int) -> Int {
    var low = 0
    var high = nums.count - 1
    
    while low <= high {
        let mid = (low + high) / 2
        if nums[mid] == target { return mid }
        nums[mid] > target ? (high = mid - 1) : (low = mid + 1)
    }
    return -1
}

let nums2 = [-1,0,3,5,9,12]
let target2 = 2

let nums3 = [-1,0,3,5,9,12]
let target3 = 13

print(search(nums3, target3))

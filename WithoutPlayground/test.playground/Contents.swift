

let s = " "


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

print(isPalindrome(s))



//let x = -121
//
//
//func isPalindrome(_ x: Int) -> Bool {
//    let str = String(x).map { String($0) }
//    var l: Int = 0
//    var r: Int = str.count - 1
//
//    while l < r {
//        if str[l] != str[r] {
//            return false
//        }
//        else {
//            l += 1
//            r -= 1
//        }
//    }
//    return true
//}
//
//print(isPalindrome(x))
























//let num = 1
//
//func isPerfectSquare(_ num: Int) -> Bool {
//    var low = 0
//    var high = num
//
//    while low <= high {
//        let mid = (low + high) / 2
//
//        if mid * mid == num {
//            return true
//        }
//
//        if mid * mid > num {
//            high = mid - 1
//        }
//        else {
//            low = mid + 1
//        }
//    }
//    return false
//}
//
//print(isPerfectSquare(num))





























////let nums = [5,7,7,8,8,10]
////let target = 8
//
//let nums = [2,2], target = 2
////let nums = [5,7,7,8,8,10], target = 6
////let nums = [1], target = 1
//
//func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
//    var rangeL = -1
//    var rangeR = -1
//    var l = 0
//    var r = nums.count - 1
//
//    while l <= r {
//        let mid = l + (r - l) / 2
//        if nums[mid] == target {
//            if l == r {
//                rangeL = l
//                break
//            }
//            r = mid
//        } else if nums[mid] > target {
//            r = mid - 1
//        } else {
//            l = mid + 1
//        }
//    }
//
//    if rangeL == -1 { return [rangeL, rangeR] }
//
//    l = rangeL
//    r = nums.count - 1
//
//    while l <= r {
//        let mid = l + (r - l + 1) / 2
//        if nums[mid] == target {
//            if l == r {
//                rangeR = l
//                break
//            }
//            l = mid
//        } else {
//            r = mid - 1
//        }
//    }
//
//    return [rangeL, rangeR]
//}
//
//print(searchRange(nums, target))





























//let nums = [4,5,6,7,0,1,2]
//
//func findMin(_ nums: [Int]) -> Int {
//    var left = 0
//    var right = nums.count - 1
//    while right - left > 1 {
//        let mid = left + (right - left) / 2
//        if (nums[mid] > nums[left] && nums[mid] > nums[right]) {
//            left = mid
//        } else {
//            right = mid
//        }
//    }
//
//    return min(nums[left], nums[right])
//}
//
//print(findMin(nums))




























////let nums = [1,2,3,1]
//let nums = [1,2,1,3,5,6,4]
////let nums = [2,1]
//
//
//func findPeakElement(_ nums: [Int]) -> Int {
//    guard nums.count > 1 else { return 0 }
//    var l = 0
//    var r = nums.count - 1
//
//    while l != r {
//        let mid = l + (r - l) / 2
//        print(mid)
//
//        if nums[mid] < nums[mid + 1]{
//            l = mid + 1
//        }
//        else {
//            r = mid
//        }
//    }
//
//    return l
//}
//
//print(findPeakElement(nums))


























//let n = 5
//let bad = 4
//
//func isBadVersion(_ n: Int) -> Bool {
//    return n == bad
//}
//
//func firstBadVersion(_ n: Int) -> Int {
//    var left = 0
//    var right = n
//
//    while left < right {
//        let mid = (left + right) / 2
//        if isBadVersion(mid) {
//            right = mid
//        }
//        else {
//            left = mid + 1
//        }
//    }
//
//    return right
//}
//
//print(firstBadVersion(n))





























//let nums = [4,5,6,7,0,1,2]
//let target = 0
//
//func search(_ nums: [Int], _ target: Int) -> Int {
//    let sorted = nums.enumerated().sorted(by: { $0.element < $1.element })
//
//    var low = 0
//    var high = nums.count - 1
//
//    while low <= high {
//        let mid = (low + high) / 2
//        if sorted[mid].element == target { return sorted[mid].offset }
//        sorted[mid].element > target ? (high = mid - 1) : (low = mid + 1)
//    }
//    return -1
//
//}
//
//print(search(nums, target))










//let n = 2
//let pick = 1
//
//func guess(_ num: Int) -> Int {
//    if num == pick {
//        return 0
//    }
//    else if num > pick {
//        return -1
//    }
//    return 1
//}
//
//
//func guessNumber(_ n: Int) -> Int {
//    var low = 0
//    var high = n
//
//    while low <= high {
//        let mid = (low + high) / 2
//
//        switch guess(mid){
//        case 0: return mid
//        case -1: high = mid - 1
//        case 1: low = mid + 1
//        default:
//            break
//        }
//    }
//    return -1
//}
//
//print(guessNumber(10))






























//let x = 4
//
//func mySqrt(_ x: Int) -> Int {
//    guard x > 3 else {return x == 0 ? 0 : 1}
//
//    var low = 0
//    var high = x / 2
//
//    while low < high {
//        let mid = (low + high) / 2
//
//        if mid * mid > x {
//            high = mid - 1
//        }
//        else {
//            low = mid + 1
//        }
//    }
//
//    return low * low > x ? low - 1 : low
//}
//
//print(mySqrt(x))

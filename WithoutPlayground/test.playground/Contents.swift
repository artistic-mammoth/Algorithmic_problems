
let nums = [4,5,6,7,0,1,2]
let target = 0

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

print(search(nums, target))










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

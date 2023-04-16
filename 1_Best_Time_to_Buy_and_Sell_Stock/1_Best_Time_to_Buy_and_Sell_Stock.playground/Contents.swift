class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minPrice = Int.max
        var maxProfit = 0

        for index in 0..<prices.endIndex {
            if prices[index] < minPrice {
                minPrice = prices[index]
            }

            if (prices[index] - minPrice) > maxProfit {
                maxProfit = prices[index] - minPrice
            }
        }

        return maxProfit
    }
}

let test1 = [7,1,5,3,6,4]
let test2 = [7,6,4,3,1]

let solution = Solution()
print(solution.maxProfit(test1))
print(solution.maxProfit(test2))

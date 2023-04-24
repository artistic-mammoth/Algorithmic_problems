# 121. Best Time to Buy and Sell Stock

[leetcodelink](https://leetcode.com/problems/best-time-to-buy-and-sell-stock)

I have 3 solution stages.

1. First try

```swift
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minPrice = prices[0]
        var maxProfit = 0

        for item in prices {
            if item < minPrice {
                minPrice = item
            }

            if (item - minPrice) > maxProfit {
                maxProfit = item - minPrice
            }
        }

        return maxProfit
    }
}
```
- Status: Accepted
- Runtime: 803 ms (24.5%)
- Memory Usage: 18 MB (60.55%)

2. Improving

Improving by looking in other solutions. Trying to use min and max func in swift and remove an array.

```swift
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit = 0
        var minPrice = Int.max

        for i in 0..<prices.endIndex {
            minPrice = min(minPrice, prices[i])
            maxProfit = max(maxProfit, prices[i] - minPrice)
        }
        return maxProfit
    }
}
```
- Status: Accepted
- Runtime: 769 ms (98.38%)
- Memory Usage: 18.2 MB (12.93%)

3. Last chance

Compromis of usage inlanguage functions and my understanding of problem.

```swift
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
```

- Status: Accepted
- Runtime: 789 ms (59.13%)
- Memory Usage: 17.8 MB (75%)
import UIKit

func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
    var result = -1
    for i in 0..<keyboards.count {
        for j in 0..<drives.count {
            let totalSpent =  keyboards[i] + drives[j]
            if totalSpent <= b && totalSpent > result {
                result = totalSpent
                if result == b {
                    return result
                }
            }
        }
    }
    
    return result
}

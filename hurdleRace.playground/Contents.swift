import UIKit

func hurdleRace(k: Int, height: [Int]) -> Int {
    let max = height.max()!
    var result = 0
    if k >= max {
        return result
    }
    result = max - k
    return result
}


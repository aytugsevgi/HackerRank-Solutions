import UIKit

func minimumDistances(a: [Int]) -> Int {
    var minDistance = Int.max
    for i in 0..<a.count {
        for j in i+1..<a.count {
            let item1 = Int(Array(a)[i])
            let item2 = Int(Array(a)[j])
            let distance = j - i
            if item1 == item2 && distance < minDistance {
                minDistance = distance
            }
        }
    }
    if minDistance == Int.max {
        return -1
    }
    return minDistance

}





import UIKit

func circularArrayRotation(a: [Int], k: Int, queries: [Int]) -> [Int] {
    var qArray = [Int]()
    let kRealValue = k % a.count
    for query in queries {
        var valueIndex = query - kRealValue
        while valueIndex < 0 {
            valueIndex = a.count + valueIndex
        }
        if valueIndex >= a.count {
            valueIndex = valueIndex % a.count
        }
        print(valueIndex)
        qArray.append(a[valueIndex])
    }
    return qArray
}

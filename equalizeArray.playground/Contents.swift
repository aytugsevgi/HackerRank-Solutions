import UIKit

func equalizeArray(arr: [Int]) -> Int {
    var map = [Int:Int]()
    for item in arr {
        if map[item] != nil {
            map.updateValue(map[item]! + 1, forKey: item)
        } else {
            map[item] = 1
        }
    }
    var maxValue = 0
    var totalValue = 0
    for (key, value) in map {
        if value > maxValue {
            maxValue = value
        }
        totalValue += value
    }
    totalValue -= maxValue
    return totalValue
}


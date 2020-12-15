import UIKit

func pickingNumbers(a: [Int]) -> Int {
    var map : Dictionary<Int, Int> = [Int:Int]()
    
    for key in a {
        if let value = map[key] {
            map.updateValue(value+1, forKey: key)
        }
        else {
            map[key] = 1
        }
    }
    var result = 0
    
    for (key, value) in map {
        var total = value
        if let total2 = map[key+1]{
            total += total2
            
        }
        if total > result {
            result = total
        }
    }
    
    return result
}

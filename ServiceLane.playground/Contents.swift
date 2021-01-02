import UIKit

func serviceLane(n: Int, width: [Int], cases: [[Int]]) -> [Int] {
    var result = [Int]()
    
    for c in cases {
        let temp  = width[c[0]...c[1]]
        
        result.append(temp.min()!)
        
    }
    
    
    
    return result
}



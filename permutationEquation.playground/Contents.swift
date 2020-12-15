import UIKit

func permutationEquation(p: [Int]) -> [Int] {
    var result = [Int]()
    var index = -1
    var elementOnIndex = -1
    for i in 0..<p.count {
        index = p.firstIndex(of: i+1)!
        elementOnIndex = p.firstIndex(of: index + 1)!
        result.append(elementOnIndex+1)
        
    }
    return result

}

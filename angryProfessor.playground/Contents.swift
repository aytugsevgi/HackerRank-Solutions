import UIKit

func angryProfessor(k: Int, a: [Int]) -> String {
    var count = 0
    
    for studentArrivedTime in a {
        if studentArrivedTime <= 0 {
            count += 1
            if count == k {
                return "NO"
            }
        }
    }
    return "YES"
}

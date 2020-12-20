import UIKit

func countingValleys(steps: Int, path: String) -> Int {
    var countOfValleys = 0
    var currentDept = 0
    for i in 0..<path.count {
        let nextStep = String(Array(path)[i])
        if nextStep == "D" {
            currentDept -= 1
        }
        else {
            if currentDept == -1 {
               countOfValleys += 1
            }
            currentDept += 1
        }
    }
    
    return countOfValleys
}

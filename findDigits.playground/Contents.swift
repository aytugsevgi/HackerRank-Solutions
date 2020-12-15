import UIKit

func findDigits(n: Int) -> Int {
    var tempN = n
    var countOfDivisor = 0
    while tempN != 0 {
        let digit = tempN % 10
        if digit != 0 && n % digit == 0 {
            countOfDivisor += 1
        }
        tempN = tempN / 10
    }
    return countOfDivisor

}

findDigits(n: 10)

import UIKit

func kaprekarNumbers(p: Int, q: Int) -> Void {
    var kaprekarList = [Int]()
    var sumOfParts = 0
    for i in p...q {
        sumOfParts = 0
        let square = i*i
        let squareStr = String(square)
        var squarePart1Length = 0
        var squarePart2Length = 0
        if squareStr.count % 2 == 1 {
            squarePart1Length = squareStr.count / 2
            squarePart2Length = squareStr.count / 2 + 1
        } else {
            squarePart1Length = squareStr.count / 2
            squarePart2Length = squareStr.count / 2
        }
        let squarePart1 = squareStr.prefix(squarePart1Length)
        let squarePart2 = squareStr.suffix(squarePart2Length)
        if let part1 = Int(squarePart1), let part2 = Int(squarePart2) {
            sumOfParts = part1 + part2
        }
        else if let part1 = Int(squarePart1) {
            sumOfParts = part1
        }
        else if let part2 = Int(squarePart2) {
            sumOfParts = part2
        }
        if i == sumOfParts {
            kaprekarList.append(i)
        }
    }
    if kaprekarList.isEmpty {
        print("INVALID RANGE")
    } else {
        for item in kaprekarList {
            print(item, terminator: " ")
        }
    }

}


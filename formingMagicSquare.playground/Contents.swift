import UIKit

func formingMagicSquare(s: [[Int]]) ->Int {
    let maxValue = s.count * s.count
    let avr = (maxValue + 1)/2
    let total = avr * s.count
    var distanceToTotal = 0
    for subArray in s {
        distanceToTotal += abs(total - subArray.reduce(0, {$0 + $1}))
    }
    
    return distanceToTotal
}



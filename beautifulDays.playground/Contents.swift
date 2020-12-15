import UIKit

func beautifulDays(i: Int, j: Int, k: Int) -> Int {
    var beautifulDayCount = 0
    for a in i...j {
        var temp = a
        var reverse = 0
        while (temp != 0) {
            reverse = reverse * 10 + (temp % 10)
            temp = temp / 10
        }
        let result : Float = Float(abs( a - reverse )) / Float(k)
        
        if result.remainder(dividingBy: 1.0) == 0.0{
            beautifulDayCount += 1
        }
    }
    return beautifulDayCount

}

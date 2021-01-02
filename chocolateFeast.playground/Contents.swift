import UIKit

func chocolateFeast(n: Int, c: Int, m: Int) -> Int {
    var result = 0;
    result += Int(floor(Double(n/c)))
    var temp = result
    var kalan = 0
    while temp >= m {
        kalan = temp % m
        temp = Int(floor(Double(temp / m)))
        result += temp
        temp += kalan
    }
    return result
}



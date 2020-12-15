import UIKit

func repeatedString(s: String, n: Int) -> Int {
    var countA = 0
    let repeatCount = Int(n / s.count)
    let mod = n % s.count
    
    for i in 0..<s.count {
        if "a" == String(Array(s)[i]) {
            countA += 1
        }
    }
    countA *= repeatCount
    for i in 0..<mod {
        if "a" == String(Array(s)[i]) {
            countA += 1
        }
    }
    
    return countA
}

import UIKit

func saveThePrisoner(n: Int, m: Int, s: Int) -> Int {
    var counter = s; // 0.step
    for _ in 1..<m {
        if counter > n {
            counter = s
        }
        else{
            counter += 1
        }
    }
    return counter
}

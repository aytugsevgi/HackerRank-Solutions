import UIKit

func viralAdvertising(n: Int) -> Int {
    var shared = 5.0
    var liked = floor(5/2)
    var cumulative = liked
    for _ in 2...n {
        shared = liked * 3.0
        liked = floor(shared/2)
        cumulative += liked
    }
    return Int(cumulative)
}

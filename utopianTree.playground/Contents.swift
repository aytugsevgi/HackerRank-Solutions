import UIKit

func utopianTree(n: Int) -> Int {
    var height = 1
    for i in 0..<n{
        if i % 2 == 0 {
            height *= 2
        }
        else {
            height += 1
        }
    }
    return height
}

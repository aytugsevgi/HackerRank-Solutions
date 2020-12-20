import UIKit

func jumpingOnClouds(c: [Int]) -> Int {
    var countOfJumping = 0
    var counter = 0
    while counter != c.count - 1 {
        if c.count - counter > 2 && c[counter+2] != 1 {
            counter += 2
        } else {
          counter += 1
        }
        countOfJumping += 1
    }
    
    
    return countOfJumping

}

jumpingOnClouds(c: [0,0,1,0,0,1,0])

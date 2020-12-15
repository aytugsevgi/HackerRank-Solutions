import UIKit


func libraryFine(d1: Int, m1: Int, y1: Int, d2: Int, m2: Int, y2: Int) -> Int {
    
    if y1 > y2 {
        return 10000
    }
    else if y1 == y2 {
        if m1 > m2 {
            return (m1 - m2) * 500
            
        }
        else if m1 == m2 {
            if d1 > d2 {
                return (d1 - d2) * 15
            }
        }
    }
    return 0
}
 


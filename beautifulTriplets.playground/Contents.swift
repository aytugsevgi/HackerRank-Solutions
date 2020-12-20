import UIKit

func beautifulTriplets(d: Int, arr: [Int]) -> Int {
    var myArray = [Int]()
    var counter = 0
    for i in 0..<arr.count {
        myArray.removeAll()
        for j in i+1..<arr.count {
            let item1 = Int(Array(arr)[i])
            let item2 = Int(Array(arr)[j])
            if myArray.isEmpty {
                if item2 - item1 == d {
                    myArray.append(item1)
                    myArray.append(item2)
                }
            } else {
                if item2 - myArray[1] == d {
                    counter += 1
                    break
                }
            }
            
        }
    }
    return counter
}



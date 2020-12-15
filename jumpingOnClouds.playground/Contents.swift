import UIKit

func jumpingOnClouds(c: [Int], k: Int) -> Int {
    var energy = 100
    var nextCloudIndex = k
    while nextCloudIndex % c.count != 0 {
        let cloudType = c[nextCloudIndex % c.count]
        energy = decreaseEnergy(cloudType: cloudType, energy: energy)
        nextCloudIndex += k
    }
    let firstCloudType = c[0]
    energy = decreaseEnergy(cloudType: firstCloudType, energy: energy)
    return energy
}

func decreaseEnergy(cloudType: Int, energy: Int) ->Int {
    if cloudType == 0 {
        return energy - 1
    }
    return energy - 3
}

import UIKit

func hourglassSum(arr: [[Int]]) -> Int {
    var maxHourGlassSum = Int.min
    
    for i in 0...arr.count-3 {
        for j in 1...arr[i].count-2 {
            var total = 0
            total += arr[i][j-1] + arr[i][j] + arr[i][j+1]
            total += arr[i+1][j]
            total += arr[i+2][j-1] + arr[i+2][j] + arr[i+2][j+1]
            maxHourGlassSum = total > maxHourGlassSum ? total : maxHourGlassSum
        }
    }
    
    return maxHourGlassSum
}

let arr = [[1,2,3], [4,5,6], [7,8,9]]

hourglassSum(arr: arr)





func cavityMap(grid: [String]) -> [String] {
    var myGrid = grid
    for i in 1..<myGrid.count-1 {
        for j in 1..<myGrid[i].count-1 {
            if let currentDept = Int(String(Array(myGrid[i])[j])) {
                if currentDept > Int(String(Array(myGrid[i])[j-1])) ?? currentDept+1 &&
                    currentDept > Int(String(Array(myGrid[i])[j+1])) ?? currentDept+1 &&
                    currentDept > Int(String(Array(myGrid[i-1])[j])) ?? currentDept+1 &&
                    currentDept > Int(String(Array(myGrid[i+1])[j])) ?? currentDept+1 {
                    
                    var arr =  Array(myGrid[i])
                    arr[j] = "X"
                    myGrid[i] = String(arr)
                }
            }
        }
    }
    return myGrid
}



extension String {
    func getIntElement(index: Int) -> Int {
        return Int(String(Array(self)[index]))!
    }
    func setElement(index: Int, replacedBy: Character) -> String {
        var arr =  Array(self)
        arr[index] = replacedBy
        return String(arr)
    }
}

let grid = ["989","191","111"]
cavityMap(grid: grid)

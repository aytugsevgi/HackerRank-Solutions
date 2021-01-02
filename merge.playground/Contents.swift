import UIKit

func findMedian(array: [Int]) -> Int {
    let partitionSort = dividedSort(array: array)
    let median = partitionSort[ partitionSort.count / 2 ]
    return median
}

// Listeyi parçalayıp sıralanması için gerekli fonksiyona gönderir.
func dividedSort( array: [Int] ) -> [Int] {
    if array.count == 1 {
        return array
    }
    let leftArray = Array( array[ 0 ..< array.count / 2] )
    let rightArray = Array( array[ array.count / 2 ..< array.count] )
    return mergeSort(leftArray: dividedSort(array: leftArray), rightArray: dividedSort(array: rightArray))
    }
    // Aldığı iki parçalık listeyi sıralayıp döndürür.
func mergeSort(leftArray: [Int], rightArray: [Int]) -> [Int]{
    var result = [Int]()
    var leftArray = leftArray
    var rightArray = rightArray
    while leftArray.count > 0 && rightArray.count > 0  {
        if leftArray.first! < rightArray.first! {
            result.append(leftArray.removeFirst())
        }
        
        else {
            result.append(rightArray.removeFirst())
        }
    }
    return result + leftArray + rightArray
}

findMedian(array: [5,4,3,3,3])

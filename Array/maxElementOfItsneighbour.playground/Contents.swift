import UIKit

func maxOfItsNeighbour(_ arr: [Int], _ n: Int) -> Int{
    if n == 1{
        return arr[0]
    }
    if (arr[0] > arr[1] || arr[n-2] < arr[n-1]) {
        return arr[0]
    }
    
    for i in 1 ... n-1 {
        if (arr[i] > arr[i-1] && arr[i] > arr[i+1]) {
            return arr[i]
        }
    }
    return -1
}
let arr = [10,43,45,47,84,51,14]
let maxElement = maxOfItsNeighbour(arr, arr.count)
print(maxElement)

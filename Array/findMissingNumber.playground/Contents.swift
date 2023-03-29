import UIKit


func findMissingNumber(_ arr: [Int],_ n: Int) -> Int {
    var sum = 0
    for item in arr{
        sum += item
    }
    let totalSum = n*(n+1)/2
    return totalSum - sum
}



let arr = [1,2,3,4,5,7,8,9,10]
let num = findMissingNumber(arr, arr.count+1)

import UIKit

func printSumOfAllSubArray(_ arr: [Int],_ n: Int) {
    for i in 0 ... n-1 {
        var curr = 0
        for j in i ... n-1 {
            curr += arr[j]
            print("\(curr) ",terminator: "")
        }
    }
}


let arr = [3,2,6,1,5]
printSumOfAllSubArray(arr,arr.count)


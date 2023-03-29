import UIKit

//find all duplicate in array in O(n) time complexity and O(1) space complexity
func findDuplicate(_ array: [Int], _ n: Int) {
    var arr = array
    for i in 0 ..< n {
        arr[arr[i]%n] =  arr[arr[i]%n] + n
    }
    
    for item in arr {
        if item >= arr.count * 2 {
            print("\(item % n) ", terminator: "")
        }
    }
}

let arr = [0,4,3,2,7,8,2,3,1]
let arr2 = [1,2,3,4,5,3,2,1]

findDuplicate(arr2, arr2.count)

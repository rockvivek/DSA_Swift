import UIKit

func unionOfArray(_ arr1: inout [Int],_ arr2: inout [Int]) -> [Int] {
    for item in arr2 {
        if !arr1.contains(item) {
            arr1.append(item)
        }
    }
    return arr1
}

func intersectionOfArray(_ arr1: inout [Int],_ arr2: inout [Int]) -> [Int] {
    var arr = [Int]()
    for item in arr2 {
        if arr1.contains(item) {
            arr.append(item)
        }
    }
    return arr
}

func printArray(_ arr: [Int]){
    for item in arr {
        print("\(item) ", terminator: "")
    }
}

var arr1 = [1,3,2,4,5,6]
var arr2 = [3,6,7,8,9,4,10]
let arr = intersectionOfArray(&arr1,&arr2)
print(arr)


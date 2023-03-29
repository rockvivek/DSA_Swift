import UIKit

func cyclicRotateAnArrayByOne(_ array:[Int],_ n: Int) -> [Int] {
    var arr = array
    let value = arr[0]
    arr.removeFirst()
    arr.append(value)
    return arr
}

func cyclicRotateAnArray(_ array:[Int],_ n: Int,_ d: Int) -> [Int] {
    var arr = array
    for _ in 1 ... d {
        arr = cyclicRotateAnArrayByOne(arr,arr.count)
    }
    return arr
}

func printArray(_ arr: [Int]){
    for item in arr {
        print("\(item) ", terminator: "")
    }
}


var arr = [1,2,3,4,5,6,7,8,9,10]
let res = cyclicRotateAnArray(arr, arr.count, 3)
printArray(res)

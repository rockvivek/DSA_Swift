import UIKit

func maxTillithElement(_ arr: [Int],_ n: Int) -> [Int] {
    var max = arr[0]
    var res = [Int]()
    res.append(arr[0])
    for i in 1 ..< n {
        max = max > arr[i] ? max : arr[i]
        res.append(max)
    }
    return res
}

let arr = [64,82,33,18,95,54, 102, 46, 462]
let res = maxTillithElement(arr, arr.count)
print(res)

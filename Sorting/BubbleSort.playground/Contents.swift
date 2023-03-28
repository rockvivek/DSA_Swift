import UIKit

func printArray(_ arr: [Int]) {
    for item in arr {
        print("\(item) ", terminator: "")
    }
}

func bubbleSort(_ array: [Int],_ n: Int) {
    var arr = array
    for i in 1 ..< n{
        for j in 0 ..< n - i {
            if arr[j] > arr[j+1] {
                let temp = arr[j]
                arr[j] = arr[j+1]
                arr[j+1] = temp
            }
        }
    }
    printArray(arr)
}


let arr = [43,98,12,64,51,11,71,47]
bubbleSort(arr, arr.count)


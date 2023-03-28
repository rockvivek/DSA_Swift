import UIKit

func printArray(_ arr: [Int]) {
    for item in arr {
        print("\(item) ", terminator: "")
    }
}

func selectionSort(_ array: [Int],_ n: Int) {
    var arr = array
    for i in 0 ..< n{
        for j in i+1 ..< n {
            if arr[i] > arr[j] {
                let temp = arr[i]
                arr[i] = arr[j]
                arr[j] = temp
            }
        }
    }
    printArray(arr)
}


let arr = [43,98,12,64,51,11,71,47]
selectionSort(arr, arr.count)

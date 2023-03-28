import UIKit

func printArray(_ arr: [Int]) {
    for item in arr {
        print("\(item) ", terminator: "")
    }
}

func insertionSort(_ array: [Int],_ n: Int) {
    var arr = array
    for i in 1 ..< n {
        let key = arr[i]
        var j = i - 1
        while j >= 0 && arr[j] > key {
            arr[j+1] = arr[j]
            j = j - 1
        }
        arr[j+1] = key
    }
    printArray(arr)
}


let arr = [43,98,12,64,51,11,71,47]
insertionSort(arr, arr.count)



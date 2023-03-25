import UIKit
import Foundation

func reverseAnArray<T>(arr: inout [T]) {
    var start = 0, end = arr.count - 1
    while start < end {
        let temp = arr[start]
        arr[start] = arr[end]
        arr[end] = temp
        start = start + 1
        end = end - 1
    }
    printArray(arr: arr)
}

func printArray<T>(arr: [T]) {
    for item in arr {
        print(item, separator: " ,")
    }
}

var arr:[Int] = [1,2,3,4,5]
printArray(arr: arr)
reverseAnArray(arr: &arr)

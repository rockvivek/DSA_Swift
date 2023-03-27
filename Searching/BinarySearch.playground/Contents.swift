import UIKit

func binarySearchIteration(_ arr:[Int], _ key: Int) -> Int{
    var start = 0
    var end = arr.count
    
    while(start <= end){
        var mid = (start + end) / 2
        if arr[mid] == key {
            return mid
        }
        else if (arr[mid] < key) {
                start = mid + 1
        }
        else {
            end = mid - 1
        }
    }
    return -1
}

func binarySearchRecursion(_ arr:[Int],_ key: Int,_ start: Int,_ end: Int) -> Int {
    if start > end {
        return -1
    }
    let mid = (start + (end - start) / 2)
    if arr[mid] == key {
        return mid
    }
    if arr[mid] > key {
        return binarySearchRecursion(arr, key, start, mid - 1)
    }
    else{
        return binarySearchRecursion(arr, key, mid + 1, end)
    }
}

let arr = [1,2,3,4,5,6,7,8,9]
let index = binarySearchRecursion(arr, 12, 0, arr.count)
if index != -1 {
    print("Element Found: \(index)")
}
else {
    print("Element Not found")
}

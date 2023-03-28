import UIKit

//findNumberOfOccuranceInArray
func bruteForce(_ arr: [Int],_ key: Int) -> Int{
    var count = 0
    for item in arr {
        if item == key {
            count = count + 1
        }
    }
    return count
}

//using binarySearch
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

func countOccurance(_ arr: [Int], _ n: Int,_ key: Int) -> Int {
    let ind = binarySearchIteration(arr, key)
    if ind == -1 {
        return 0
    }
    var count = 1
    var left = ind - 1
    while(left > 0 && arr[left] == key) {
        count =  count + 1
        left = left - 1
    }
    
    var right = ind + 1
    while(right < n && arr[right] == key) {
        count =  count + 1
        right = right + 1
    }
    return count
}

//using Map
func countOccuranceMap(_ arr: [Int],_ key: Int) -> Int {
    var hashMap = [Int: Int]()
    for item in arr {
        hashMap[item] = (hashMap[item] ?? 0) + 1
    }
    return hashMap[key] ?? 0
}



let arr = [1,1,2,2,2,2,2,3,3,3]
let map = countOccuranceMap(arr,2)

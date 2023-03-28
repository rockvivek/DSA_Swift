import UIKit

func kthSmallestElement1(_ array: [Int], _ n: Int,_ k: Int) -> Int{
    //sort array using Bubble Sort
    var arr = array
    for i in 1 ... n-1 {
        for j in 0 ..< n - i {
            if arr[j] > arr[j+1] {
                let temp = arr[j]
                arr[j] = arr[j+1]
                arr[j+1] = temp
            }
        }
    }
    
    return arr[k-1]
}

func kthSmallestElementUsingSet(_ array: [Int], _ n: Int,_ k: Int) -> Int {
    //sort array using Bubble Sort
    var arr = array
    var arrSet = Set<Int>()
    for item in arr {
        arrSet.insert(item)
    }
    let sortedSet = arrSet.sorted()

    if k <= sortedSet.count {
       let kthSmallest = sortedSet[k-1]
       return kthSmallest
    } else {
       return -1
    }
}


var arr = [7,10,4,3,20,15,1]
//let smallestElement = kthSmallestElement1(arr, arr.count, 3)
kthSmallestElementUsingSet(arr, arr.count, 3)

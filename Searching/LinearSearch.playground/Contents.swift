import UIKit

func linearSearch(_ arr: [Int],_  key: Int) -> Int{
    for (index,item) in arr.enumerated(){
        if  item == key {
            return index
        }
    }
    return -1
}

let arr = [1,2,3,4,5,6,7,8,9]
let index = linearSearch(arr, 812)
if index != -1 {
    print("Element Found: \(index)")
}
else {
    print("Element Not found")
}

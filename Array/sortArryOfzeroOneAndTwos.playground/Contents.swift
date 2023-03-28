import UIKit

//sortArray of 0, 1 and 2
func bruteForceApproch(_ array: [Int]) -> [Int]{
    var arr = array
    var count0 = 0, count1 = 0, count2 = 0
    for item in arr {
        if item == 0 {
            count0 = count0 + 1
        }
        else if item == 1 {
            count1 = count1 + 1
        }
        else {
            count2 = count2 + 1
        }
    }
    
    for i in 0 ..< count0 {
        arr[i] = 0
    }
    for i in count0 ..< count0+count1 {
        arr[i] = 1
    }
    for i in count0+count1 ..< arr.count {
        arr[i] = 2
    }
    return arr
}

let arr = [0,2,1,2,1,2,1,0,1,2,1,0,0,1,1,0,2]
let finalArray = bruteForceApproch(arr)
print(finalArray)

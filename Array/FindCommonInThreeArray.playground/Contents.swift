import UIKit

func findCommonInThreeArray(_ arr1: [Int],_ arr2: [Int],_ arr3: [Int]){
    let n1 = arr1.count
    let n2 = arr2.count
    let n3 = arr3.count
    var flag = false
    var i = 0, j = 0, k = 0
    while (i < n1 && j < n2 && k < n3) {
        if (arr1[i] == arr2[j] && arr1[i] == arr3[k]) {
            i += 1
            j += 1
            k += 1
            flag = true
            print("\(arr1[i]) ",terminator: "")
        }
        let minValue = min(min(arr1[i],arr2[j]),arr3[k])
        if minValue == arr1[i] {
            i += 1
        }
        else if minValue == arr2[j] {
            j += 1
        }
        else {
            k += 1
        }
    }
    if !flag {
        print("No Common Value Found")
    }
}


let arr1 = [1,5,10,20,40,80]
let arr2 = [6,7,20,80,100]
let arr3 = [3,4,15,20,30,70,80,100]


findCommonInThreeArray(arr1,arr2,arr3)

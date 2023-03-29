import UIKit

func countPairOfGivenSum(_ array: [Int],_ n: Int,_ sum: Int) -> Int {
    var count = 0
    var temp = [Int]()
    var arr = array
    for item in arr {
        if temp.contains(sum - item){
            count += 1
        }
        else {
            temp.append(item)
        }
    }
    return count
}



let arr = [1,5,7,-1,4,2]
let count = countPairOfGivenSum(arr,arr.count,6)
print(count)

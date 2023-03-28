import UIKit

//find subarray with given sum
func subArrayWithGivenSum(_ arr: [Int], _ n: Int,_ finalSum: Int) -> (Int, Int) {
    for i in 0 ..< n {
        var sum = 0
        for j in i ..< n {
            sum  = sum + arr[j]
            if sum == finalSum {
                return (i,j)
            }
            if sum > finalSum {
                sum = 0
                break
            }
        }
    }
    return (-1, -1)
}

//using sliding window technique
func slidingWindowTechnique(_ arr: [Int], _ n: Int,_ finalSum: Int) -> (Int, Int) {
    var sum = 0
    var start = 0
    for i in 0 ... n - 1 {
        sum += arr[i]
        if sum == finalSum {
            return (start, i)
        }
        
        while(sum > finalSum) {
            sum -= arr[start]
            start = start + 1
            if sum == finalSum {
                return (start, i)
            }
        }
    }
    return (-1, -1)
}

var arr = [1,4,20,3,10,5]
let (start, end) = slidingWindowTechnique(arr,arr.count,33)
print(start, end)


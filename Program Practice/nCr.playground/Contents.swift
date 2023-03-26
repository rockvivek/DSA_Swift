import UIKit
import UIKit

func factorial(_ fact: Int) -> Int{
    var factorial = 1
    for i in 2 ... fact {
            factorial = factorial * i
    }
    return factorial
}

func findnCr(n: Int, r: Int) -> Int {
    let res = factorial(n) / (factorial(r) * factorial(n-r))
    return res
}

let ncr = findnCr(n: 10, r: 2)
print(ncr)

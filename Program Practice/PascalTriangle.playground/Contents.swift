import UIKit

/*
 1
 1 1
 1 2 1
 1 3 3 1
 1 4 6 4 1
 */


func factorial(_ fact: Int) -> Int{
    var factorial = 1
    if fact == 0 || fact == 1 {
        return factorial
    }
    for i in 2 ... fact {
            factorial = factorial * i
    }
    return factorial
}

func nCr(_ n: Int, _ r: Int) -> Int {
    let res = factorial(n) / (factorial(r) * factorial(n-r))
    return res
}

func findPascalTriangle(rows: Int) {
    for i in 0 ..< rows {
        for j in 0 ... i {
            print("\(nCr(i,j)) ",terminator: "")
        }
        print("\n")
    }
}

findPascalTriangle(rows: 5)

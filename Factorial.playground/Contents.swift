import UIKit

func factorial(_ fact: Int) -> Int{
    var factorial = 1
    for i in 2 ... fact {
            factorial = factorial * i
    }
    return factorial
}

let fact = factorial(10)
print(fact)

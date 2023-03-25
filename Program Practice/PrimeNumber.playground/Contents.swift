import UIKit

//prime number
func checkPrimeNumber(number: Int) -> Bool{
    var isPrime = true
    for i in 2 ... Int(sqrt(Double(number))) {
        if number % i == 0 {
            isPrime = false
            break
        }
    }
    return isPrime
}

let number = 71
let number2 = 7834
checkPrimeNumber(number: number)

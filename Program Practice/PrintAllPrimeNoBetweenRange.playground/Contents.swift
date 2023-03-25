import UIKit

// check all prime number between range
func allPrimeNumber(){
    var allPrime = [Int]()
    for i in 2 ... 100 {
        if isPrime(i) {
            allPrime.append(i)
        }
    }
    print(allPrime)
}

//prime number
func isPrime(_ number: Int) -> Bool{
    var isPrime = true
    for i in 2 ... Int(sqrt(Double(number))) {
        if number % i == 0 {
            isPrime = false
            break
        }
    }
    return isPrime
}

let start = 2
let end = 100
allPrimeNumber()
//print(primes)

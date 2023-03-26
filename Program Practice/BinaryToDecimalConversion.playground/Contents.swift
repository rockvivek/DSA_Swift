import UIKit

func binaryToDecimalConversion(_ binaryNumber: Int) -> Int{
    var power = 1, sum = 0,binary = binaryNumber
    while binary != 0 {
        let lastDigit = binary % 10
        sum += lastDigit * power
        power = power * 2
        binary = binaryNumber / 10
    }
    return sum
}

let decimal = binaryToDecimalConversion(100110)
print(decimal)
 

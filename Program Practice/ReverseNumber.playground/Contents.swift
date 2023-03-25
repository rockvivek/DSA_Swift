import UIKit

//Reverse a number
func reverseNumber(num: Int) -> Int{
    var number = num
    var result = 0
    while (number != 0){
        var temp = number % 10
        result = result * 10 + temp
        number = number / 10
    }
    return result
}

reverseNumber(num: 1234)

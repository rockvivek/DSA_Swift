import UIKit

//ArmStrong Number

func armStrongNumber(number: Int) -> Bool{
    var sum = 0
    var num = number
    while num != 0{
        let digit = num % 10
        sum = sum + digit * digit * digit
        num  = num / 10
    }
    return (sum == number) ? true : false
}

let armStrong = 153
let notarmStrong = 672
armStrongNumber(number: notarmStrong)

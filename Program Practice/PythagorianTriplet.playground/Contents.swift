import UIKit

func isPythagorianTriplet(_ a:Int, _ b: Int,_ c: Int) -> Bool {
    if ((a * a == b * b + c * c) ||
        (a * a + b * b == c * c) ||
        (a * a + c * c == b * b)) {
        return true
    }
    return false
}


if isPythagorianTriplet(3,4,6) {
    print("These 3 numbers are pythagorian triplet")
}
else {
    print("Not a pythagorian triplet")
}


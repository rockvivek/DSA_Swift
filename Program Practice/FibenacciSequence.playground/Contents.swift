import UIKit

//Fibenacci series

func fibenacciSeries(_ limit: Int) {
    var first = 0
    var second = 1
    print("\(first) \(second) ", terminator: "")
    for _ in 1 ... limit - 2{
        var sum = first + second
        second = first
        first = sum
        print("\(sum) ")
    }
}

fibenacciSeries(8)

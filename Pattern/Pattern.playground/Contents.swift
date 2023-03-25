import UIKit

/*
full rectangle pttern
* * * *
* * * *
* * * *
* * * *
* * * *
 
*/
func solidRectanglePattern(row: Int, col: Int) {
    for _ in 0 ..< row {
        for _ in 0 ..< col {
            print("* ",separator: " ",terminator: "")
        }
        print("\n")
    }
}

/*
hollow rectangle pttern
* * * *
*     *
*     *
*     *
* * * *
 
*/

func hollowRectanglePattern(row: Int, col: Int) {
    for i in 0 ..< row {
        for j in 0 ..< col {
            if (i == 0 || j == 0 || i == row - 1 || j == col - 1) {
                print("* ",separator: " ",terminator: "")
            }
            else {
                print("  ",terminator: "")
            }
        }
        print("\n")
    }

}

/*
right half triangle pttern
    *
   **
  ***
 ****
*****
 
*/

func rightHalfTrianglePattern(row: Int, col: Int) {
    for i in 0 ..< row {
        for _ in 1 ..< row - i {
            print("  ",separator: "", terminator: "")
        }
        for _ in 0 ... i {
                print("* ",terminator: "")
        }
        print("\n")
    }

}

/*
inverted half pyramid pttern
*****
****
***
**
*
*/

func rightHalfTrianglePattern(row: Int) {
    for i in 0 ..< row {
        for _ in 0 ..< row - i {
            print("* ",separator: "", terminator: "")
        }
        print("\n")
    }

}


/*
half pyramid using number pttern
1
22
333
4444
55555
*/

func halfPattern(row: Int) {
    for i in 1 ... row {
        for _ in 0 ..< i {
            print("\(i) ",separator: "", terminator: "")
        }
        print("\n")
    }

}

/*
floyd Triangle pttern
1
2 3
4 5 6
7 8 9 10
11 12 13 14 15
*/

func floydTrianglePttern(row: Int) {
    var sum = 0
    for i in 1 ... row {
        for _ in 0 ..< i {
            sum += 1
            print("\(sum) ",separator: "", terminator: "")
        }
        print("\n")
    }

}

/*
butterfly pttern
*      *
**    **
***  ***
********
********
***  ***
**    **
*      *
*/

func butterflyPttern(row: Int) {
    //row = 4
    for i in 1 ... row {
        for _ in 1 ... i {
            print("* ",separator: "",terminator: "")
        }
        for _ in 0 ..< 2*(row - i) {
            print("  ",separator: "",terminator: "")
        }
        for _ in 1 ... i {
            print("* ",separator: "",terminator: "")
        }
        print("\n")
    }
    for i in 1 ... row {
        for _ in 1 ... row - i + 1 {
            print("* ",separator: "",terminator: "")
        }
        for _ in 0 ..< 2*(i - 1) {
            print("  ",separator: "",terminator: "")
        }
        for _ in 1 ... row - i + 1 {
            print("* ",separator: "",terminator: "")
        }
        print("\n")
    }

}

/*
inverted pattern
1 2 3 4 5
1 2 3 4
1 2 3
1 2
1
*/

func invertedPattern(row: Int) {
    for i in 0 ..< row {
        for j in 0 ..< row - i  {
            print("\(j+1) ",separator: "", terminator: "")
        }
        print("\n")
    }

}

/*
0-1 pattern
1
0 1
1 0 1
0 1 0 1
1 0 1 0 1
*/

func zeroOnePattern(row: Int) {
    for i in 0 ..< row {
        for j in 0 ... i  {
            if (i+j) % 2 == 0{
                print("1 ",separator: "", terminator: "")
            }
            else {
                print("0 ",separator: "", terminator: "")
            }
            
        }
        print("\n")
    }
}

/*
rhombus pattern
    *****
   *****
  *****
 *****
*****
*/

func rhombusPattern(row: Int) {
    for i in 0 ..< row {
        for _ in 0 ... row - i - 1  {
            print(" ",separator: "", terminator: "")
        }
        for _ in 0 ..< row  {
            print("* ",separator: "", terminator: "")
        }
        print("\n")
    }
}

/*
number pattern
    1
   1 2
  1 2 3
 1 2 3 4
1 2 3 4 5
*/

func numberPattern(row: Int) {
    for i in 1 ... row {
        for _ in 0 ... row - i {
            print(" ",separator: "", terminator: "")
        }
        for j in 1 ... i  {
            print("\(j) ",separator: "", terminator: "")
        }
        print("\n")
    }
}

/*
palindromic pattern
        1
      2 1 2
    3 2 1 2 3
  4 3 2 1 2 3 4
5 4 3 2 1 2 3 4 5
*/

func palindromicPattern(row: Int) {
    for i in 1 ... row {
        for _ in 0 ... 2*(row - i) {
            print(" ",separator: "", terminator: "")
        }
        for j in stride(from: i, through: 1, by: -1)  {
            print("\(j) ",separator: "", terminator: "")
        }
       for i in 1 ..< i  {
           print("\(i+1) ",separator: "", terminator: "")
       }
        print("\n")
    }
}

/*
star pattern
 ------*
 ----* * *
 --* * * * *
 * * * * * * *
 * * * * * * *
 --* * * * *
 ----* * *
 ------*
*/

func starPattern(row: Int) {
    for i in 1 ... 2 * row {
        for _ in 1 ... 2 * (row - i) {
            print(" ",separator: "", terminator: "")
        }
        for _ in 1 ... 2 * i - 1 {
            print("* ",separator: "", terminator: "")
        }
        print("\n")
    }
}


//solidRectanglePattern(row: 5, col: 4)
//hollowRectanglePattern(row: 5, col: 4)
//rightHalfTrianglePattern(row: 5, col: 5)
//rightHalfTrianglePattern(row: 5)
//halfPattern(row: 5)
//floydTrianglePttern(row: 5)
//butterflyPttern(row: 4)
//invertedPattern(row: 5)
//zeroOnePattern(row: 5)
//rhombusPattern(row: 5)
//numberPattern(row: 5)
//palindromicPattern(row: 5)
//starPattern(row: 5)


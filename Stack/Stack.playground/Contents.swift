import UIKit

struct Stack<Item> {
    private var items:[Item] = []
    
    var peek: Item? {
        guard let topItem = items.last else {
            print("No Element in Stack")
            return nil
        }
        return topItem
    }
    
    var isEmpty: Bool {
        return items.isEmpty
    }
    
    var count: Int {
        return items.count
    }
    
    //push
    mutating func push(item: Item) {
        items.append(item)
    }
    
    //pop
    mutating func pop() -> Item? {
        if isEmpty { return nil }
        return items.removeLast()
    }
}

extension Stack: CustomStringConvertible {
    var description: String {
        let top = "--Stack---\n"
        let bottom = "\n-------"
        let elements = items.map({
            String(describing: $0)
        })
            .reversed()
            .joined(separator: "\n")
        return top + elements + bottom
    }
    
    func printStack() {
        print(description)
    }
   
}

var s = Stack<String>()
s.push(item: "One")
s.push(item: "Two")
s.push(item: "Three")
s.push(item: "Four")

print(s.peek!)

s.printStack()
print(s.pop()!)


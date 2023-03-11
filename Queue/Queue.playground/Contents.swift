import UIKit

struct Queue<Item> {
    
    private var items:[Item] = []
    
    var front: Item? {
        guard let topItem = items.first else {
            print("No Element in Stack")
            return nil
        }
        return topItem
    }
    
    var rear: Item? {
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
    mutating func enqueue(item: Item) {
        items.append(item)
    }
    
    //pop
    mutating func dequeue() -> Item? {
        if isEmpty { return nil }
        return items.removeFirst()
    }
}

extension Queue: CustomStringConvertible {
    var description: String {
        let top = "--Queue---\n"
        let bottom = "\n-------"
        let elements = items.map({
            String(describing: $0)
        })
            .joined(separator: "\n")
        return top + elements + bottom
    }
    
    func printQueue() {
        print(description)
    }
   
}

var q = Queue<String>()
q.enqueue(item: "One")
q.enqueue(item: "Two")
q.enqueue(item: "Three")
q.enqueue(item: "Four")

print(q.front!)
print(q.rear!)


q.printQueue()
print(q.dequeue()!)


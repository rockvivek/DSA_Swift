import UIKit

final class Node<T: Equatable>{
    
    var value: T
    var next: Node?
    
    init(value: T, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}

final class LinkedList<T: Equatable> {
    
    var head: Node<T>?
    
    init(head: Node<T>? = nil) {
        self.head = head
    }
}


//extension for linked list basic operation
extension LinkedList {
    //insert at end
    //check if head has a value if doesnot  then insert is in head
    //else find last node of linked list
    //connect last node's pointer to the new node value
    
    func insert(_ value: T) {
        //check if head's value is empty
        if self.head == nil {
            self.head = Node(value: value)
        }
        else {
         //find last node
            var lastNode = self.head!
            while (lastNode.next != nil){
                lastNode = lastNode.next!
            }
            //create a new node and connect the linked lsit
            //create
            let newNode = Node<T>(value: value)
            //connect newNode to lastNode
            lastNode.next = newNode
        }
    }
    
    //check if value is removed at the head
    //Traverse the linked list to see if the value is in the linked list.
    //Keep track of the previous Node.
    //When found, connect the previous node’s next to the next node’s v alue.

    func remove(_ value: T) {
        //chekc if the value is at head
        guard let head = self.head else {
            print("NO Data found to be deleted.")
            return
        }
        
        if head.value == value {
            self.head = self.head?.next!
            return
        }
        
        //traverse list
        var currNode = head
        var prevNode = Node<T>(value: value)
        while(currNode.value != value || currNode.next != nil) {
            prevNode = currNode
            currNode = currNode.next!
        }
        //remove extra node
        if currNode.value == value {
            if currNode.next != nil {
                prevNode.next = currNode.next!
            }
            else{
                
                
                
                prevNode.next = nil
            }
        }
    }
    
    
    func printLinkedList() {
      var current: Node! = self.head
      print("---------------")
      while current != nil && current.value != nil {
          print("\(current.value)")
        current = current.next
      }
    }
}


//estension for revered linked list
extension LinkedList{
    func reverse() {
        var prev: Node<T>? = nil
        var next: Node<T>? = nil
        guard var curr = head else {
            print("no need to Reverse")
            return
        }
        
        next = curr.next
        
        while (next !=  nil) {
            curr.next = prev
            prev = curr
            curr = next!
            next = curr.next ?? nil
        }
        curr.next = prev
        head = curr
    }
}

//Print the Middle of a given linked list
extension LinkedList {
//    func printMiddleOfLinkedList<T>() -> T{
//
//    }
}

extension LinkedList {
    func countLinkedListNode() -> Int{
        guard var head = self.head else {
            print("Empty Linked list")
            return 0
        }
        var count = 0
        while head != nil{
            count = count + 1
            if head.next !=  nil {
                head = head.next!
            }
            else {
               head = nil
            }
        }
    }
}

var myList = LinkedList<Int>()
myList.insert(1)
myList.insert(2)
myList.insert(3)
myList.insert(4)
myList.insert(5)
myList.insert(6)
myList.printLinkedList()

//myList.reverse()
//myList.printLinkedList()

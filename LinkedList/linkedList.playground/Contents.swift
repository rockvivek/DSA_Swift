import UIKit

class Node<T: Equatable>{
    var value: T? = nil
    var next: Node? = nil
}

class LinkedList<T: Equatable> {
    var head = Node<T>()
    
    //insert at end
    //check if head has a value if doesnot  then insert is in head
    //else find last node of linked list
    //connect last node's pointer to the new node value
    
    func insert(_ value: T) {
        //check if head's value is empty
        if self.head.value == nil {
            self.head.value = value
        }
        else {
         //find last node
            var lastNode = self.head
            while (lastNode.next != nil){
                lastNode = lastNode.next!
            }
            //create a new node and connect the linked lsit
            //create
            let newNode = Node<T>()
            newNode.value = value
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
        if self.head.value == value{
            self.head = self.head.next!
            return
        }
        if self.head.value != nil {
            //traverse list
            var currNode = self.head
            var prevNode = Node<T>()
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
    }
    
    
    func printLinkedList() {
      var current: Node! = self.head
      print("---------------")
      while current != nil && current.value != nil {
        print("The item is \(current.value!)")
        current = current.next
      }
    }
}


var myList = LinkedList<Int>()
myList.insert(100)
myList.insert(200)
myList.insert(300)
myList.printLinkedList()
myList.remove(100)
myList.printLinkedList()


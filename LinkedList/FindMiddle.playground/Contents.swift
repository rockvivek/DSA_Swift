import UIKit

class Node<T: Equatable> {
    var value:T
    var next: Node<T>? =  nil
    
    init(value: T, next: Node<T>? = nil) {
        self.value = value
        self.next = next
    }
    
    static func == (lhs: Node<T>, rhs: Node<T>) -> Bool {
        return lhs.value == rhs.value
    }
}

class SinglyLinkedList<T: Equatable> {
    var head: Node<T>? = nil
    
    //general functions
    func countLinkedList() -> Int{
        var count = 0
        guard self.head != nil else {
            return count
        }
        var temp = self.head
        while (temp != nil) {
            temp = temp!.next
            count = count + 1
        }
        return count
    }
    
    func printLinkedList() {
        var temp = self.head
        while temp != nil {
            print("\(temp!.value)\n")
            temp = temp!.next
        }
        print("\nList End \n")
    }
}

//insert
extension SinglyLinkedList {
    
    ///insert at beginning
    func insertAtStart(_ value: T) {
        let newNode = Node(value: value)
        
        guard self.head != nil else {
            // no node found in list
            self.head = newNode
            return
        }
        
        newNode.next = self.head
        self.head = newNode
    }
    
    func insertAtEnd(_ value: T) {
        let newNode = Node(value: value)
        
        guard self.head != nil else {
            // no node found in list
            self.head = newNode
            return
        }
        var tempNode = self.head!
        while (tempNode.next != nil) {
            tempNode = tempNode.next!
        }
        tempNode.next = newNode
    }
    
    func insertAtPosition(pos: Int,_ value: T) {
        let newNode = Node(value: value)
        
        if pos == 1 {
            print("inserted at head position")
            self.insertAtStart(value)
        }
        else if pos > countLinkedList() {
            print("Position is way beyond Inserted at last")
            self.insertAtEnd(value)
        }
        else {
            var temp:Node<T>? = self.head
            for _ in 1 ..< pos - 1 {
                temp = temp?.next != nil ? temp?.next! : nil
            }
            newNode.next = temp?.next != nil ? temp?.next! : nil
            temp?.next = newNode
        }
    }
}

//delete
extension SinglyLinkedList {
    func deleteFirstNode() -> Node<T>? {
        guard self.head != nil else {
            print("No List is present to be deleted")
            return nil
        }
        let temp = head
        head = head?.next
        return temp
    }
    
    func deleteLastNode() -> Node<T>? {
        guard self.head != nil else {
            print("No List is present to be deleted")
            return nil
        }
        var temp = head
        while (temp?.next?.next != nil){
            temp = temp?.next
        }
        let deletedNode = temp?.next
        temp?.next = nil
        return deletedNode
    }
    
    func deleteSpecificNode(value: T) -> Node<T>? {
        guard self.head != nil else {
            print("No List is present to be deleted")
            return nil
        }
        var temp = head
        while (temp?.next?.next != nil && temp?.next?.value != value){
            temp = temp?.next
        }
        
        if temp?.next?.value != value {
            print("Specified positon is not present")
            return nil
        }
        let deletedNode = temp?.next
        temp?.next = temp?.next?.next
        return deletedNode
    }
    
    func deleteAtPositon(pos: Int) -> Node<T>? {
        guard self.head != nil else {
            print("No List is present to be deleted")
            return nil
        }
        
        if pos == 1 {
            print("inserted at head position")
            return self.deleteFirstNode()
        }
        else if pos > countLinkedList() {
            print("Position is way beyond Inserted at last")
            return self.deleteLastNode()
        }
        else {
            var temp:Node<T>? = self.head
            for _ in 1 ..< pos - 1 {
                temp = temp?.next != nil ? temp?.next! : nil
            }
            let deletedNode = temp?.next
            temp?.next = temp?.next?.next
            return deletedNode
        }
    }
    
    func deleteMiddle() -> Node<T>? {
        guard self.head != nil else {
            print("Cant find middle! No list Found")
            return nil
        }
        let count = countLinkedList()
        var temp = head
        for _ in 1 ..< (count + 1)/2 - 1 {
            temp = temp?.next
        }
        let deletedNode = temp?.next
        temp?.next = temp?.next?.next
        return deletedNode
    }
    
}

//find middle element
extension SinglyLinkedList {
    func findMiddle() -> Node<T>?{
        guard self.head != nil else {
            print("Cant find middle! No list Found")
            return nil
        }
        let count = countLinkedList()
        var temp = head
        for _ in 1 ..< (count + 1)/2 {
            temp = temp?.next
        }
        return temp
    }
    
    func findMiddle2() -> Node<T>? {
        guard self.head != nil else {
            print("Cant find middle! No list Found")
            return nil
        }
        var slow = head, fast = head
        while (slow != nil && fast != nil && fast?.next != nil) {
            slow = slow?.next
            fast = fast?.next?.next
        }
        return slow
    }
}

extension SinglyLinkedList {
//    func deleteZeroSumNodes() {
//        Node removeCancellableNodes(Node listHead)
//        {
//            if (listHead == null)
//            {
//                return null;
//            }
//            Stack<Node> stack = new Stack<Node>();
//            Node node = listHead;
//            while(node != null)
//            {
//                if (node.value < 0)
//                {
//                    int sum = node.value;
//                    while (!stack.isEmpty())
//                    {
//                        Node temp = stack.pop();
//                        sum += temp.value;
//                        if (sum == 0)
//                        {
//                            temp = stack.peek();
//                            if(temp==null)
//                            {
//                                listHead = node->next;
//                            }
//                            else
//                            {
//                                temp->next = node->next;
//                            }
//                            break;
//                        }
//                    }
//                }
//                else
//                {
//                    stack.push(node);
//                }
//                node = node.next;
//            }
//            return listHead;
//        }
//    }
}

//remove duplicates in sorted list
extension SinglyLinkedList {
    func removeDuplicate(){
        var start = head
        var temp = head
        while (start != nil) {
            temp = start?.next
            while(temp?.value == start?.value && temp != nil) {
                temp = temp?.next
            }
            start?.next = temp != nil ? temp! : nil
            start = start?.next
        }
    }
}

extension SinglyLinkedList {
    //revrese a linked list in iterative order
    func reverseLinkedList() {
        var prev:Node<T>? = nil
        var next:Node<T>? = nil
        
        var curr = head
        while (curr != nil) {
            next = curr?.next
            curr?.next = prev
            prev = curr
            curr = next
        }
        head = prev
    }
}



extension  SinglyLinkedList {
    func addOneToLinkedList() {
        //reverse a linked list
        reverseLinkedList()
        
        //traverse linked list
        var temp = head
        var carry:Int = 1
        
        let value = (temp?.value as! Int) + carry as! T
        
        if value > 10 {
            temp.value = value % 10
            carry = value / 10
        }
        
        
        
        //reverse linked lsit again
        reverseLinkedList()
    }
}


func callLinkedList() {
    let list = SinglyLinkedList<Int>()
    //insert
//    list.insertAtStart(7)
//    list.insertAtStart(6)
//    list.insertAtStart(3)
//    list.insertAtStart(1)
    list.insertAtEnd(1)
    list.insertAtEnd(2)
    list.insertAtEnd(3)
    list.insertAtEnd(4)
    list.insertAtEnd(5)
    list.insertAtEnd(6)
    list.insertAtEnd(7)
    list.insertAtEnd(8)
    list.insertAtEnd(9)
    list.insertAtEnd(10)
//    list.insertAtPosition(pos: 2, 2)
//    list.insertAtPosition(pos: 4, 4)
//    list.insertAtPosition(pos: 5, 5)
    
    //delete
//    let _ = list.deleteFirstNode()
//    let _ = list.deleteFirstNode()
//    let _ = list.deleteLastNode()
//    let _ = list.deleteLastNode()
//    let _ = list.deleteSpecificNode(value: 5)
//    let _ = list.deleteSpecificNode(value: 6)
//    let _ = list.deleteSpecificNode(value: 10)
//    let _ = list.deleteAtPositon(pos: 2)
//    let _ = list.deleteAtPositon(pos: 2)
    
//    let _ = list.deleteMiddle()
    list.printLinkedList()
//    print(list.countLinkedList())
//    if let mid = list.findMiddle2() {
//        print("mid value: \(mid.value)")
//    }
//    list.removeDuplicate()
//    list.printLinkedList()
    
    list.reverseLinkedList()
    list.printLinkedList()
}

callLinkedList()

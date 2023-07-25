import Foundation

open class Node {
    public var leftChild: Node?
    public var rightChild: Node?
    public let value: Int
    
    public init(value: Int){
        self.value = value
    }
}

open class LinkedListNode {
    public var next: LinkedListNode?
    public let value: Int
    
    public init(value: Int) {
        self.value = value
    }
}

extension LinkedListNode {
    func printList(){
        var nextNode: LinkedListNode? = self.next
        do {
            print(self.value, terminator: " ")
        }
        while (nextNode != nil) {
            print("->", nextNode!.value, terminator: " ")
            nextNode = nextNode?.next
        }
        print(terminator: "\n")
    }
}

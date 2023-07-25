/*: [Previous](@previous)
 # Binary Tree
 */

import Foundation


class BinaryTree: Node {
    
}


let tree = BinaryTree(value: 1)
let node2 = Node(value: 2)
let node3 = Node(value: 5)
let node4 = Node(value: 3)
let node5 = Node(value: 4)
let node6 = Node(value: 6)
node2.leftChild = node4
node2.rightChild = node5
node3.rightChild = node6
tree.leftChild = node2
tree.rightChild = node3


var initialNodeForLinkedList = LinkedListNode(value: tree.value)

/*We will use stack for backtracking here...
 No need to employ a stack explicitly, since functions are always evaluated using stack itself in recursion.
 */

func formLinkedList(tree: Node, linkedList: LinkedListNode) {
    if tree.leftChild != nil {
        linkedList.next = LinkedListNode(value: tree.leftChild!.value)
        return formLinkedList(tree: tree.leftChild!, linkedList: linkedList.next!)
    }else if tree.rightChild != nil {
        linkedList.next = LinkedListNode(value: tree.rightChild!.value)
        return formLinkedList(tree: tree.rightChild!, linkedList: linkedList.next!)
    }else {
        return
    }
}

formLinkedList(tree: tree, linkedList: initialNodeForLinkedList)

//: [Next](@next)


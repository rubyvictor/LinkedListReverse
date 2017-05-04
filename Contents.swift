//: Playground - noun: a place where people can play

import UIKit

// What is a linked list?
// 1 -> 2 -> 3 -> nil

// Define a data structure that supports this list

class Node {
    let value: Int
    var next: Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
}

let threeNode = Node(value: 3, next: nil)
let twoNode = Node(value: 2, next: threeNode)
let oneNode = Node(value: 1, next: twoNode)

func printList(head: Node?) {
    print("printing out list of nodes")
    var currentNode = head
    while currentNode != nil {
        print(currentNode?.value ?? -1)
        currentNode = currentNode?.next
    }
}

printList(head: oneNode)

// Implement method to reverse the list and print it out
// 1 -> 2 -> 3 -> nil

//Process of flipping arrows:
// nil<-1->2->3->nil
// nil<-1<-2->3->nil
// nil<-1<-2<-3
// then return 3 and reverse the list
// 3->2->1->nil

func reverseList(head: Node?) -> Node? {
    
    var currentNode = head
    var prev: Node?
    var next: Node?
    
    while currentNode != nil {
        next = currentNode?.next
        currentNode?.next = prev
        
        print("previous value: \(prev?.value ?? -1), current value: \(currentNode?.value ?? -1), next value: \(next?.value ?? -1)")
        
        prev = currentNode
        currentNode = next
        
        
    }
    return prev
}

let myReverseList = reverseList(head: oneNode)

printList(head: myReverseList) //needs to print out 3->2->1

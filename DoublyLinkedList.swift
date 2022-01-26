//
//  DoublyLinkedList.swift
//  InterviewStudy
//
//  Created by Palash Roy on 25/01/22.
//

import Foundation

class DoublyNode<T> {
    var prev: DoublyNode?
    var value: T
    var next: DoublyNode?
    init(_ val: T, _ pre: DoublyNode?, _ nex:DoublyNode?) {
       value = val
        prev = pre
        next = nex
    }
}

class DoublyLinklist<T>{
    var head: DoublyNode<T>?
    
    func addFront(val: T){
        let newNode = DoublyNode(val, nil, head)
        head = newNode
    }
    
    func addBack(val: T) {
        var node = head
        while(node?.next != nil) {
            node = node?.next
        }
        let newnode = DoublyNode(val, node, nil)
        node?.next = newnode
    }
    
    func printList() {
        var result = [T]()
        var node = head
        while node != nil {
            result.append(node!.value)
            node = node?.next
        }
        print(result)
    }
}

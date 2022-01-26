//
//  ReverseLinkedlist.swift
//  InterviewStudy
//
//  Created by Palash Roy on 24/01/22.
//

import Foundation
class MyNode {
    var value: Int
    var next: MyNode?
    init(val: Int, next: MyNode? = nil) {
        value = val
        self.next = next
    }
}

class LinkedList {
    var head: MyNode?
    var tail: MyNode?
    var isEmpty: Bool {
        return head == nil
    }
    func add(data: Int) {
        if isEmpty {
            let newNode = MyNode(val: data, next: head)
            head = newNode
            tail = head
        } else {
            let newNode = MyNode(val: data)
            tail?.next = newNode
            tail = newNode
        }
    }
    
    func printLinkedList() {
        if isEmpty { return }
        var result = [Int]()
        var node = head
        while(true) {
            if node != nil {
                result.append((node?.value)!)
                node = node?.next
            } else {
                break
            }
        }
        print(result)
    }
}
func reverseLinkedlist( head: inout MyNode?) {
    var prev: MyNode?
    var current = head
    var next: MyNode?
    
    while current != nil {
        next = current?.next
        current?.next = prev
        prev = current
        current = next
    }
    head = prev
}

var ll = LinkedList()
ll.add(data: 1)
ll.add(data: 2)
ll.add(data: 3)
ll.add(data: 4)
ll.add(data: 5)
ll.printLinkedList()
reverseLinkedlist(head: &ll.head)
ll.printLinkedList()


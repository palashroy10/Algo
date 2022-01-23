//
//  Linkedlist-merging-point.swift
//  InterviewStudy
//
//  Created by Palash Roy on 22/01/22.
//

import Foundation
/// Find the merging point of two linkedlist
/// [1,2,3,4,6,7] and [3,2,4,9,8] merges at 4

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

func checkMergePoint(headA: MyNode?, headB: MyNode?) -> Int? {
    var setA = Set<Int>()
    var nodeA = headA
    while nodeA != nil {
        setA.insert(nodeA?.value ?? 0)
        nodeA = (nodeA?.next)
    }
    var nodeB = headB
    while nodeB != nil {
        if setA.contains(nodeB!.value) {
            nodeB = nodeB?.next
        }
        else {
            return nodeB?.value
        }
    }
    return nil
}

// https://developer.apple.com/documentation/swift/set/1540013-contains
// Set has complexity O(1) for contains method

//var ll = LinkedList()
//ll.add(data: 2)
//ll.add(data: 3)
//ll.add(data: 4)
//ll.add(data: 5)
//ll.printLinkedList()
//var ll2 = LinkedList()
//ll2.add(data: 7)
//ll2.add(data: 8)
//ll2.add(data: 9)
//ll2.add(data: 4)
//ll2.add(data: 3)
//ll2.add(data: 1)
//
//print(checkMergePoint(headA: ll.head, headB: ll2.head))

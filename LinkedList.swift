//
//  LinkedList.swift
//  InterviewStudy
//
//  Created by Palash Roy on 22/01/22.
//

import Foundation

class Node<T> {
    var value: T
    var next: Node?
    init(val: T, next: Node? = nil) {
        value = val
        self.next = next
    }
}

class LinkList<T> {
    var head: Node<T>?
    
    var isEmpty: Bool {
        return head == nil
    }
    
    func addFront(data: T) {
        let newNode = Node(val: data, next: head)
        head = newNode
    }
    
    func getFirst() -> T? {
        if !isEmpty {
            return (head!.value)
        }
        return nil
    }
    
    func addBack(data: T) {
        if isEmpty {
            addFront(data: data)
        } else {
            let newNode = Node<T>(val: data)
            let lastNode = travarseToEnd()
            lastNode?.next = newNode
        }
    }
    
    func getLast() -> T? {
        let last = travarseToEnd()
        return last?.value
    }
    
    func deleteFirst() {
        head = head?.next
    }
    
    func deleteLast() {
        var node = head
        while(node?.next?.next != nil) {
            node = node?.next
        }
        node?.next = nil
    }
    
    func delete(at position: Int) {
        var node = head
        (1..<position-1).forEach { index in
            print(index)
            if node != nil {
                node = node?.next
            } else {
                return
            }
        }
        node?.next = node?.next?.next
    }
    
    func travarseToEnd() -> Node<T>? {
        if isEmpty { return head }
        var node = head
        while(node?.next != nil) {
            node = node?.next
        }
        return node
    }
    
    func printLinkedList() {
        if isEmpty { return }
        var result = [T]()
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

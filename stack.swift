//
//  main.swift
//  InterviewStudy
//
//  Created by Palash Roy on 25/03/21.
//

import Foundation
//Data Structure
//Stack
class  Stack {
    
    var stackArray = [Int]()
    
    func push(_ value: Int) {
        stackArray.insert(value, at: 0)
    }
    
    func pop() {
        stackArray.removeFirst()
    }
    
    func printStack() {
        print(stackArray)
    }
    
}

var stackArray = [Stack]()
let s1 = Stack()
s1.push(1)
s1.push(2)
s1.push(3)
s1.printStack()
s1.pop()
s1.printStack()




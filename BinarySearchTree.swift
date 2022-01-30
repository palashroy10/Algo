//
//  BinarySearchTree.swift
//  InterviewStudy
//
//  Created by Palash Roy on 29/01/22.
//

import Foundation

// Node for BST
 
class BSTNode {
    var left: BSTNode?
    var value: Int
    var right: BSTNode?
    init(_ val: Int){
        value = val
    }
    var min: Int? {
        if left == nil {
            return self.value
        } else {
            return left?.min
        }
    }
}

class BST {
    var root: BSTNode?
    
    func insertintoBST(value: Int){
        let newnode = BSTNode(value)
        if root == nil {
            root = newnode
        } else {
            var node = root
            while(node != nil){
                if value < node?.value ?? 0 {
                    if node?.left == nil {
                        node?.left = newnode
                        return
                    }
                    node = node?.left
                } else if value > node?.value ?? 0 {
                    if node?.right == nil {
                        node?.right = newnode
                        return
                    }
                    node = node?.right
                }
            }
        }
        
    }
    
    func searchBST(_ value: Int) -> Bool {
        var node = root
        if root == nil {
            return false
        }
        while(node != nil) {
            if node?.value == value {
                return true
            }
            else if value < node?.value ?? 0 {
                node = node?.left
            } else if value > node?.value ?? 0 {
                node = node?.right
            }
        }
        return false
    }
    
    func findMax() -> Int? {
        var node = root
        if node == nil {
            return nil
        }
        var prev = node
        while(node != nil){
            prev = node
            node = node?.right
        }
        return prev?.value
    }
    
    func findMin() -> Int? {
        var node = root
        if node == nil {
            return nil
        }
        var prev = node
        while(node != nil){
            prev = node
            node = node?.left
        }
        return prev?.value
    }
}

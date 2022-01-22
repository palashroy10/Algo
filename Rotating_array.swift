//
//  Rotating_array.swift
//  InterviewStudy
//
//  Created by Palash Roy on 22/01/22.
//

import Foundation

/// Rotating an array (Reverse rotation)
func solution(A: [Int], K: Int) -> [Int] {
    let count = A.count
    let anotherArr = A + A
    var res = [Int]()
    let startPoint = count - (K % count) //for reverse rotation
    for i in startPoint..<startPoint + count {
        res.append(anotherArr[i])
    }
    return res
}



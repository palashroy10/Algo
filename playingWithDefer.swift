//
//  playingWithDefer.swift
//  InterviewStudy
//
//  Created by Palash Roy on 22/01/22.
//

import Foundation
func checkDefer(){           //Output:
        print("first")      //first
    defer {                 //third
        print("second")     //fourth
    }                       //second
    if true {
        defer { print("fifth") }
        print("sixth")
    }
    print("third")
    print("fourth")
}

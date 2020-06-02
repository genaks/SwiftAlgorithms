//
//  FrogRiver.swift
//  Algorithms
//
//  Created by Akshay Jain on 01/06/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import Foundation

struct FrogRiver {
    
    public func solution(_ X : Int, _ A : inout [Int]) -> Int {
        // write your code in Swift 4.2.1 (Linux)
        if X > A.count {
            return -1
        }
        var secondDictionary : [Int : Bool] = [:]
        for i in 1..<X+1 {
            secondDictionary[i] = false
        }
        for i in 0..<A.count {
            secondDictionary[A[i]] = true
            var emptySlot = false
            var count = 1
            
            for key in secondDictionary.keys {
                if secondDictionary[key] == false {
                    emptySlot = true
                }
                if !emptySlot && count == X {
                    return i
                }
                count += 1
            }
        }
        return -1
    }

    
}

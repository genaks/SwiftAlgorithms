//
//  OddOneOut.swift
//  Algorithms
//
//  Created by Akshay Jain on 28/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import Foundation

struct OddOneOut {
    
    public func solution(_ A : inout [Int]) -> Int {
        if A.count == 0 || A.count % 2 == 0{
            return 0
        }
        if A.count == 1 {
            return A[0]
        }
        
        var numbersDict : [Int : Int] = [:]
        
        for i in 0..<A.count {
            if numbersDict[A[i]] == nil {
                numbersDict[A[i]] = 1
            }
            else {
                numbersDict[A[i]]! += 1
            }
        }
        
        for key in numbersDict.keys {
            if numbersDict[key]! % 2 == 1 {
                return key
            }
        }
        return 0
    }
}

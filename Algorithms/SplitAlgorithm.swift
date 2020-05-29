
//
//  SplitAlgorithm.swift
//  Algorithms
//
//  Created by Akshay Jain on 27/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import Foundation

struct SplitAlgorithm {
    public func solution(_ S : inout String) -> Int {

        if S.count < 3 {
            return 0
        }
        
        var components = S.components(separatedBy:"a")
        let aCount = components.count - 1
        if aCount < 3 && aCount > 0 {
            return 0
        }
        
        if aCount == 0 && S.count < 3 {
            return 0
        }
        
        if (aCount % 3) != 0 {
            return 0
        }
        
        if aCount == 0 && S.count >= 3 {
            components = S.components(separatedBy:"b")
            let bCount = components.count - 1
            let remainingCount = bCount - 3
            let n = remainingCount + 3 - 1
            let r = remainingCount
            return (factorial(n) / (factorial(r) *  factorial(n - r)))
        }
        
        return 1
    }
    
    func factorial(_ n: Int) -> Int {
        if n == 0 {
            return 1
        }
        var a: Int = 1
        for i in 1...n {
            a *= i
        }
        return a
    }
}

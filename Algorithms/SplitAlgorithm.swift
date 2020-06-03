
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
        
        var firstCount = 0
        var secondCount = 0
        var firstPass = true
        var countingB = false
        var count = 0
        for item in Array(S) {
            if item == "a" {
                if countingB {
                    if firstPass {
                        firstPass = false
                    }
                    countingB = false
                }
                count += 1
            }
            if countingB && item == "b" {
                if firstPass {
                    firstCount += 1
                }
                else {
                    secondCount += 1
                }
            }
            if count == aCount/3 {
                countingB = true
                count = 0
            }
        }
        if firstCount > 0 {
            firstCount += 1
        }
        
        if secondCount > 0 {
            secondCount += 1
        }
        
        return firstCount + secondCount
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

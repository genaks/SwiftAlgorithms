//
//  BinaryGap.swift
//  Algorithms
//
//  Created by Akshay Jain on 27/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import Foundation

struct BinaryGap {
    
    public func solution(_ N : Int) -> Int {
        // write your code in Swift 4.2.1 (Linux)
        
        if N == 0 {
            return 0
        }
        
        let binaryRepresentation = String(N, radix: 2)
        var maxGap = 0
        var startingIndex = 0
        let charArray = Array(binaryRepresentation)
        var searchingZeroes = false
        
        for i in 0..<charArray.count {
            if charArray[i] == "1" {
                if searchingZeroes {
                    let currentGap = i - startingIndex - 1
                    if currentGap > maxGap {
                        maxGap = currentGap
                    }
                    startingIndex = i
                }
                else {
                    searchingZeroes = true
                    startingIndex = i
                }
            }
        }
        
        return maxGap
        
    }
    
}
